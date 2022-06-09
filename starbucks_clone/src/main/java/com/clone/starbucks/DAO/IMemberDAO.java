package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.MemberDTO;


@Repository
public interface IMemberDAO {
	
	MemberDTO loginProc(MemberDTO member);

	public String isExistId(String id);

	MemberDTO selectId(String id);

}
