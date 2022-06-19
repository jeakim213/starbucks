package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	@RequestMapping(value = "my/index")
	public String my_index(UserInfoDTO userInfo, CardDTO cardDTO, Model model, HttpSession session) {

		String id = (String) session.getAttribute(userInfo.getId());
		
		boolean b = myService.isExistCard(userInfo, cardDTO);
		
		// 카드 없는 회원
		if(b==false) {
//			UserInfoDTO userinfo = new UserInfoDTO();
//				userinfo.setId("id");
//				userinfo.setPw("pw");
//				userinfo.setConfirmPw("cpw");
//				userinfo.setStar(0);
//				userinfo.setGrade("wc");
//				userinfo.setNickname("닉네임");
//				userinfo.setCupreward('s');
//				
//				session.setAttribute("session", userinfo);
				
				int couponCount = myDAO.userCoupon("admin");
				model.addAttribute("couponCount", couponCount);
				
				return "my/index";
		}		
		
		
		// 카드 있는 회원 (지금 넣은 임의값("admin") 바꿔주기)
		AllDTO user = myService.userAllInfo("admin");
		
		
		// 등급명 변경
		if(user.getGrade().equals("WC")) {
			user.setGrade("Welcome Level");
		}else if(user.getGrade().equals("GR")) {
			user.setGrade("Green Level");
		}else {
			user.setGrade("Gold Level");
		}
		
		
		// 카드 갯수
		
		int cardCount = myDAO.userCard("admin");
		
		// 쿠폰 갯수

		int couponCount = myDAO.userCoupon("admin");
		System.out.println(couponCount);
		
		//views로 넘겨주는 값
		model.addAttribute("nickname", user.getNickname());
		model.addAttribute("grade", user.getGrade());
		model.addAttribute("star", user.getStar());
		model.addAttribute("c_name", user.getC_name());
		model.addAttribute("c_num", user.getC_num());
		model.addAttribute("remaincost", user.getRemaincost());
		model.addAttribute("cardCount", cardCount);
		model.addAttribute("couponCount", couponCount);
		
		return "my/index2";

	}

	// ===========
	@RequestMapping(value = "my/mycard_charge")
	public String mycard_charge() {
		return "my/mycard_charge";
	}

	@RequestMapping(value = "my/mycard_charge_1")
	public String mycard_charge_1() {
		return "my/mycard_charge-1";
	}

	@RequestMapping(value = "my/mycard_charge_2")
	public String mycard_charge_2() {
		return "my/mycard_charge-2";
	}

	
	@RequestMapping(value = "my/mycard_index")
	public String mycard_index() {
		return "my/mycard_index";
	}
	
	
	@RequestMapping(value = "my/cardlistProc")
	public String cardList(CardDTO cardDTO,Model model){
		myService.cardList(cardDTO, model);
		return "my/mycard_index";
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
