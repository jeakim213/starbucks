package com.clone.starbucks.service;

import java.util.HashMap;
import com.clone.starbucks.DTO.MemberDTO;

public interface IMemberService {
	
	public String loginProc(MemberDTO member);
	public String getAccessToken(String code);
	public HashMap<String, Object> getUserInfo(String accessToken);
	
	//중복확인
	public String isExistId(String id);
	
	//로그아웃
	public void logout(String accessToken);


		
}
