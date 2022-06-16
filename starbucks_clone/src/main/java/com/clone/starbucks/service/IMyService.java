package com.clone.starbucks.service;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.CardDTO;

public interface IMyService {
	
	//my
	String cardRegisterProc(CardDTO cardDTO, HttpServletRequest request);
	
}
