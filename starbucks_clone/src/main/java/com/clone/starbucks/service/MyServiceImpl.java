package com.clone.starbucks.service;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Service
public class MyServiceImpl implements IMyService {
	
	@Autowired IMyDAO myDAO;
	@Autowired HttpSession session;
	
//----------------------------------------E-gift Card 등록----------------------------------------------		
	@Override
	public String cardRegisterProc(UserInfoDTO userInfo, CardDTO cardDTO, HttpServletRequest request) {
		
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		System.out.println(id);
		
		//0620
		if(myDAO.countC_num(id)==0) {
			cardDTO.setC_master(1);
			System.out.println(cardDTO.getC_master());
			myDAO.masterUpdate(id);
		}
		
		
		String cardNum = request.getParameter("c_num1")+request.getParameter("c_num2")+request.getParameter("c_num3")+request.getParameter("c_num4");
		//cardDTO.setC_num(cardNum);
		CardDTO check = myDAO.c_numCheck(cardNum);
		
		
		//카드번호랑 핀번호 맞는지
		//카드번호 맞는지
		if(cardNum.equals(check.getC_num())==false) {
			return "등록실패";
		}
		
		cardDTO.setC_num(cardNum);
		
		//핀번호 맞는지
		if(cardDTO.getC_pin().equals(check.getC_pin())==false) {
			return "등록실패";
		}
		
		//아이디가 null인지
		if(check.getId()==null) {
			
			//id 널이면 등록...?
			//주카드아이디 검색
			
			cardDTO.setId(id);
			
			//카드명 업데이트
			String oldName = myDAO.nameFind(cardNum);
			if(cardDTO.getC_name()!="") {
				cardDTO.setC_name(cardDTO.getC_name());
			}else {
				cardDTO.setC_name(oldName);
			}
			
			//핀번호 입력한 값이랑 저장되어있는 DTO값일랑 같은지 확인.
			if(check.getC_pin().equals(cardDTO.getC_pin())) {
				cardDTO.setC_pin(check.getC_pin());
			}else {
				return "등록실패";
			}
			
			
			//System.out.println("strId : " + strId);
			int masterCheck = myDAO.cMaster1Bool(id);
			//System.out.println("1인가요? : "+masterCheck);
			
			if(masterCheck==1) {
				String cMaster1CardNum = myDAO.cMaster1Num(id);
				check = myDAO.c_numCheck(cMaster1CardNum);
				check.setC_master(0);
				myDAO.updateCard(check);
			}
					
			//4. DTO설정 업데이트
			myDAO.updateCard(cardDTO);
			
		}else {
			return "등록실패";
		}

		
		return "등록완료";
	}


	@Override
	public String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, HttpServletRequest request) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		//1. 영수증 쿠폰인지, mms 쿠폰인지, star 쿠폰인지 구별.. (check박스가 아니기에 실패)
		//2. 각각 선택지의 input 값 받아오기
		String receipt_num = request.getParameter("rptcoupon_num1")+request.getParameter("rptcoupon_num2")+request.getParameter("rptcoupon_num3")+request.getParameter("rptcoupon_num4");
		String mms_num = request.getParameter("coupon_num1")+request.getParameter("coupon_num2")+request.getParameter("coupon_num3");
		String star_num = request.getParameter("starcoupon_num1")+request.getParameter("starcoupon_num2")+request.getParameter("starcoupon_num3");
		
		
		//3. pon_number로 eCouponDTO에서 검색해서 pon_no를 불러온다 select
		
		if(receipt_num!="" && mms_num=="" && star_num=="") {
			System.out.println("rc_num : "+receipt_num);
			E_couponDTO check = myDAO.pon_numCheck(receipt_num);
			if(receipt_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(receipt_num);
			if(check.getId()==null) {
				//아이디 저장
				eCouponDTO.setId(id);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
			}
		}else if(receipt_num=="" && mms_num!="" && star_num=="") {
			System.out.println("mc_num : "+mms_num);
			E_couponDTO check = myDAO.pon_numCheck(mms_num);
			if(mms_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(mms_num);
			if(check.getId()==null) {
				//아이디 저장
				eCouponDTO.setId(id);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
			}
		}else if(receipt_num =="" && mms_num=="" &&star_num!="") {
			System.out.println("sc_num : "+star_num);
			E_couponDTO check = myDAO.pon_numCheck(star_num);
			if(star_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(star_num);
			if(check.getId()==null) {
				//아이디 저장
				eCouponDTO.setId(id);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
			}
		}
		
		return "등록완료";
	}
	
	@Override //카드 리스트 세션저장용
	public void cardList(CardDTO cardDTO, Model model) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		ArrayList<CardDTO> list = myDAO.cardList(id);
		model.addAttribute("list",list);
	}
	
	@Override
	public void mycardProc(CardDTO cardDTO, Model model, HttpServletRequest request) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		session.setAttribute("c_num", request.getParameter("cardNum"));
		CardDTO card =  myDAO.c_numCheck(request.getParameter("cardNum"));
		model.addAttribute("c_name",card.getC_name());
		int c_master = myDAO.masterBool(request.getParameter("cardNum"));
		model.addAttribute("c_master", c_master);
	}
	
	


	@Override
	public String editCardProc(CardDTO cardDTO, HttpServletRequest request, Model model) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		
		System.out.println("수정할 받아온 이름 값 : "+cardDTO.getC_name());
		
		String cardNum = (String) session.getAttribute("c_num");
		System.out.println("받아온 카드 넘버 : "+session.getAttribute("c_num"));
		cardDTO.setC_num(cardNum);
		
		String cardName = myDAO.nameFind(cardNum);
		System.out.println("카드 넘버의 카드이름 : "+cardName);
		
		int cardMaster = cardDTO.getC_master();
		int c_master = myDAO.masterBool(cardNum);
		session.setAttribute("c_master", c_master);
		System.out.println("카드 마스터 설정되어있는지(1?0?) : "+cardMaster);
		
		CardDTO check = myDAO.c_numCheck(cardNum);
		
		int masterCheck = myDAO.cMaster1Bool(id);
		//System.out.println("1인가요? : "+masterCheck);
		
		if(masterCheck==1) {
			String cMaster1CardNum = myDAO.cMaster1Num(id);
			check = myDAO.c_numCheck(cMaster1CardNum);
			check.setC_master(0);
			myDAO.updateCard(check);
		}
			
		myDAO.N_M_update(cardDTO);
		System.out.println("수정완료 됐나요? : "+myDAO.N_M_update(cardDTO));
		return "완료";
	}



	
//----------------------------------------E-gift Card 등록----------------------------------------------
	
	//----------my/index
		
		// 카드 여부 확인으로 index 열기
		@Override
		public boolean isExistCard(UserInfoDTO userInfo, CardDTO cardDTO) {

			UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
			
			int cardCount = myDAO.userCard(user.getId());


			if(cardCount == 0 ) {
				return false;
			}
			
			return true;
		}
	
		
		@Override
		public AllDTO userAllInfo(String id) {
			
			AllDTO all = myDAO.userAllInfo(id);

			return all;
		}


		public boolean setChargeData(HashMap<String, String> data) {
			String c_num = data.get("c_num");
			String chargePrice = data.get("price");
			CardDTO check = myDAO.c_numCheck(c_num);
			int newCost =  check.getRemaincost()+Integer.parseInt(chargePrice);
			check.setRemaincost(newCost);
			if(myDAO.remainUpdate(check)==1) {
				System.out.println("성공~");
				return true;
			}else {
				System.out.println("실패ㅠㅠ");
				return false;
			}
			
		}

		@Override
		public void couponCount(E_couponDTO eCouponDTO, Model model) {
			UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		    String id = user.getId();
		    
		    int count = myDAO.couponCount(id);
		    System.out.println("쿠폰 갯수 : "+count);
		    model.addAttribute("couponCount",count);
			
		}


	@Override //커스텀메뉴 리스트 - 지혜 0628
	public ArrayList<CustomDTO> setCusTable(int myCustomPage, Model model) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	    String id = user.getId();
		
	    //지혜 0630
	    int pageBlock = 5; //한 화면에 보여줄 데이터 수
		int totalData = myDAO.cusCount(id);
		int end = myCustomPage * pageBlock; // 데이터의 끝 번호
		int begin = end + 1 - pageBlock; // 데이터의 시작 번호
		String url = "/starbucks/my/my_menu?myCustomPage=";
		model.addAttribute("page", PageService.getNavi(myCustomPage, pageBlock, totalData, url));
		model.addAttribute("no", (totalData - begin + 1));
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("begin", begin);
		paramMap.put("end", end);
		paramMap.put("id", id);
		ArrayList<CustomDTO> result = myDAO.customList(paramMap);
		
		return result;
	}
	
	public ArrayList<String> setCusDate(ArrayList<CustomDTO> list){
		ArrayList<String> dateList = new ArrayList<String>();
		if(list == null) return null;
		for(CustomDTO dto : list) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
			Date date = dto.getCus_date();
			String fomatDate = sdf.format(date);
			dateList.add(fomatDate);
		}
		return dateList;
	}
	
	@Override //커스텀메뉴 삭제 - 지혜 0629
	public String deleteCustom(ArrayList<Integer> cusNoArr) {
		//배열에서 cus_no하나씩 꺼내서 delete작업
		//성공결과 실패결과 String으로 담아서 전달하기.
		String msg = "SUCCESS";
		for(Integer aa : cusNoArr) {
			int result = myDAO.deleteCustom(aa.intValue());
			if(result < 1) msg = "FAIL";
		}
		return msg;
	}
	
}
