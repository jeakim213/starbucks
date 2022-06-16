package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
=======
import com.clone.starbucks.DTO.MemberDTO;

>>>>>>> branch 'main' of https://github.com/jeakim213/stabucks.git

@Repository
public interface IMemberDAO {
	
	MemberDTO loginProc(MemberDTO member);

	public String isExistId(String id);

	MemberDTO selectId(String id);

	int isExistPhone(String phone);
	
	int isExistId(String id);
	
	void insertMember(RegisterDTO member);

	void insertUserInfo(UserInfoDTO userinfo);

}
