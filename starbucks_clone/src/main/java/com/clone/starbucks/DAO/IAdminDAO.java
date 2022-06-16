package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.E_couponDTO;

@Repository
public interface IAdminDAO {
	
	//coupon 발급
	void insertEcoupon(E_couponDTO eCoupon);
	
	E_couponDTO selectNo(int pon_no);
}
