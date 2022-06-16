package com.clone.starbucks.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.service.MyServiceImpl;

@Controller
public class MyController {

	@Autowired MyServiceImpl myService;
	@Autowired HttpSession session;

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

	@PostMapping(value = "my/cardRegisterProc")
	public String cardRegisterProc(CardDTO cardDTO, Model model, HttpServletRequest request) {
		String msg = myService.cardRegisterProc(cardDTO, request);

		if (msg.equals("등록완료")) {
			model.addAttribute("msg", msg);
			return "redirect:/index?formpath=home";
		} else {
			model.addAttribute("msg", msg);
			return "my/mycard_info_input";
		}

	}

}
