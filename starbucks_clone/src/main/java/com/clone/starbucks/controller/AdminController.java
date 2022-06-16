package com.clone.starbucks.controller;

import java.text.ParseException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.service.AdminServiceImpl;

@Controller
public class AdminController {
	
	@Autowired AdminServiceImpl adminService;
	@Autowired HttpSession session;
	
	@ResponseBody
	@PostMapping(value="admin/eCouponProc")
	public String ecouponProc(E_couponDTO e_coupon, Model model, RedirectAttributes ra) throws ParseException {
		String msg = adminService.eCouponProc(e_coupon);
		if(msg.equals("완료")) {
			ra.addFlashAttribute("msg",msg);
			return "redirect:/index?formpath=home";
		}else {
			model.addAttribute("msg",msg);
			return "forward:/index?formpath=adminCouponMake";
		}
	}
}
