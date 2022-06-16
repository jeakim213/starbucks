package com.clone.starbucks.service;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import com.clone.starbucks.DTO.CardDTO;

public interface IMsrService {

//----------------------------------------E-gift Card----------------------------------------------

	String card_NumMake(CardDTO cardDTO);
	String pin_NumMake(CardDTO cardDTO);
	
	String eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException;
	
//----------------------------------------E-gift Card----------------------------------------------

}
