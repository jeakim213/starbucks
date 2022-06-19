package com.clone.starbucks.service;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IMyService {
	
	//my
	String cardRegisterProc(CardDTO cardDTO, HttpServletRequest request);
	
	String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, HttpServletRequest request);
}
