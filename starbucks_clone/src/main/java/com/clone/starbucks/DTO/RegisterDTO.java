package com.clone.starbucks.DTO;

/*
create table register(
id varchar2(30) not null,
registerdate date default sysdate not null,
phone varchar2(15) unique not null,
email varchar2(50) unique not null,
birthyear number not null,
birthmonth number not null,
birthday number not null,
gender char(1) check(gender in ('M','F')) not null,
event_e char(1) check(event_e in ('Y','N')) not null,
event_SMS char(1) check(event_SMS in ('Y','N')) not null
);

===== fk =====
alter table register add foreign key(id) references userinfo(id);


*/

import java.sql.Date;

public class RegisterDTO {
	
	private String id;	// 아이디 [fK, not null]
	private Date registerdate; // 가입일자 [not null, sysdate]
	private String phone;	// 전화번호 [not null, unique]
	private String email;	// 이메일 [not null, unique]
	private int birthyear;	// 생년	[not null]
	private int birthmonth;	// 생월	[not null]
	private int birthday;	// 생일	[not null]
	private char gender;	// 성별 [not null, check]
	private char event_e;	// 이벤트수신허용 - 이메일 [not null, check]
	private char event_sms;	// 이벤트수신허용 - sms [not null, check]

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBirthyear() {
		return birthyear;
	}
	public void setBirthyear(int birthyear) {
		this.birthyear = birthyear;
	}
	public int getBirthmonth() {
		return birthmonth;
	}
	public void setBirthmonth(int birthmonth) {
		this.birthmonth = birthmonth;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public char getEvent_e() {
		return event_e;
	}
	public void setEvent_e(char event_e) {
		this.event_e = event_e;
	}
	public char getEvent_sms() {
		return event_sms;
	}
	public void setEvent_sms(char event_sms) {
		this.event_sms = event_sms;
	}
	
	
}
