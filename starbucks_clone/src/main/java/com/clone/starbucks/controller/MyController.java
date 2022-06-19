package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MyServiceImpl;

@Controller
public class MyController {
	
	@Autowired MyServiceImpl myService;
	@Autowired HttpSession session;
	
	//my
	@PostMapping(value="my/cardRegisterProc")
	public String cardRegisterProc(CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response)throws IOException {
		String msg = myService.cardRegisterProc(cardDTO, request);
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
	
	@PostMapping(value="my/couponRegisterProc")
	public String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, Model model, HttpServletRequest request) throws IOException {
		String msg = myService.couponRegisterProc(userInfoDTO, eCouponDTO, request);
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			return "my/ecoupon";
		}else {
			model.addAttribute("msg",msg);
			return "my/ecoupon";
		}
	}
	
	@RequestMapping(value = "my/ecoupon")
	public String ecoupon() {
		return "my/ecoupon";
	}
	
	
}
