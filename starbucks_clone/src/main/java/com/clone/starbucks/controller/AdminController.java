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

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.service.AdminServiceImpl;

@Controller
public class AdminController {

	@Autowired AdminServiceImpl adminService;
	@Autowired HttpSession session;

	@PostMapping(value="admin/eCouponProc")
	public String ecouponProc(E_couponDTO e_coupon, Model model, HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
		String msg = adminService.eCouponProc(e_coupon, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("완료")) {
			out.println("<script>alert('쿠폰 발급이 완료되었습니다.'); location.href='adminCouponMake';</script>");
			out.flush();
			out.close();
			return "admin/adminCouponMake";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 발급이 실패하였습니다.'); location.href='adminCouponMake';</script>");
			out.flush();
			out.close();
			return "admin/adminCouponMake";
		}
	}

	
		//admin
	   @RequestMapping(value="admin/adminCouponMake")
	   public String adminCouponMake() {
	      return "admin/adminCouponMake";
	   }
	
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
