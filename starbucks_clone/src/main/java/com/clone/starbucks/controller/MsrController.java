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
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping(value = "msr/msreward/about")
	public String msreward_about() {
		return "msr/msreward/about";
	}

	@RequestMapping(value = "msr/msreward/level_benefit")
	public String msreward_level_benefit() {
		return "msr/msreward/level_benefit";
	}

	@RequestMapping(value = "msr/msreward/star")
	public String msreward_star() {
		return "msr/msreward/star";
	}

	@RequestMapping(value = "msr/scard/about")
	public String scard_about() {
		return "msr/scard/about";
	}

	@RequestMapping(value = "msr/scard/charge_information")
	public String scard_charge_information() {
		return "msr/scard/charge_information";
	}

	@RequestMapping(value = "msr/scard/lost_report")
	public String scard_lost_report() {
		return "msr/scard/lost_report";
	}

	@RequestMapping(value = "msr/scard/register_inquiry")
	public String scard_register_inquiry() {
		return "msr/scard/register_inquiry";
	}

	@RequestMapping(value = "msr/sceGift/egift_information")
	public String sceGift_egift_information() {
		return "msr/sceGift/egift_information";
	}

	@RequestMapping(value = "msr/sceGift/gift_step1")
	public String sceGift_gift_step1() {
		return "msr/sceGift/gift_step1";
	}

	@RequestMapping(value = "msr/sceGift/msr_useguide")
	public String sceGift_msr_useguide() {
		return "msr/sceGift/msr_useguide";
	}
	
}
