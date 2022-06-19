package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.ProductDTO;

@Repository
public interface IMenuDAO {
	int selectPrice(String p_name);
	
	int insertProduct(ProductDTO dto);
}
