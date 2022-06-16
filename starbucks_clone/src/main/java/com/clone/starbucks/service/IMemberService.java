package com.clone.starbucks.service;

import com.clone.starbucks.DTO.RegisterDTO;

public interface IMemberService {

	// 핸드폰 인증시 중복확인
	int isExistPhone(String phone);
	
	//중복확인
	public String isExistId(String id);
		
	//회원가입 
	public String memberProc(RegisterDTO member);


}
