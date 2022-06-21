package com.clone.starbucks.DTO;

import java.util.Date;

/*create table custom(
id varchar2(30) not null,
p_name varchar2(50) not null,
cus_nickname varchar2(50),
cus_date date default sysdate not null,
cus_op varchar2(100)
);

alter table custom add foreign key(id) references userinfo(id);
alter table custom add foreign key(p_name) references product(p_name);*/

public class CustomDTO {
	private String id;
	private String p_name;
	private String cus_nickname;
	private Date cus_date;
	private String cus_op;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getCus_nickname() {
		return cus_nickname;
	}
	public void setCus_nickname(String cus_nickname) {
		this.cus_nickname = cus_nickname;
	}
	public Date getCus_date() {
		return cus_date;
	}
	public void setCus_date(Date cus_date) {
		this.cus_date = cus_date;
	}
	public String getCus_op() {
		return cus_op;
	}
	public void setCus_op(String cus_op) {
		this.cus_op = cus_op;
	}
	
}
