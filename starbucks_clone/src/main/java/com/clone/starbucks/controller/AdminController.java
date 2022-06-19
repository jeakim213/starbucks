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
import org.springframework.web.bind.annotation.RequestParam;

import com.clone.starbucks.DTO.AllDTO2;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.AdminServiceImpl;

@Controller
public class AdminController {

//	@Autowired private IAdminService adminService;
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
	   
	   
	   
	   
	   
	//리스트
	@RequestMapping(value = "admin/memberListForm")
	public String memberListForm(Model model, 
			@RequestParam(value = "currentPage", required=false, defaultValue = "1") int currentPage,
			String select, String search) {
		adminService.memberListForm(currentPage, select, search);
		return "admin/memberListForm";
	}
	
	//정보
	@RequestMapping(value = "admin/userInfoForm")
	public String userInfoForm(String id, HttpSession session, Model model) {
		String sessionId = (String)session.getAttribute("id");
//			if(id == "" || id == null || sessionId == "" || sessionId == null) {
//					return "redirect:memberListForm";
//				}
//			if(sessionId.equals(id) || "admin".equals(sessionId)) {
			model.addAttribute("all", adminService.userInfoForm(id));
			return "admin/userInfoForm";
//			}
//			return "redirect:memberListForm";
	}
	
	//정보, 로그인 필요
//	@Value("${ADMIN:admin}") private String adminAccount;
//	@RequestMapping(value = "admin/userInfoForm") // memberListForm.jsp에서 사용자의 아이디를 클릭 시 요청을 받음.
//	public String userInfoForm(String id, HttpSession session, Model model) {
//		String sessionId = (String) session.getAttribute("id");
//		if (id == "" || id == null || sessionId == "" || sessionId == null) {
//			return "redirect:admin/memberListForm";
//		}
//		if (sessionId.equals(id) || adminAccount.equals(sessionId)) {
//			model.addAttribute("all", adminService.userInfoForm(id));
//			return "admin/userInfoForm";
//		}
//		return "redirect:admin/memberListForm";
//	}
	
	//수정
	@RequestMapping(value = "admin/memberModifyForm")
	public String memberModifyForm(AllDTO2 all, Model model) {
		String msg = adminService.memberModifyForm(all);
		if(msg.equals("회원 수정 완료")) {
			System.out.println(all.getId());
			return "admin/memberListForm";
		}
		System.out.println(all.getName());
		model.addAttribute("all", all);
		return "admin/memberModifyForm";
	}
	
	//비밀번호 체크 후 삭제
//	@RequestMapping(value = "deleteAndCheckProc")
//	public String deleteAndCheckProc(AllDTO2 all, UserInfoDTO check, HttpSession session) {
//		boolean b = adminService.deleteAndCheckProc(check);
//		if(b == false) {
//			System.out.println(all.getId());
//			return "forward:/memberDelete?Id="+session.getAttribute("Id");
//		}
//		System.out.println(all.getName());
//		return "redirect:/";
//	}
//	@RequestMapping(value = "memberDelete")
//	public String memberDelete() {
//		return "admin/memberListForm";
//	}	
	
	//삭제
	@RequestMapping(value = "deleteProc")
	public String deleteProc(AllDTO2 all, UserInfoDTO user, HttpSession session) {
		String msg = adminService.deleteProc(user);
		if(msg.equals("회원 삭제 완료")) {
			System.out.println(all.getId());
			return "forward:/memberDelete?Id="+session.getAttribute("Id");
		}
		System.out.println(all.getName());
		return "redirect:/";
	}
	@RequestMapping(value = "memberDelete")
	public String memberDelete() {
		return "admin/memberListForm";
	}
	
}
