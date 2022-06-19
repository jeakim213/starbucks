package com.clone.starbucks.service;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clone.starbucks.DTO.CardDTO;

public interface IMsrService {

//----------------------------------------E-gift Card----------------------------------------------

	String card_NumMake(CardDTO cardDTO);
	String pin_NumMake(CardDTO cardDTO);
	
	CardDTO eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException;
	
//	void sendMail(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//----------------------------------------E-gift Card----------------------------------------------

}
