package com.clone.starbucks.service;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IAdminService {
//----------------------------------------E-coupon----------------------------------------------	
		String receiptCoupon_NumMake(E_couponDTO ecouponDTO);
		String mmsCoupon_NumMake(E_couponDTO ecouponDTO);
		String starCoupon_NumMake(E_couponDTO ecouponDTO);
		
		String eCouponProc(E_couponDTO ecouponDTO, HttpServletRequest request) throws ParseException;
		
		//String selectNo(E_couponDTO ecouponDTO) throws ParseException;
		
		Date endDate(E_couponDTO ecouponDTO) throws ParseException;
		
//----------------------------------------E-coupon----------------------------------------------	

	void memberListForm(int currentPage, String select, String search);
	
	RegisterDTO userInfoForm(String id);
	
	String memberModifyProc(RegisterDTO all, UserInfoDTO userInfo);
	
	String deleteProc(RegisterDTO all, UserInfoDTO userInfo);
	
}
