package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.CardDTO;

@Repository
public interface IMyDAO {
	//my
	
	CardDTO c_numCheck(String c_num);
	
	String nameFind(String c_num);
	
	int updateCard(CardDTO cardDTO);
	
	int cMaster1Bool(String id); 
	
	String cMaster1Num(String id);
	
	
}
