package com.clone.starbucks;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

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
	
	//admin
	@RequestMapping(value="memberListForm")
	public String memberListForm() {
		return "admin/memberListForm";
	}
	
	@RequestMapping(value="userInfoForm")
	public String userInfoForm() {
		return "admin/userInfoForm";
	}
	
	@RequestMapping(value="modifyCheckForm")
	public String modifyCheckForm() {
		return "admin/modifyCheckForm";
	}
	
	//0601 다정 커피
	@RequestMapping(value="saleChart-1")
	public String saleChart1() {
		return "admin/saleChart-1";
	}
	
	//0602 다정 푸드
	@RequestMapping(value="saleChart-2")
	public String saleChart2() {
		return "admin/saleChart-2";
	}
	
	//프로덕트
	@RequestMapping(value="saleChart-3")
	public String saleChart3() {
		return "admin/saleChart-3";
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
	
	@RequestMapping(value="latte")
	public String latte() {
		return "coffee/latte";
	}
	
	@RequestMapping(value="mocha")
	public String mocha() {
		return "coffee/mocha";
	}
	
	@RequestMapping(value="product_list")
	   public String coffee_product_list() {
	      return "coffee/product_list";
	   }
	
	@RequestMapping(value="product_list_1")
	public String coffee_product_list_1() {
		return "coffee/product_list-1";
	}
	
	@RequestMapping(value="product_list_2")
	public String coffee_product_list_2() {
		return "coffee/product_list-2";
	}
	
	@RequestMapping(value="productFinder")
	public String productFinder() {
		return "coffee/productFinder";
	}
	
	//footer/co_sales
	//login
	@RequestMapping(value="login_login")
	public String login() {
		return "login/login";
	}
	//menu
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
	
	@RequestMapping(value="menu/food_list")
	public String food_list() {
		return "menu/food_list";
	}
	
	@RequestMapping(value="menu_food_list_1") //카테고리 코드를 받아 해당 카테고리만 뿌린다.
	public String food_list_1(String CATE_CD) {
		return "menu/food_list-1";
	}
	
	@RequestMapping(value="menu_food_list_2")
	public String food_list_2(String CATE_CD) {
		return "menu/food_list-2";
	}
	
	@RequestMapping(value="menu_food_list_3")
	public String food_list_3(String CATE_CD) {
		return "menu/food_list-3";
	}
	
	@RequestMapping(value="menu_food_list_4")
	public String food_list_4(String CATE_CD) {
		return "menu/food_list-4";
	}
	
	@RequestMapping(value="menu_food_list_5")
	public String food_list_5(String CATE_CD) {
		return "menu/food_list-5";
	}
	
	@RequestMapping(value="menu_food_list_6")
	public String food_list_6(String CATE_CD) {
		return "menu/food_list-6";
	}
	
	@RequestMapping(value="menu_food_list_7")
	public String food_list_7(String CATE_CD) {
		return "menu/food_list-7";
	}
	
	
	//0531 13 다정
	@RequestMapping(value="menu_food_view")
	public String food_view() {
		return "menu/food_view";
	}
	
	//0531 14 다정
	@RequestMapping(value="menu_product_view")
	public String product_view() {
		return "menu/product_view";
	}
	
	@RequestMapping(value="menu_drink_view")
	public String drink_view() {
		return "menu/drink_view";
	}
	
	//0531 다정
	@RequestMapping(value="menu_orderList")
	public String orderList() {
		return "menu/orderList";
	}
	
	//0601 다정
	@RequestMapping(value="menu_starbucksCard")
	public String starbucksCard() {
		return "menu/starbucksCard";
	}
	
	@RequestMapping(value="menu_coupon_popup")
	public String coupon_popup(){
		return "menu/coupon_popup";
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
	//my

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
	
	//store
	
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
	
	@RequestMapping(value="util_app_tip")
	public String app_tip() {
		return "util/app_tip";
	}
	
	@RequestMapping(value="util_faq")
	public String faq() {
		return "util/faq";
	}
	
	@RequestMapping(value="faq_1")
	public String faq_1() {
		return "community/faq-1";
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
	
	//ajax-지혜
	@ResponseBody
	@PostMapping(value="upload/json/menu/{path}")//, produces="application/json; charset=UTF-8"
	public String ajaxMapping(@PathVariable String path) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/menu/" + path + ".json";
		System.out.println(path);
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
}
