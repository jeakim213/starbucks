package com.clone.starbucks.service;

import java.util.HashMap;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IMemberService {
	
	//로그인버튼 클릭시
	String loginProc(UserInfoDTO member);
	public String getAccessToken(String code);
	public HashMap<String, Object> getUserInfo(String accessToken);
	
	//로그아웃
	public void logout(String accessToken);
	
	UserInfoDTO userInfo(String id);


		
}
