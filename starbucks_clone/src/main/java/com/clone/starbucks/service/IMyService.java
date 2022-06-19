package com.clone.starbucks.service;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IMyService {
	
	//my
	String cardRegisterProc(CardDTO cardDTO, HttpServletRequest request);

	boolean isExistCard(UserInfoDTO userInfo, CardDTO cardDTO);

	AllDTO userAllInfo(String id);
	
	String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, HttpServletRequest request);
}
