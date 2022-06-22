package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MyServiceImpl;

@Controller
public class MyController {

	@Autowired MyServiceImpl myService;
	@Autowired private IMyDAO myDAO;
	@Autowired HttpSession session;

	//my
	@PostMapping(value="my/cardRegisterProc")
	public String cardRegisterProc(UserInfoDTO userInfoDTO,CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response)throws IOException {
		String msg = myService.cardRegisterProc(userInfoDTO, cardDTO, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 등록이 완료되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/mycard_info_input";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 발급이 실패하였습니다'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/mycard_info_input";
		}
		}
		
	@RequestMapping(value = "my/ecoupon_popup")
	public String ecoupon_popup() {
		return "my/ecoupon_popup";
	}
	
	@PostMapping(value="my/couponRegisterProc")
	public String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String msg = myService.couponRegisterProc(userInfoDTO, eCouponDTO, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 등록이 완료되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/ecoupon";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 등록이 실패되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/ecoupon";
		}
	}
	
	@RequestMapping(value = "my/ecoupon")
	public String ecoupon() {
		return "my/ecoupon";
	}
	
	@RequestMapping(value = "my/egiftCard_shopping_bag")
	public String egiftCard_shopping_bag() {
		return "my/egiftCard_shopping_bag";
	}

	@RequestMapping(value = "my/egiftCard")
	public String egiftCard() {
		return "my/egiftCard";
	}

	@RequestMapping(value = "my/eReceiptList")
	public String eReceiptList() {
		return "my/eReceiptList";
	}
	
	
	// 예은 - 마이스타벅스
	   @RequestMapping(value = "my/index")
	   public String my_index(UserInfoDTO userInfo, CardDTO cardDTO, Model model){
	      
	   
	      UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	      
	      
	      boolean b = myService.isExistCard(userInfo, cardDTO);

	      // 카드 없는 회원
	      if(b==false) {
	                  
	            int couponCount = myDAO.userCoupon(user.getId());
	          
	            model.addAttribute("couponCount", couponCount);
	            
	            return "my/index";
	      }      
	      
	      
	      // 카드 있는 회원)
	      AllDTO all = myService.userAllInfo(user.getId());
	      
	      // 등급명 변경
	      if(all.getGrade().equals("WC")) {
	         all.setGrade("Welcome Level");
	      }else if(all.getGrade().equals("GR")) {
	         all.setGrade("Green Level");
	      }else {
	         all.setGrade("Gold Level");
	      }
	      
	      
	      // 카드 갯수
	      
	      int cardCount = myDAO.userCard(user.getId());
	      
	      // 쿠폰 갯수

	      int couponCount = myDAO.userCoupon(user.getId());
	      
	      
	      //views로 넘겨주는 값
	   
	      model.addAttribute("nickname", all.getNickname());
	      model.addAttribute("grade", all.getGrade());
	      model.addAttribute("star", all.getStar());
	      model.addAttribute("c_name", all.getC_name());
	      model.addAttribute("c_num", all.getC_num());
	      model.addAttribute("remaincost", all.getRemaincost());
	      model.addAttribute("cardCount", cardCount);
	      model.addAttribute("couponCount", couponCount);
	      
	      return "my/index2";

	   }
	   
	   
	@RequestMapping(value = "my/mycard_charge")
	public String mycard_charge() {
		return "my/mycard_charge";
	}

	@RequestMapping(value = "my/mycard_charge_1")
	public String mycard_charge_1(CardDTO cardDTO,Model model, HttpServletRequest request) {
		myService.cardList(cardDTO, model);
		return "my/mycard_charge";
	}
	
	@ResponseBody 
	@RequestMapping(value="my/setChargeAjax")
	public int setChargeAjax(@RequestBody HashMap<String,String> data) {
		if(data != null) {
			if(myService.setChargeData(data)) {
			return 1;
			}
		}
		return 0;
	}

	
	@RequestMapping(value = "my/mycard_index")
	public String mycard_index() {
		return "my/mycard_index";
	}
	
	
	@RequestMapping(value = "my/cardList")
	public String cardList(CardDTO cardDTO,Model model){
		myService.cardList(cardDTO, model);
		return "my/mycard_index";
	}
	
	@RequestMapping(value="my/mycardProc")
	public String mycardProc(CardDTO cardDTO, Model model, HttpServletRequest request) {
		myService.mycardProc(cardDTO, model, request);
		return "my/mycard";
	}
	
	@RequestMapping(value="my/editCardProc")
	public String editCardProc(CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String msg = myService.editCardProc(cardDTO, request, model);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 정보 수정이 완료되었습니다.'); location.href='cardList';</script>");
			out.flush();
			out.close();
			return "my/cardList";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 정보 수정이 실패하였습니다.'); window.location.href='my/mycard';</script>");
			out.flush();
			out.close();
			return "my/mycard";
		}
	}

	
	@RequestMapping(value = "my/mycard_info_input")
	public String mycard_info_input() {
		return "my/mycard_info_input";
	}

	@RequestMapping(value = "my/mycard_lost")
	public String mycard_lost() {
		return "my/mycard_lost";
	}

	@RequestMapping(value = "my/mycard")
	public String mycard() {
		return "my/mycard";
	}

	@RequestMapping(value = "my/reward_star_history")
	public String reward_star_history() {
		return "my/reward_star_history";
	}

	@RequestMapping(value = "my/reward")
	public String reward() {
		return "my/reward";
	}

	@GetMapping("userInfo")
	public String userInfoLoad(UserInfoDTO userinfo, RegisterDTO member, HttpServletRequest req, Model model) {
		String name = member.getName();
		model.addAttribute("userName", name);
		System.out.println(name);
		return "my/index";
	}

	
	
}
