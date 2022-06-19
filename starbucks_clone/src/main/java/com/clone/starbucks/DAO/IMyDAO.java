package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Repository
public interface IMyDAO {
	//my
	
	CardDTO c_numCheck(String c_num);
	
	String nameFind(String c_num);
	
	int updateCard(CardDTO cardDTO);
	
	int cMaster1Bool(String id); 
	
	String cMaster1Num(String id);
	
	//---------------------------------
	
	E_couponDTO pon_numCheck(String pon_num);
	
	int idUpdate(E_couponDTO ecouponDTO);
	
//	Integer pon_noFind(String pon_num);
//	
//	int updatePon_no(int pon_no);
//	
//	int updateUser(UserInfoDTO userInfoDTO);
	
	
}
