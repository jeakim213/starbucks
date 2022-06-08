package com.clone.starbucks.DTO;


/*
create table product(
p_category1 char(10) not null,
p_category2 varchar2(30) not null,
p_name varchar2(50) not null primary key,
p_price number not null
);
*/


import java.sql.Date;

public class productDTO {
	
	private char p_category1;	// 상품 카테고리1(ex. 커피, 음식, 상품, 카드) [not null]
	private String p_category2;	// 상품 카테고리2(ex. 콜드브루, etc(커스텀, 카드충전금액, 컵사이즈....)) [not null]
	private String p_name;	// 상품 이름 [not null]
	private int p_price;	// 상품 가격 [not null]
	
	
	public char getP_category1() {
		return p_category1;
	}
	public void setP_category1(char p_category1) {
		this.p_category1 = p_category1;
	}
	public String getP_category2() {
		return p_category2;
	}
	public void setP_category2(String p_category2) {
		this.p_category2 = p_category2;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
	
	
	
	
}
