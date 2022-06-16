package com.clone.starbucks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MemberServiceImpl;
import com.google.gson.JsonObject;

@Controller
public class MemberController {

	// login

	// ajax

	@Autowired
	MemberServiceImpl memberService;

	@PostMapping(value = "mem/isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		// @RequestBody : 클라이언트가 보낸 데이터 / (required = true / false) 기본필수값
		String str = id;
		String[] strAry = str.split("\\&|\\=");
		JsonObject obj = new JsonObject();

		for (String a : strAry)

			id = strAry[1];
		// System.out.println(id);

		String msg = memberService.isExistId(id);
		if (msg.equals("사용 가능한 아이디입니다.")) {
			obj.addProperty("result_code", "SUCCESS");
			obj.addProperty("alert_msg", msg);
		} else if (msg.equals("중복 아이디 입니다.")) {
			obj.addProperty("result_code", "ERROR");
			obj.addProperty("alert_msg", msg);
		}
		return obj.toString();
	}
	
	
	@RequestMapping(value = "mem/memberProc")
	public String memberProc(RegisterDTO member, Model model, RedirectAttributes ra, HttpServletRequest req) {

		String msg = memberService.memberProc(member);

		/*
		 * System.out.println("ddd"); System.out.println(login.getId());
		 * System.out.println(login.getPw()); System.out.println(login.getNickname());
		 * 
		 * System.out.println("============"); System.out.println(member.getId());
		 * System.out.println(member.getName()); System.out.println(member.getPhone());
		 * System.out.println(member.getEmail());
		 * System.out.println(member.getBirth_year());
		 * System.out.println(member.getBirth_month());
		 * System.out.println(member.getBirth_day());
		 * System.out.println(member.getGender());
		 * System.out.println(member.getEvent_e());
		 * System.out.println(member.getEvent_sms());
		 */
		
		if (msg.equals("가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			model.addAttribute("name", req.getParameter("user_nm"));
			return "redirect:/mem/join3";
			// 메소드 실행 후 새로운 요청을 줘서 클라이언트에게 경로 제공

		} else {
			model.addAttribute("msg", msg);
			return "redirect:/mem/join1";
			// 메소드를 실행 후 화면 제공
		}

	}
}
