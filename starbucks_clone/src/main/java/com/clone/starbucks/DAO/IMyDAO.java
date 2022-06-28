package com.clone.starbucks.DAO;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;


@Repository
public interface IMyDAO {
	
	CardDTO c_numCheck(String c_num);
	
	String nameFind(String c_num);
	
	int updateCard(CardDTO cardDTO);
	
	int cMaster1Bool(String id); 
	
	String cMaster1Num(String id);

	int masterBool(String c_num);
	
	int countC_num(String id);
	
	int remainUpdate(CardDTO check);
	
	E_couponDTO pon_numCheck(String pon_num);
	
	int idUpdate(E_couponDTO ecouponDTO);
	
	int useCoupon(String pon_no);

	ArrayList<CardDTO> cardList(String id);

	int N_M_update(CardDTO cardDTO);

	int masterUpdate(String id);
	
	int couponCount(String id);
	
	
	//---------------------------------
	// my index - 예은
	
	int userCard(String id);
	
	int userCoupon(String string);

	int updateStar(UserInfoDTO user);
	
	AllDTO userAllInfo(String id);

	int useCouponCount(String id);
}
