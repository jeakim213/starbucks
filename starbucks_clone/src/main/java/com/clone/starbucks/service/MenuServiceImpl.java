package com.clone.starbucks.service;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.clone.starbucks.DAO.IMenuDAO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class MenuServiceImpl implements IMenuService{
	@Autowired HttpSession session;
	@Autowired IMenuDAO dao;
	
	//0613-지혜
		//장바구니 구현. 구조는 map(String, map(String,Object)) 푸드, 상품은 map으로, 음료는 배열로
		//상품 삭제 0617 - 가격이없음
	@Override
	public boolean setOrderList(HashMap<String, String> data) { //이중구조로 만들기
		HashMap<String, Object> cart = (HashMap<String, Object>)session.getAttribute("list");
		if(cart == null) cart = new HashMap<String, Object>();
		if(data.get("categoryType").equals("01")) {
			ArrayList<ProductDTO> Drink = (ArrayList<ProductDTO>)cart.get("Drink");
			if(Drink == null) Drink = new ArrayList<ProductDTO>();
			ProductDTO dto = new ProductDTO();
			dto.setP_category1(data.get("categoryType"));
			dto.setP_name(data.get("p_name"));
			dto.setP_img(data.get("p_img"));
			int price = getPrice(data.get("p_name"));
			dto.setP_price(price);
			String op = makeOption(data, dto);
			dto.setP_op(op);
			Drink.add(dto);
			cart.put("Drink", Drink);
		}else if(data.get("categoryType").equals("02")) {
			HashMap<String, ProductDTO> Food = (HashMap<String, ProductDTO>)cart.get("Food");
			if(Food == null) Food = new HashMap<String, ProductDTO>();
			
			if(Food.get(data.get("p_name")) == null) {//푸드가 있으면 안받음
				ProductDTO dto = new ProductDTO();
				dto.setP_category1(data.get("categoryType"));
				dto.setP_name(data.get("p_name"));
				dto.setP_img(data.get("p_img"));
				int price = getPrice(data.get("p_name"));
				dto.setP_price(price);
				Food.put(data.get("p_name"), dto);
				cart.put("Food", Food);
			}
		}
		session.setAttribute("list", cart);
		return true;
	}
	
	
	@Override
	public int getPrice(String p_name) {
		if(p_name != null) return dao.selectPrice(p_name);
		return 0;
	}
	
	public void setPrice(ProductDTO dto, int addPrice) {
		dto.setP_price(dto.getP_price() + addPrice);
	}
	
	//옵션생성 - 지혜
	private String makeOption(HashMap<String, String> data, ProductDTO dto) {
		//컵사이즈 체크
		//옵션별 가격체크. 컵사이즈가 올라갈때마다 500원 추가. 기본아닌것 600원추가 고정, 디카페인 300원추가
		//삿추가는 개수만큼 600추가
		String result = "";
		
		if(data.get("delegateSku").equals("10")) result += "숏";
		else if(data.get("delegateSku").equals("20")) result += "톨";
		else if(data.get("delegateSku").equals("30")) {
			result += "그란데";
			setPrice(dto, 500);
		}
		else if(data.get("delegateSku").equals("40")) {
			result += "벤티";
			setPrice(dto, 1000);
		}
		result += "|";
		
		if(data.get("cupType").equals("1")) result += "일회용";
		else if(data.get("cupType").equals("0")) result += "머그";
		else if(data.get("cupType").equals("2")) result += "개인";
		
		if(data.get("customFlag").equals("Y")) {//drink_view에서 커스텀리스트 값 체크해야함. 언디파인나옴
			result += "|" + data.get("customList");
			String opArr[] = data.get("customList").split("\\|");
			for(int i=0; i < opArr.length ; i++) {
				if(opArr[i].contains("에스프레소 샷")){//기본옵션인지 확인
					if(i > opArr.length) {
						if(!opArr[i+1].contains("에스프레소 샷")) {
							int shot = getPrice("에스프레소 샷") * opArr[i].charAt(opArr[i].length()-1);
							setPrice(dto, shot);
						}
					}else {
						int shot = getPrice("에스프레소 샷") * (opArr[i].charAt(opArr[i].length()-1)-48);
						setPrice(dto, shot);
					}
				}else if(opArr[i].contains("디카페인")){
					setPrice(dto, getPrice("디카페인"));
				}else if(opArr[i].contains("시럽")) {
					if(i > opArr.length) {
						if(!opArr[i+1].contains("시럽")) setPrice(dto, getPrice("시럽"));
					}else setPrice(dto, getPrice("시럽"));
				}else if(opArr[i].contains("휘핑")) {
					if(i > opArr.length) {
						if(!opArr[i+1].contains("휘핑")) setPrice(dto, getPrice("휘핑"));
					}else setPrice(dto, getPrice("휘핑"));
				}else if(opArr[i].contains("드리즐")) {
					if(i > opArr.length) {
						if(!opArr[i+1].contains("드리즐")) setPrice(dto, getPrice("드리즐"));
					}else setPrice(dto, getPrice("드리즐"));
				}else if(opArr[i].contains("자바칩")) {
					if(i > opArr.length) {
						if(!opArr[i+1].contains("자바칩")) setPrice(dto, getPrice("자바칩"));
					}else setPrice(dto, getPrice("자바칩"));
				}
			}
		}
		
		return result;
	}
	
	@Override //0617-지혜
	public boolean setOrderCount(HashMap<String, String> data) {
		//결제버튼 누르면 data값 가져와서 세션에 저장.(수량저장하는거임. 카카오페이 결제 완료시 sale값에 수량넣어주기)
		session.setAttribute("saleCount", data);
		HashMap<String, HashMap<String, ProductDTO>> cart = (HashMap<String, HashMap<String, ProductDTO>>)session.getAttribute("list");
		HashMap<String, ProductDTO> food = cart.get("Food");
		if(food != null) {
			Collection<ProductDTO> foodDtos = food.values();
			for(ProductDTO dto : foodDtos) {
				System.out.println(dto.getP_name());
				dto.setP_price(dto.getP_price()*Integer.parseInt(data.get(dto.getP_name())));
			}
			cart.put("Food", food);
			session.setAttribute("list", cart);
		}
		return true;
	}
	
	@Override //0617-지혜
	public void resetOrderList() {
		//결제취소 or 결제실패시 cart의 푸드 가격 재생성 & count세션 날리기
		if(session.getAttribute("saleCount") != null) {
			HashMap<String, HashMap<String, ProductDTO>> cart = (HashMap<String, HashMap<String, ProductDTO>>)session.getAttribute("list");
			if(cart != null) {
				HashMap<String, ProductDTO> food = cart.get("Food");
				if(food != null) {
					Collection<ProductDTO> foodDtos = food.values();
					for(ProductDTO dto : foodDtos) {
						dto.setP_price(getPrice(dto.getP_name()));//이름값으로 푸드 가격 리셋
					}
					cart.put("Food", food);
					session.setAttribute("list", cart);
				}
			}
			session.removeAttribute("saleCount");
		}
	}
	
	
	
	@Override //DB생성 - 지혜
	public void insertMenu(String menuName) throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("upload/json/menu/custom/makefile/" + menuName + ".json");
		FileReader reader = new FileReader(resource.getFile());
		
		Gson gson = new Gson();
		JsonArray arr = gson.fromJson(reader, JsonArray.class);
		for(int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject)arr.get(i);
	  		ProductDTO dto = new ProductDTO();
			dto.setP_category1(tmp.get("p_category1").getAsString());
			dto.setP_category2(tmp.get("p_category2").getAsString());
			dto.setP_name(tmp.get("p_name").getAsString());
			dto.setP_price(tmp.get("p_price").getAsInt());
			dao.insertProduct(dto);
		}
	}


	@Override
	public void couponUse(E_couponDTO e_couponDTO, Model model) {
		session.setAttribute("id", "쭈고");
		UserInfoDTO userInfo = new UserInfoDTO();
		userInfo.setId("쭈고");
		session.setAttribute("userInfo", userInfo);
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		ArrayList<E_couponDTO> list =  dao.couponList(id);
		model.addAttribute("list",list);
	}
	
}