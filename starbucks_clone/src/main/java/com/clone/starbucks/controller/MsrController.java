package com.clone.starbucks.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class MsrController {


	

	// msr
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
