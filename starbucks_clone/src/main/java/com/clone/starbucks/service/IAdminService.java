package com.clone.starbucks.service;

import java.text.ParseException;
import java.util.Date;

import com.clone.starbucks.DTO.E_couponDTO;

public interface IAdminService {
//----------------------------------------E-coupon----------------------------------------------	
		String receiptCoupon_NumMake(E_couponDTO ecouponDTO);
		String mmsCoupon_NumMake(E_couponDTO ecouponDTO);
		String starCoupon_NumMake(E_couponDTO ecouponDTO);
		
		String eCouponProc(E_couponDTO ecouponDTO) throws ParseException;
		
		//String selectNo(E_couponDTO ecouponDTO) throws ParseException;
		
		Date endDate(E_couponDTO ecouponDTO) throws ParseException;
		
//----------------------------------------E-coupon----------------------------------------------	
}
