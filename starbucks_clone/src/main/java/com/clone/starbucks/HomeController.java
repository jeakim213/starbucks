package com.clone.starbucks;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
   @RequestMapping(value="admin/saleChart-1")
   public String saleChart1() {
      return "admin/saleChart-1";
   }
   
   //0602 다정 푸드
   @RequestMapping(value="admin/saleChart-2")
   public String saleChart2() {
      return "admin/saleChart-2";
   }
   
   //프로덕트
   @RequestMapping(value="admin/saleChart-3")
   public String saleChart3() {
      return "admin/saleChart-3";
   }
   
   

   // login
   @RequestMapping(value = "login/login")
   public String login() {
      return "login/login";
   }
   
   //mem
   @RequestMapping(value="mem/join1")
   public String join1() {
      return "mem/join1";
   }
   
   @RequestMapping(value="mem/join2")
   public String join2() {
      return "mem/join2";
   }
   
   @RequestMapping(value="mem/join3")
   public String join3() {
      return "mem/join3";
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

   // ajax
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
   

	
}
