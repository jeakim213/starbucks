package com.clone.starbucks.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.service.MyServiceImpl;

@Controller
public class MyController {
	
	@Autowired MyServiceImpl myService;
	@Autowired HttpSession session;
	
	//my
	@PostMapping(value="my/cardRegisterProc")
	public String cardRegisterProc(CardDTO cardDTO, Model model, HttpServletRequest request) {
		String msg = myService.cardRegisterProc(cardDTO, request);
		
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			return "redirect:/index?formpath=home";
		}else {
			model.addAttribute("msg",msg);
			return "my/mycard_info_input";
		}
		
	}
	
	
	
	
}
