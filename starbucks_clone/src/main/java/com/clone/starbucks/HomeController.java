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
	
	
	//coffee
	@RequestMapping(value="americano")
	public String americano() {
		return "coffee/americano";
	}
	
	@RequestMapping(value="cappuccino")
	public String cappuccino() {
		return "coffee/cappuccino";
	}
	
	@RequestMapping(value="caramel_macchato")
	public String caramel_macchato() {
		return "coffee/caramel_macchato";
	}
	
	@RequestMapping(value="doppio")
	public String doppio() {
		return "coffee/doppio";
	}
	
	@RequestMapping(value="espresso_macchiato")
	public String espresso_macchiato() {
		return "coffee/espresso_macchiato";
	}
	
	@RequestMapping(value="espresso")
	public String espresso() {
		return "coffee/espresso";
	}
	
	@RequestMapping(value="higher_enjoy")
	public String higher_enjoy() {
		return "coffee/higher_enjoy";
	}
	
	@RequestMapping(value="higher_enjoy_1")
	public String higher_enjoy_1() {
		return "coffee/higher_enjoy-1";
	}
	
	@RequestMapping(value="higher_enjoy_2")
	public String higher_enjoy_2() {
		return "coffee/higher_enjoy-2";
	}
	
	@RequestMapping(value="higher_enjoy_3")
	public String higher_enjoy_3() {
		return "coffee/higher_enjoy-3";
	}
	
	@RequestMapping(value="higher_enjoy_4")
	public String higher_enjoy_4() {
		return "coffee/higher_enjoy-4";
	}
	
	@RequestMapping(value = "coffee")
	public String coffee() {
		return "coffee/index";
	}
	
	@RequestMapping(value="latte")
	public String latte() {
		return "coffee/latte";
	}
	
	@RequestMapping(value="mocha")
	public String mocha() {
		return "coffee/mocha";
	}
	
	@RequestMapping(value="product_list_1")
	public String coffee_product_list_1() {
		return "coffee/product_list-1";
	}
	
	@RequestMapping(value="product_list_2")
	public String coffee_product_list_2() {
		return "coffee/product_list-2";
	}
	
	@RequestMapping(value="product_view")
	public String product_view() {
		return "coffee/product_view";
	}
	
	@RequestMapping(value="productFinder")
	public String productFinder() {
		return "coffee/productFinder";
	}
	//community
	@RequestMapping(value="faq")
	public String community_faq() {
		return "community/faq";
	}
	
	@RequestMapping(value="faq_1")
	public String community_faq_1() {
		return "community/faq-1";
	}
	
	@RequestMapping(value="faq_2")
	public String community_faq_2() {
		return "community/faq-2";
	}
	
	@RequestMapping(value="faq_3")
	public String community_faq_3() {
		return "community/faq-3";
	}
	
	//customer
	@RequestMapping(value="suggestionWrite")
	public String suggestionWrite() {
		return "customer/suggestionWrite";
	}
	
	//eFreq
	@RequestMapping(value="gift")
	public String gift() {
		return "eFreq/gift";
	}
	
	@RequestMapping(value="guide")
	public String guide() {
		return "eFreq/guide";
	}
	
	@RequestMapping(value="status")
	public String status() {
		return "eFreq/status";
	}
	
	@RequestMapping(value="status_1")
	public String status_1() {
		return "eFreq/status-1";
	}
	
	@RequestMapping(value="status_2")
	public String status_2() {
		return "eFreq/status-2";
	}
	
	
	//footer/co_sales
	@RequestMapping(value="co_sales_index")
	public String footer_cosales_index() {
		return "footer/co_sales/index";
	}
	
	@RequestMapping(value="co_sales_sb_product")
	public String footer_cosales_sb_product() {
		return "footer/co_sales/sb_product";
	}
	
	@RequestMapping(value="co_sales_sbcard_egift_list")
	public String footer_cosales_sbcard_egift_list() {
		return "footer/co_sales/sbcard_egift_list";
	}
	
	@RequestMapping(value="co_sales_sbcard_egift")
	public String footer_cosales_sbcard_egift() {
		return "footer/co_sales/sbcard_egift";
	}
	
	@RequestMapping(value="co_sales_sbcard")
	public String footer_cosales_sbcard() {
		return "footer/co_sales/sbcard";
	}
	
	//footer/company
	@RequestMapping(value="company_index")
	public String footer_company_index() {
		return "footer/company/index";
	}
	
	@RequestMapping(value="company_mission")
	public String footer_company_mission() {
		return "footer/company/mission";
	}
	
	@RequestMapping(value="company_news_list")
	public String footer_company_newslist() {
		return "footer/company/news_list";
	}
	
	@RequestMapping(value="company_starbucks_history")
	public String footer_company_starbuckshistory() {
		return "footer/company/starbucks_history";
	}
	
	@RequestMapping(value="company_starbucks_information")
	public String footer_company_starbucksinformation() {
		return "footer/company/starbucks_information";
	}
	
	@RequestMapping(value="company_starbucks_story")
	public String footer_company_starbucksstory() {
		return "footer/company/starbucks_story";
	}
	
	//footer/etc
	@RequestMapping(value="etc_coming_route")
	public String footer_etc_comingroute() {
		return "footer/etc/coming_route";
	}
	
	@RequestMapping(value="etc_hotline")
	public String footer_etc_hotline() {
		return "footer/etc/hotline";
	}
	
	@RequestMapping(value="etc_privacy_board_list")
	public String footer_etc_privacy_board_list() {
		return "footer/etc/privacy_board_list";
	}
	
	@RequestMapping(value="etc_privacy_board_list_1")
	public String footer_etc_privacy_board_list_1() {
		return "footer/etc/privacy_board_list-1";
	}
	
	@RequestMapping(value="etc_privacy")
	public String footer_etc_privacy() {
		return "footer/etc/privacy";
	}
	
	@RequestMapping(value="etc_rules_loc")
	public String footer_etc_rules_loc() {
		return "footer/etc/rules_loc";
	}
	
	@RequestMapping(value="etc_rules_mdp")
	public String footer_etc_rules_mdp() {
		return "footer/etc/rules_mdp";
	}
	
	@RequestMapping(value="etc_rules_msr")
	public String footer_etc_rules_msr() {
		return "footer/etc/rules_msr";
	}
	
	@RequestMapping(value="etc_rules_non")
	public String footer_etc_rules_non() {
		return "footer/etc/rules_non";
	}
	
	@RequestMapping(value="etc_rules_vod")
	public String footer_etc_rules_vod() {
		return "footer/etc/rules_vod";
	}
	
	@RequestMapping(value="etc_rules")
	public String footer_etc_rules() {
		return "footer/etc/rules";
	}
	
	@RequestMapping(value="etc_sitemap")
	public String footer_etc_sitemap() {
		return "footer/etc/sitemap";
	}
	
	//footer/partnership
	@RequestMapping(value="partnership_new_partner")
	public String footer_partnership_newpartner() {
		return "footer/partnership/new_partner";
	}
	
	//footer/recruit
	@RequestMapping(value="recruit_index")
	public String footer_recruit_index() {
		return "footer/recruit/index";
	}
	
	//login
	@RequestMapping(value="login_login")
	public String login() {
		return "login/login";
	}
	
	//menu
	@RequestMapping(value="menu_card_list")
	public String card_list() {
		return "menu/card_list";
	}
	
	@RequestMapping(value="menu_card_list_1")
	public String card_list_1() {
		return "menu/card_list-1";
	}
	
	@RequestMapping(value="menu_card_list_2")
	public String card_list_2() {
		return "menu/card_list-2";
	}
	
	@RequestMapping(value="menu_drink_list")
	public String drink_list() {
		return "menu/drink_list";
	}
	

	@RequestMapping(value="menu_drink_list_1")
	public String drink_list_1() {
		return "menu/drink_list-1";
	}
	
	@RequestMapping(value="menu_drink_list_2")
	public String drink_list_2() {
		return "menu/drink_list-2";
	}
	
	@RequestMapping(value="menu_drink_list_3")
	public String drink_list_3() {
		return "menu/drink_list-3";
	}
	
	@RequestMapping(value="menu_drink_list_4")
	public String drink_list_4() {
		return "menu/drink_list-4";
	}
	
	@RequestMapping(value="menu_drink_list_5")
	public String drink_list_5() {
		return "menu/drink_list-5";
	}
	
	@RequestMapping(value="menu_drink_list_6")
	public String drink_list_6() {
		return "menu/drink_list-6";
	}
	
	@RequestMapping(value="menu_drink_list_7")
	public String drink_list_7() {
		return "menu/drink_list-7";
	}
	
	@RequestMapping(value="menu_drink_list_8")
	public String drink_list_8() {
		return "menu/drink_list-8";
	}
	
	@RequestMapping(value="menu_drink_list_9")
	public String drink_list_9() {
		return "menu/drink_list-9";
	}
	
	
	//menu/drink_view_coldbrew1은 삭제페이지라고 들어서 매핑 안함(추후 menu 부분 jsp 정리 필요!)
	
	
	@RequestMapping(value="menu_drink_view_coldbrew")
	public String drink_view_coldbrew() {
		return "menu/drink_view_coldbrew2";
	}
	
	@RequestMapping(value="menu_food_list")
	public String food_list() {
		return "menu/food_list";
	}
	
	@RequestMapping(value="menu_food_list_1")
	public String food_list_1() {
		return "menu/food_list-1";
	}
	
	@RequestMapping(value="menu_food_list_2")
	public String food_list_2() {
		return "menu/food_list-2";
	}
	
	@RequestMapping(value="menu_food_list_3")
	public String food_list_3() {
		return "menu/food_list-3";
	}
	
	@RequestMapping(value="menu_food_list_4")
	public String food_list_4() {
		return "menu/food_list-4";
	}
	
	@RequestMapping(value="menu_food_list_5")
	public String food_list_5() {
		return "menu/food_list-5";
	}
	
	@RequestMapping(value="menu_food_list_6")
	public String food_list_6() {
		return "menu/food_list-6";
	}
	
	@RequestMapping(value="menu_food_list_7")
	public String food_list_7() {
		return "menu/food_list-7";
	}
	
	@RequestMapping(value="menu_index")
	public String menu_index() {
		return "menu/index";
	}
	
	//0531 다정
	@RequestMapping(value="orderList")
	public String orderList() {
		return "menu/orderList";
	}
	
	
	
	@RequestMapping(value="menu_myOrder")
	public String menu_myOrder() {
		return "menu/myOrder";
	}
	
	@RequestMapping(value="menu_product_list")
	public String product_list() {
		return "menu/product_list";
	}
	
	@RequestMapping(value="menu_product_list_1")
	public String product_list_1() {
		return "menu/product_list-1";
	}
	
	@RequestMapping(value="menu_product_list_2")
	public String product_list_2() {
		return "menu/product_list-2";
	}
	
	@RequestMapping(value="menu_product_list_3")
	public String product_list_3() {
		return "menu/product_list-3";
	}
	
	@RequestMapping(value="menu_product_list_4")
	public String product_list_4() {
		return "menu/product_list-4";
	}
	
	@RequestMapping(value="menu_product_list_5")
	public String product_list_5() {
		return "menu/product_list-5";
	}
	
	@RequestMapping(value="menu_product_list_6")
	public String product_list_6() {
		return "menu/product_list-6";
	}
	
	@RequestMapping(value="menu_product_list_7")
	public String product_list_7() {
		return "menu/product_list-7";
	}
	
	@RequestMapping(value="menu_product_list_8")
	public String product_list_8() {
		return "menu/product_list-8";
	}
	
	@RequestMapping(value="menu_product_list_9")
	public String product_list_9() {
		return "menu/product_list-9";
	}
	
	//msr
	@RequestMapping(value="msreward_about")
	public String msreward_about() {
		return "msr/msreward/about";
	}
	
	@RequestMapping(value="msreward_level_benefit")
	public String msreward_level_benefit() {
		return "msr/msreward/level_benefit";
	}
	
	@RequestMapping(value="msreward_star")
	public String msreward_star() {
		return "msr/msreward/star";
	}
	
	@RequestMapping(value="scard_about")
	public String scard_about() {
		return "msr/scard/about";
	}
	
	@RequestMapping(value="scard_charge_information")
	public String scard_charge_information() {
		return "msr/scard/charge_information";
	}
	
	@RequestMapping(value="scard_lost_report")
	public String scard_lost_report() {
		return "msr/scard/lost_report";
	}
	
	@RequestMapping(value="scard_register_inquiry")
	public String scard_register_inquiry() {
		return "msr/scard/register_inquiry";
	}
	

	/*@RequestMapping(value="scard_scard_gallery")
	public String scard_scard_gallery() {
		return "msr/scard/scard_gallery";
	}
	*/

	@RequestMapping(value="sceGift_egift_information")
	public String sceGift_egift_information() {
		return "msr/sceGift/egift_information";
	}
	
	@RequestMapping(value="sceGift_gift_step1")
	public String sceGift_gift_step1() {
		return "msr/sceGift/gift_step1";
	}

	@RequestMapping(value="sceGift_msr_useguide")
	public String sceGift_msr_useguide() {
		return "msr/sceGift/msr_useguide";
	}
	
	@RequestMapping(value="msr_index")
	public String msr_index() {
		return "msr/index";
	}
	
	
	//my
	@RequestMapping(value="calendar")
	public String calendar() {
		return "my/calendar";
	}

	@RequestMapping(value="egiftCard_shopping_bag")
	public String egiftCard_shopping_bag() {
		return "my/egiftCard_shopping_bag";
	}
	
	@RequestMapping(value="egiftCard")
	public String egiftCard() {
		return "my/egiftCard";
	}
	
	@RequestMapping(value="eReceiptList")
	public String eReceiptList() {
		return "my/eReceiptList";
	}
	
	@RequestMapping(value="my_index")
	public String my_index() {
		return "my/index";
	}
	
	@RequestMapping(value="mycard_charge")
	public String mycard_charge() {
		return "my/mycard_charge";
	}
	
	@RequestMapping(value="mycard_charge_1")
	public String mycard_charge_1() {
		return "my/mycard_charge-1";
	}
	
	@RequestMapping(value="mycard_charge_2")
	public String mycard_charge_2() {
		return "my/mycard_charge-2";
	}
	
	@RequestMapping(value="mycard_index")
	public String mycard_index() {
		return "my/mycard_index";
	}
	
	@RequestMapping(value="mycard_info_input")
	public String mycard_info_input() {
		return "my/mycard_info_input";
	}
	
	@RequestMapping(value="mycard_lost")
	public String mycard_lost() {
		return "my/mycard_lost";
	}
	
	@RequestMapping(value="mycard")
	public String mycard() {
		return "my/mycard";
	}
	
	@RequestMapping(value="reward_star_history")
	public String reward_star_history() {
		return "my/reward_star_history";
	}
	
	@RequestMapping(value="reward")
	public String reward() {
		return "my/reward";
	}
	
	@RequestMapping(value="vocList")
	public String vocList() {
		return "my/vocList";
	}
	
	
	//store
	
	@RequestMapping(value="store_index")
	public String store_index() {
		return "store/index";
	}
	
	@RequestMapping(value="store_community")
	public String store_community() {
		return "store/store_community";
	}
	
	
	@RequestMapping(value="store_drive")
	public String store_drive() {
		return "store/store_drive";
	}
	
	@RequestMapping(value="store_map")
	public String store_map() {
		return "store/store_map";
	}
	
	@RequestMapping(value="store_map_1")
	public String store_map_1() {
		return "store/store_map-1";
	}
	
	@RequestMapping(value="store_map_2")
	public String store_map_2() {
		return "store/store_map-2";
	}
	
	@RequestMapping(value="store_reserve")
	public String store_reserve() {
		return "store/store_reserve";
	}
	
	@RequestMapping(value="store_star_field")
	public String store_star_field() {
		return "store/store_star_field";
	}
	
	//util
	
	@RequestMapping(value="util_app_tip")
	public String app_tip() {
		return "util/app_tip";
	}
	
	@RequestMapping(value="util_faq")
	public String faq() {
		return "util/faq";
	}
	
	@RequestMapping(value="util_guest_eReceipt")
	public String guest_eReceipt() {
		return "util/guest_eReceipt";
	}
	
	@RequestMapping(value="util_online_survey")
	public String online_survey() {
		return "util/online_survey";
	}
	
	@RequestMapping(value="util_partnership_card")
	public String partnership_card() {
		return "util/partnership_card";
	}
	
	@RequestMapping(value="util_storecareList")
	public String storecareList() {
		return "util/storecareList";
	}
	
	@RequestMapping(value="util_web_tip")
	public String web_tip() {
		return "util/web_tip";
	}
	
	//whats_new
	@RequestMapping(value="whats_new_campaign_list")
	public String campaign_list() {
		return "whats_new/campaign_list";
	}
	@RequestMapping(value="whats_new_campaign_list_1")
	public String campaign_list_1() {
		return "whats_new/campaign_list-1";

	}
	
}
