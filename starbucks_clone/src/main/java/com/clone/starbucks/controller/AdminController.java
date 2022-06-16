package com.clone.starbucks.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class AdminController {
	
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
	   

}
