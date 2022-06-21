package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.SaleDTO;

@Repository
public interface IMenuDAO {
	int selectPrice(String p_name);
	
	int insertProduct(ProductDTO dto);
	
	int insertSale(SaleDTO dto);
	
}
