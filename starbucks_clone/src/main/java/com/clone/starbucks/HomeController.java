package com.clone.starbucks;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	@RequestMapping(value = "menu")
	public String menu() {
		return "menu/index";
	}
	
	@GetMapping(value = "index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="coldbrew")
	public String coldbrew() {
		return "menu/drink_view_coldbrew2";
	}
	
	@RequestMapping(value="myOrder")
	public String myOrder() {
		return "menu/myOrder";
	}
	
	@RequestMapping(value="food_list")
	public String food_list() {
		return "menu/food_list";
	}
	
	@RequestMapping(value="product_list")
	public String product_list() {
		return "menu/product_list";
	}
	
	@RequestMapping(value="card_list")
	public String card_list() {
		return "menu/card_list";
	}
	
	@RequestMapping(value="drink_list")
	public String drink_list() {
		return "menu/drink_list";
	}
	
	@RequestMapping(value="food_view")
	public String food_view() {
		return "menu/food_view_SausageOlive_Mini_Pie";
	}
	
	@RequestMapping(value="couponPopup")
	public String couponPopup() {
		return "menu/coupon_popup";
	}
	
	@RequestMapping(value="orderList")
	public String orderList() {
		return "menu/orderList";
	}
	
	@RequestMapping(value="starbucksCard")
	public String starbucksCard() {
		return "menu/starbucksCard";
	}
	
}
