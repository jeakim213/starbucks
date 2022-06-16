package com.clone.starbucks.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clone.starbucks.service.IMemberService;
import com.clone.starbucks.controller.memberController;
import com.clone.starbucks.DTO.MemberDTO;

@Controller
public class memberController {
	@Autowired private IMemberService memberService;
	@Autowired private HttpSession session;
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		String msg = memberService.isExistId(id);
		return msg;
	}
	

	//login

	@PostMapping(value = "loginProc")
	public String loginProc(MemberDTO member, Model model) {
		String msg = memberService.loginProc(member);
		if(msg.equals("로그인 성공")) {
			return "redirect:/index?formpath=index";
		}
		model.addAttribute("msg", msg);
		return "forward:/index?formpath=login";
	}
	
	//카카오 인가코드 확인
	@RequestMapping("login/login/kakaoLogin")
	public String kakaoLogin(String code) {
		System.out.println("카카오 인가 코드 : " + code);
		String accessToken = memberService.getAccessToken(code);
		HashMap<String, Object> userInfo = memberService.getUserInfo(accessToken);
		
		System.out.println("카카오 로그인 사용자의 닉네임 : " + userInfo.get("nickname"));
		session.setAttribute("id", userInfo.get("nickname"));
		session.setAttribute("accessToken", accessToken);
		return "redirect:/index?formpath=index";
	}

	@GetMapping(value = "login/login")
	public void logout(Model model) {
		String accessToken = (String)session.getAttribute("accessToken");
		memberService.logout(accessToken);
		session.invalidate();
		model.addAttribute("msg", "로그 아웃");
	}
	
	
	//ajax
}

