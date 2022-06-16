package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.service.MsrServiceImpl;

@Controller
public class MsrController {

	@Autowired MsrServiceImpl msrService;
	@Autowired HttpSession session;
	//msr
	
	
	@PostMapping(value="msr/sceGift/eGiftCardProc")
	public String eGiftCardProc(CardDTO cardDTO, Model model, HttpServletRequest request) throws ParseException, IOException {
		
		String msg = msrService.eGiftCardProc(cardDTO, request);
		
		if(msg.equals("완료")) {
			model.addAttribute("msg",msg);
			return "redirect:/index?formpath=home";
		}else {
			model.addAttribute("msg",msg);
			return "msr/sceGift/gift_step1";
		}
		
	}
	
}
