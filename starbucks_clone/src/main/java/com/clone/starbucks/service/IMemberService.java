package com.clone.starbucks.service;

<<<<<<< HEAD
import com.clone.starbucks.DTO.RegisterDTO;

public interface IMemberService {
=======
import java.util.HashMap;
import com.clone.starbucks.DTO.MemberDTO;
>>>>>>> branch 'main' of https://github.com/jeakim213/stabucks.git

<<<<<<< HEAD
	// 핸드폰 인증시 중복확인
	int isExistPhone(String phone);
	
	//중복확인
	public String isExistId(String id);
		
	//회원가입 
	public String memberProc(RegisterDTO member);


=======
public interface IMemberService {
	
	public String loginProc(MemberDTO member);
	public String getAccessToken(String code);
	public HashMap<String, Object> getUserInfo(String accessToken);
	
	//중복확인
	public String isExistId(String id);
	
	//로그아웃
	public void logout(String accessToken);


		
>>>>>>> branch 'main' of https://github.com/jeakim213/stabucks.git
}
