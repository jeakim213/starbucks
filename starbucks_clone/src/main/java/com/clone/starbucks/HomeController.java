package com.clone.starbucks;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import java.util.Locale;
import java.util.Map;
import java.util.stream.IntStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.clone.starbucks.service.MemberServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/")
	public String home(Model model) {
		model.addAttribute("formpath", "join3");
		return "index";
	}
	
	
	@RequestMapping(value = "index")
	public void index(String formpath, Model model, String modifyId, HttpSession session) {
		model.addAttribute("formpath", formpath);
	}

	// admin
	@RequestMapping(value = "admin/memberListForm")
	public String memberListForm() {
		return "admin/memberListForm";
	}

	@RequestMapping(value = "admin/userInfoForm")
	public String userInfoForm() {
		return "admin/userInfoForm";
	}

	@RequestMapping(value = "admin/modifyCheckForm")
	public String modifyCheckForm() {
		return "admin/modifyCheckForm";
	}

	@RequestMapping(value = "admin/memberModifyForm")
	public String memberModifyForm() {
		return "admin/memberModifyForm";
	}

	@RequestMapping(value = "admin/deleteCheckForm")
	public String deleteCheckForm() {
		return "admin/deleteCheckForm";
	}

	// 0601 다정 커피
	@RequestMapping(value = "admin/saleChart-1")
	public String saleChart1() {
		return "admin/saleChart-1";
	}

	// 0602 다정 푸드
	@RequestMapping(value = "admin/saleChart-2")
	public String saleChart2() {
		return "admin/saleChart-2";
	}

	// 프로덕트
	@RequestMapping(value = "admin/saleChart-3")
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

	// login
	@RequestMapping(value = "login/login")
	public String login() {
		return "login/login";
	}

	// mem
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

	@RequestMapping(value = "menu/coupon_popup")
	public String menu_coupon_popup() {
		return "menu/coupon_popup";
	}

	@RequestMapping(value = "menu/starbucksCard")
	public String starbucksCard() {
		return "menu/starbucksCard";
	}

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

	@RequestMapping(value = "store/store_reserve")
	public String store_reserve() {
		return "store/store_reserve";
	}

	// ajax
	
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

	
	
	@ResponseBody // 로그인 확인-지혜
	@PostMapping(value = "**/interface/checkLogin", produces = "application/json; charset=UTF-8")
	public String checkLogin() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
//      {
//          "result_code": "FAIL",
//          "error_msg": "",
//          "alert_msg": "",
//          "location_href": "",
//          "location_replace": "",
//          "custom_script": "",
//          "total_cnt": 0,
//          "data": null,
//          "result_api_code": ""
//      }
		return obj.toString();
	}

	@ResponseBody // 메뉴list-지혜
	@PostMapping(value = "upload/json/menu/{path}", produces = "application/json; charset=UTF-8")
	public String ajaxJson(@PathVariable String path) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/menu/" + path + ".json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 제품정보-지혜
	@PostMapping(value = "menu/productViewAjax", produces = "application/json; charset=UTF-8")
	public String productViewAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if (product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/info_drink.json";
		else if (product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/info_food.json";
		else if (product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/info_product.json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(product_cd);
		result.add("view", cd);
		return result.toString();
	}

	@ResponseBody // 파일이미지-지혜
	@PostMapping(value = "menu/productFileAjax", produces = "application/json; charset=UTF-8")
	public String productFileAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if (product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/file_drink.json";
		else if (product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/file_food.json";
		else if (product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/file_product.json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(product_cd);
		result.add("file", cd);
		if (product_cate.equals("product"))
			return result.toString();
		StringBuffer strbuffer = new StringBuffer(result.toString());
		strbuffer.insert(8, "[");
		strbuffer.insert(strbuffer.length() - 1, "]");
		return strbuffer.toString();
	}

	@ResponseBody // 나만의 음료 찾기-지혜
	@PostMapping(value = "menu/getMsrXoCategoryList", produces = "application/json; charset=UTF-8")
	public String getMsrXoCategoryList(HttpServletRequest request) throws FileNotFoundException, IOException {
//		"categoryType" : "01",
//		"allSearchYn"  : "N"
		String product_cd = request.getParameter("product_cd");
//		String mappingPath = "upload/json/menu/detail/.json";
//		ClassPathResource resource = new ClassPathResource(mappingPath);
//		FileReader reader = new FileReader(resource.getFile());
//		Gson gson = new Gson();
//		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return "";
	}

	@ResponseBody // 나만의 음료 등록하기-지혜
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

	@ResponseBody // step1. 시,도 리스트-예은
	@PostMapping(value = "upload/json/store/map/getSidoList", produces = "application/json; charset=UTF-8")
	public String getSidoList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/store/map/getSidoList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // step2. 구,군 리스트-예은
	@PostMapping(value = "upload/json/store/map/getGugunList", produces = "application/json; charset=UTF-8")
	public String getGugunList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String sido_nm = request.getParameter("sido_nm");
		String mappingPath = "upload/json/store/map/getGugunList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(sido_nm);
		result.add("list", cd);

		return result.toString();
	}

	@ResponseBody // step3. 스토어 리스트-지혜
	@PostMapping(value = "upload/json/store/storelist/getStore", produces = "application/json; charset=UTF-8")
	public String getStore(HttpServletRequest request) throws FileNotFoundException, IOException {
		String searchType = request.getParameter("searchType");
		String sido_cd = request.getParameter("p_sido_cd");
		String gugun_cd = request.getParameter("p_gugun_cd");
		String T01 = request.getParameter("T01") == null ? "" : request.getParameter("T01");
		String T03 = request.getParameter("T03") == null ? "" : request.getParameter("T03");
		String T12 = request.getParameter("T12") == null ? "" : request.getParameter("T12");
		String mappingPath = "";
		// 초기값 : isError:true , in_distance:5(보이는거리) //iend:10(보여줄 갯수?)
		// 이동 후 값 : isError:false, in_distance:1 //iend:20
		// 테마 : T01-드라이브스루 , T03-리저브, T12-커뮤니티. 값은 1일경우 ok
		if (searchType.equals("A")) {
			// 검색x, 모두
			if (T01.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_DT.json";
			else if (T03.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_reserve.json";
			else if (T12.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_community.json";
			else
				return "";
		} else if (searchType.equals("C")) {
			// 검색x, 시.도
			mappingPath = "upload/json/store/storelist/getStore_" + sido_cd + ".json";
		} else {
			// B&D&E -> 즐겨찾기&매장검색. 이용안함.
			return "";
		}

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement list = obj.get("list");
		if (!searchType.equals("C")) {
			result.add("list", list);
			return result.toString();
		}

		JsonArray arrlist = list.getAsJsonArray();
		JsonArray arr = new JsonArray();
		for (int i = 0; i < arrlist.size(); i++) {
			JsonObject tmp = arrlist.get(i).getAsJsonObject();
			String gugun = tmp.get("gugun_code").toString().replace("\"", "");
			if (gugun.equals(gugun_cd))
				arr.add(tmp);
		}
		result.add("list", arr);
		return result.toString();

	}

	@ResponseBody // 나와 어울리는 커피 찾기 - 다정 Ajax
	@PostMapping(value = "coffee/getCoffeeFinderAjax", produces = "application/json; charset=UTF-8")
	public String getCoffeeFinder(HttpServletRequest request) throws FileNotFoundException, IOException {
		// 0606 다정
		String COFFEE_TASTE1 = request.getParameter("COFFEE_TASTE1");
		String COFFEE_FEEL = request.getParameter("COFFEE_FEEL");
		String COFFEE_INTEN = request.getParameter("COFFEE_INTEN");
		String cate_cd = request.getParameter(COFFEE_TASTE1 + "-" + COFFEE_FEEL + "-" + COFFEE_INTEN);
		String mappingPath = "upload/json/coffee/.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cate = obj.get(cate_cd);
		result.add("cate", cate);
		return result.toString();
	}

	@ResponseBody // 원두정보-지혜
	@PostMapping(value = "coffee/getCoffeeList", produces = "application/json; charset=UTF-8")
	public String getCoffeeList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String PACKAGE = request.getParameter("PACKAGE");
		String ROAST_KIND = request.getParameter("ROAST_KIND");
		String mappingPath = "";
		if (ROAST_KIND.equals("40"))
			return "";
		mappingPath = "upload/json/coffee/" + ROAST_KIND + ".json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 리저브원두정보-지혜
	@PostMapping(value = "coffee/getReserveList", produces = "application/json; charset=UTF-8")
	public String getReserveList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "";
		mappingPath = "upload/json/coffee/reserveList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 플래이버비아정보-지혜
	@PostMapping(value = "coffee/getFlavorList", produces = "application/json; charset=UTF-8")
	public String getFlavorList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "";
		mappingPath = "upload/json/coffee/flavorList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
}
