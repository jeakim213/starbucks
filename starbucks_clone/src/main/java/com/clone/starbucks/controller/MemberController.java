package com.clone.starbucks.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MemberServiceImpl;
import com.google.gson.JsonObject;

@Controller
public class MemberController {
	@Autowired MemberServiceImpl memberService;
	@Autowired private HttpSession session;
	
	// my

		@RequestMapping(value = "my/egiftCard_shopping_bag")
		public String egiftCard_shopping_bag() {
			return "my/egiftCard_shopping_bag";
		}

		@RequestMapping(value = "my/egiftCard")
		public String egiftCard() {
			return "my/egiftCard";
		}

		@RequestMapping(value = "my/eReceiptList")
		public String eReceiptList() {
			return "my/eReceiptList";
		}

		@RequestMapping(value = "my/index")
		public String my_index() {
			return "my/index";
		}

		@RequestMapping(value = "my/mycard_charge")
		public String mycard_charge() {
			return "my/mycard_charge";
		}

		@RequestMapping(value = "my/mycard_charge_1")
		public String mycard_charge_1() {
			return "my/mycard_charge-1";
		}

		@RequestMapping(value = "my/mycard_charge_2")
		public String mycard_charge_2() {
			return "my/mycard_charge-2";
		}

		@RequestMapping(value = "my/mycard_index")
		public String mycard_index() {
			return "my/mycard_index";
		}

		@RequestMapping(value = "my/mycard_info_input")
		public String mycard_info_input() {
			return "my/mycard_info_input";
		}

		@RequestMapping(value = "my/mycard_lost")
		public String mycard_lost() {
			return "my/mycard_lost";
		}

		@RequestMapping(value = "my/mycard")
		public String mycard() {
			return "my/mycard";
		}

		@RequestMapping(value = "my/reward_star_history")
		public String reward_star_history() {
			return "my/reward_star_history";
		}

		@RequestMapping(value = "my/reward")
		public String reward() {
			return "my/reward";
		}
	
	
	
	//login
	
	@RequestMapping(value = "login/login")
	public String login() {
		return "login/login";
	}
	
	@PostMapping(value = "loginProc")
	public String loginProc(UserInfoDTO member, Model model) {
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
	
	
	// mem 회원가입 - 예은
	
	@RequestMapping(value = "mem/join1")
	public String join1() {
		return "mem/join1";
	}

	// 문자인증post - 예은
	@RequestMapping(value = "mem/join2", method =  {RequestMethod.GET, RequestMethod.POST})
	public String join2(HttpServletRequest req, Model model) {
		model.addAttribute("pnum", req.getParameter("num"));
		
		return "mem/join2";
	}



	@RequestMapping(value = "mem/join3")
	public String join3() {
		return "mem/join3";
	}

	// 휴대폰 sms 인증 - 예은
	@RequestMapping(value = "mem/verify")
	public String verify() {
		return "mem/verify";
	}

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
	
	//ajax
	
	@ResponseBody // 아이디 체크-예은
	@PostMapping(value = "**/interface/getUserIdCheck", produces = "application/json; charset=UTF-8")
	public String getUserIdCheck() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}
	
	@ResponseBody // 비밀번호 규칙 체크-예은
	@PostMapping(value = "**/interface/getUserPwdCheck", produces = "application/json; charset=UTF-8")
	public String getUserPwdCheck() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}
	
	
	@ResponseBody // 닉네임 체크-예은
	@PostMapping(value = "**/interface/checkNicknameValid", produces = "application/json; charset=UTF-8")
	public String checkNicknameValid() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}

}

