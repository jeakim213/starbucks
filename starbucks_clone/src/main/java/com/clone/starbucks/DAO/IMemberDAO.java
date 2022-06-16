package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.UserInfoDTO;


@Repository
public interface IMemberDAO {
	
	UserInfoDTO loginProc(UserInfoDTO member);

	UserInfoDTO selectId(String id);

	UserInfoDTO userInfo(String id);

}
