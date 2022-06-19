package com.clone.starbucks.service;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.AllDTO2;
import com.clone.starbucks.DTO.E_couponDTO;
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



	public void memberListForm(int currentPage, String select, String search);
	
	public AllDTO2 userInfoForm(String id);
	
	public String memberModifyForm(AllDTO2 all);

//	public boolean deleteAndCheckProc(UserInfoDTO check);
	
	public String deleteProc(UserInfoDTO user);
	
}
