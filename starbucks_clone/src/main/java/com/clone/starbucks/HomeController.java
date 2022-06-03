package com.clone.starbucks;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// coffee
	@RequestMapping(value = "coffee/americano")
	public String americano() {
		return "coffee/americano";
	}

	@RequestMapping(value = "coffee/cappuccino")
	public String cappuccino() {
		return "coffee/cappuccino";
	}

	@RequestMapping(value = "coffee/caramel_macchato")
	public String caramel_macchato() {
		return "coffee/caramel_macchato";
	}

	@RequestMapping(value = "coffee/doppio")
	public String doppio() {
		return "coffee/doppio";
	}
	
	@RequestMapping(value = "coffee/espresso_macchiato")
	public String espresso_macchiato() {
		return "coffee/espresso_macchiato";
	}
	
	@RequestMapping(value = "coffee/espresso")
	public String espresso() {
		return "coffee/espresso";
	}

	@RequestMapping(value = "coffee/latte")
	public String latte() {
		return "coffee/latte";
	}

	@RequestMapping(value = "coffee/mocha")
	public String mocha() {
		return "coffee/mocha";
	}

	@RequestMapping(value = "coffee/product_list")
	public String coffee_product_list() {
		return "coffee/product_list";
	}

	@RequestMapping(value = "coffee/product_list_1")
	public String coffee_product_list_1() {
		return "coffee/product_list-1";
	}

	@RequestMapping(value = "coffee/product_list_2")
	public String coffee_product_list_2() {
		return "coffee/product_list-2";
	}

	@RequestMapping(value = "coffee/productFinder")
	public String productFinder() {
		return "coffee/productFinder";
	}

	// footer/co_sales
	// login
	@RequestMapping(value = "login/login")
	public String login() {
		return "login/login";
	}

	// menu
	@RequestMapping(value = "menu/drink_list")
	public String drink_list() {
		return "menu/drink_list";
	}

	@RequestMapping(value = "menu/drink_list_1")
	public String drink_list_1() {
		return "menu/drink_list-1";
	}

	@RequestMapping(value = "menu/drink_list_2")
	public String drink_list_2() {
		return "menu/drink_list-2";
	}

	@RequestMapping(value = "menu/drink_list_3")
	public String drink_list_3() {
		return "menu/drink_list-3";
	}

	@RequestMapping(value = "menu/drink_list_4")
	public String drink_list_4() {
		return "menu/drink_list-4";
	}

	@RequestMapping(value = "menu/drink_list_5")
	public String drink_list_5() {
		return "menu/drink_list-5";
	}

	@RequestMapping(value = "menu/drink_list_6")
	public String drink_list_6() {
		return "menu/drink_list-6";
	}

	@RequestMapping(value = "menu/drink_list_7")
	public String drink_list_7() {
		return "menu/drink_list-7";
	}

	@RequestMapping(value = "menu/drink_list_8")
	public String drink_list_8() {
		return "menu/drink_list-8";
	}

	@RequestMapping(value = "menu/drink_list_9")
	public String drink_list_9() {
		return "menu/drink_list-9";
	}

   @RequestMapping(value = "menu/drink_view")
   public String drink_view(String product_cd, Model model) {
      model.addAttribute("product_cd", product_cd);
      return "menu/drink_view";
   }
	// menu/drink_view_coldbrew1은 삭제페이지라고 들어서 매핑 안함(추후 menu 부분 jsp 정리 필요!)

	@RequestMapping(value = "menu/food_list")
	public String food_list() {
		return "menu/food_list";
	}

	@RequestMapping(value = "menu/food_list_1") // 카테고리 코드를 받아 해당 카테고리만 뿌린다
	public String food_list_1(String CATE_CD) {
		return "menu/food_list-1";
	}

	@RequestMapping(value = "menu/food_list_2")
	public String food_list_2(String CATE_CD) {
		return "menu/food_list-2";
	}

	@RequestMapping(value = "menu/food_list_3")
	public String food_list_3(String CATE_CD) {
		return "menu/food_list-3";
	}

	@RequestMapping(value = "menu/food_list_4")
	public String food_list_4(String CATE_CD) {
		return "menu/food_list-4";
	}

	@RequestMapping(value = "menu/food_list_5")
	public String food_list_5(String CATE_CD) {
		return "menu/food_list-5";
	}

	@RequestMapping(value = "menu/food_list_6")
	public String food_list_6(String CATE_CD) {
		return "menu/food_list-6";
	}

	@RequestMapping(value = "menu/food_list_7")
	public String food_list_7(String CATE_CD) {
		return "menu/food_list-7";
	}

	// 0601 18 지혜
	@RequestMapping(value = "menu/food_view")
	public String food_view(String product_cd, Model model) {
		model.addAttribute("product_cd", product_cd);
		return "menu/food_view";
	}

	@RequestMapping(value = "menu/product_list")
	public String product_list() {
		return "menu/product_list";
	}
	

	//0601 다정
	@RequestMapping(value="menu/starbucksCard")
	public String starbucksCard() {
		return "menu/starbucksCard";
	}
	
	@RequestMapping(value="menu/coupon_popup")
	public String coupon_popup(){
		return "menu/coupon_popup";
	}
	
	@RequestMapping(value = "menu/product_list_1")
	public String product_list_1() {
		return "menu/product_list-1";
	}

	@RequestMapping(value = "menu/product_list_2")
	public String product_list_2() {
		return "menu/product_list-2";
	}

	@RequestMapping(value = "menu/product_list_3")
	public String product_list_3() {
		return "menu/product_list-3";
	}

	@RequestMapping(value = "menu/product_list_4")
	public String product_list_4() {
		return "menu/product_list-4";
	}

	@RequestMapping(value = "menu/product_list_5")
	public String product_list_5() {
		return "menu/product_list-5";
	}

	@RequestMapping(value = "menu/product_list_6")
	public String product_list_6() {
		return "menu/product_list-6";
	}

	@RequestMapping(value = "menu/product_list_7")
	public String product_list_7() {
		return "menu/product_list-7";
	}

	@RequestMapping(value = "menu/product_list_8")
	public String product_list_8() {
		return "menu/product_list-8";
	}

	@RequestMapping(value = "menu/product_list_9")
	public String product_list_9() {
		return "menu/product_list-9";
	}

	@RequestMapping(value = "menu/product_view")
	public String product_view(String product_cd, Model model) {
		model.addAttribute("product_cd", product_cd);
		return "menu/product_view";
	}

	// 0531 다정
	@RequestMapping(value = "menu/orderList")
	public String orderList() {
		return "menu/orderList";
	}

	@RequestMapping(value = "menu/myOrder")
	public String menu_myOrder() {
		return "menu/myOrder";
	}

	// msr
	@RequestMapping(value = "msreward/about")
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

	// my
	@RequestMapping(value = "admin_1")
	public String admin_1() {
		return "my/admin_1";
	}
	
	@RequestMapping(value = "admin_2")
	public String admin_2() {
		return "my/admin_2";
	}
	
	@RequestMapping(value = "admin_3")
	public String admin_3() {
		return "my/admin_3";
	}

	@RequestMapping(value = "admin_4")
	public String admin_4() {
		return "my/admin_4";
	}
	
	@RequestMapping(value = "admin_5")
	public String admin_5() {
		return "my/admin_5";
	}
	
	@RequestMapping(value = "admin_6")
	public String admin_6() {
		return "my/admin_6";
	}

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

	// store
	@RequestMapping(value = "store/store_community")
	public String store_community() {
		return "store/store_community";
	}

	@RequestMapping(value = "store/store_drive")
	public String store_drive() {
		return "store/store_drive";
	}

	@RequestMapping(value = "store/store_map")
	public String store_map() {
		return "store/store_map";
	}

	@RequestMapping(value = "store/store_map_1")
	public String store_map_1() {
		return "store/store_map-1";
	}

	@RequestMapping(value = "store/store_map_2")
	public String store_map_2() {
		return "store/store_map-2";
	}

	@RequestMapping(value = "store/store_reserve")
	public String store_reserve() {
		return "store/store_reserve";
	}


	@RequestMapping(value = "store/store_star_field")
	public String store_star_field() {
		return "store/store_star_field";
	}

	@RequestMapping(value = "util/app_tip")
	public String app_tip() {
		return "util/app_tip";
	}

	@RequestMapping(value = "util/faq")
	public String faq() {
		return "util/faq";
	}

	@RequestMapping(value = "community/faq_1")
	public String faq_1() {
		return "community/faq-1";
	}

	@RequestMapping(value = "util/guest_eReceipt")
	public String guest_eReceipt() {
		return "util/guest_eReceipt";
	}

	@RequestMapping(value = "util/online_survey")
	public String online_survey() {
		return "util/online_survey";
	}

	@RequestMapping(value = "util/partnership_card")
	public String partnership_card() {
		return "util/partnership_card";
	}

	@RequestMapping(value = "util/storecareList")
	public String storecareList() {
		return "util/storecareList";
	}

	@RequestMapping(value = "util/web_tip")
	public String web_tip() {
		return "util/web_tip";
	}

	// ajax-지혜
	@ResponseBody // 로그인 확인
	@PostMapping(value = "interface/checkLogin", produces = "application/json; charset=UTF-8")
	public String checkLogin() {
		//옵션 없음.
		//답 : _response.result_code == "SUCCESS" json필요 data, result_code, error_msg, list
		return "";
	}

	//ajax-지혜
	@ResponseBody
	@PostMapping(value = "upload/json/menu/{path}", produces = "application/json; charset=UTF-8")
	public String ajaxJson(@PathVariable String path) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/menu/" + path + ".json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 제품정보
	@PostMapping(value = "menu/productViewAjax", produces = "application/json; charset=UTF-8")
	public String productViewAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if(product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/info_drink.json";
		else if(product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/info_food.json";
		else if(product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/info_product.json";
		
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 파일이미지
	@PostMapping(value = "menu/productFileAjax", produces = "application/json; charset=UTF-8")
	public String productFileAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if(product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/file_drink.json";
		else if(product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/file_food.json";
		else if(product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/file_product.json";
		
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		//찾기
		//JsonObject result = 
		
		return "";
	}

//	@ResponseBody  //관련제품
//	@PostMapping(value="menu/productPairAjax", produces="application/json; charset=UTF-8")
//	public String productPairAjax(@PathVariable String path) throws FileNotFoundException, IOException {
//		String mappingPath = "upload/json/menu/" + path + ".json";
//		ClassPathResource resource = new ClassPathResource(mappingPath);
//		FileReader reader = new FileReader(resource.getFile());
//		Gson gson = new Gson();
//		JsonObject obj = gson.fromJson(reader, JsonObject.class);
//		return obj.toString();
//	}
	
	
	@ResponseBody // 나만의 음료 찾기
	@PostMapping(value = "menu/getMsrXoCategoryList", produces = "application/json; charset=UTF-8")
	public String getMsrXoCategoryList(HttpServletRequest request) throws FileNotFoundException, IOException {
//		"categoryType" : "01",
//		"allSearchYn"  : "N"
		String product_cd = request.getParameter("product_cd");
		String mappingPath = "upload/json/menu/detail/.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
	
	@ResponseBody // 나만의 음료 등록하기
	@PostMapping(value = "menu/setMsrXoMyMenuRegister", produces = "application/json; charset=UTF-8")
	public String setMsrXoMyMenuRegister(HttpServletRequest request) throws FileNotFoundException, IOException {
//		"registerType" 	   : registerType
//		,"categoryType"    : categoryType
//		,"delegateSku"     : delegateSku
//		,"nickname"        : repalceAnd(nickname)
//		,"customFlag"      : customFlag
//		,"qty"             : 1
//		,"fullCallingName" : repalceAnd(getCallingName())
//		,"skuNo"           : delegateSku
//		,"cupType"         : cupType
//		,"customList"      : customList
		String product_cd = request.getParameter("product_cd");
		String mappingPath = "upload/json/menu/detail/.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
}
