package com.clone.starbucks.controller;

import java.text.ParseException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	//admin
	   @RequestMapping(value="admin/memberListForm")
	   public String memberListForm() {
	      return "admin/memberListForm";
	   }
	   
	   @RequestMapping(value="admin/userInfoForm")
	   public String userInfoForm() {
	      return "admin/userInfoForm";
	   }
	   
	   @RequestMapping(value="admin/modifyCheckForm")
	   public String modifyCheckForm() {
	      return "admin/modifyCheckForm";
	   }
	   
	   @RequestMapping(value="admin/memberModifyForm")
	   public String memberModifyForm() {
	      return "admin/memberModifyForm";
	   }
	   
	   @RequestMapping(value="admin/deleteCheckForm")
	   public String deleteCheckForm() {
	      return "admin/deleteCheckForm";
	   }
	   
	   //0601 다정 커피
	   @RequestMapping(value="admin/saleChart-1")
	   public String saleChart1() {
	      return "admin/saleChart-1";
	   }
	   
	   //0602 다정 푸드
	   @RequestMapping(value="admin/saleChart-2")
	   public String saleChart2() {
	      return "admin/saleChart-2";
	   }
	   
	   //프로덕트
	   @RequestMapping(value="admin/saleChart-3")
	   public String saleChart3() {
	      return "admin/saleChart-3";
	   }
	
}
