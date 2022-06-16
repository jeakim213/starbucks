package com.clone.starbucks.controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

@Controller
public class MenuController {

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

	
	// ajax
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

	@ResponseBody // 나만의 음료 고르기-지혜
	@PostMapping(value = "menu/getMsrXoSkuList", produces = "application/json; charset=UTF-8")
	public String getMsrXoSkuList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String categoryCode = request.getParameter("categoryCode");
		String mappingPath = "upload/json/menu/custom/" + categoryCode + ".json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
	
	
	@ResponseBody // 나만의 음료 등록하기-지혜
	@PostMapping(value = "menu/setMsrXoMyMenuRegister", produces = "application/json; charset=UTF-8")
	public String setMsrXoMyMenuRegister(HttpServletRequest request) throws FileNotFoundException, IOException {
//			"registerType" 	   : registerType
//			,"categoryType"    : categoryType
//			,"delegateSku"     : delegateSku
//			,"nickname"        : repalceAnd(nickname)
//			,"customFlag"      : customFlag
//			,"qty"             : 1
//			,"fullCallingName" : repalceAnd(getCallingName())
//			,"skuNo"           : delegateSku
//			,"cupType"         : cupType
//			,"customList"      : customList
		String product_cd = request.getParameter("product_cd");
		String mappingPath = "upload/json/menu/detail/.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
}
