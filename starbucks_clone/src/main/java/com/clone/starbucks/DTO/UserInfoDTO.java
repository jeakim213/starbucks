package com.clone.starbucks.DTO;

/*
create table userinfo(
id varchar2(30) not null primary key,
pw varchar2(60) not null,
star number,
grade char(2) check(grade in ('WC','GR','GD')) not null,
nickname varchar2(50),
cupreward char(1) check(cupreward in('S','D')) not null,
DTPass varchar2(50),
pon_no number
);

insert into userinfo values('admin', '1234', 9, 'GD', 'master', 'D', '1111', '1');
insert into userinfo values('user1', '1111', 2, 'GR', '가나', 'S', '2222', '2');
insert into userinfo values('user2', '2222', '1', 'WC', '다라', 'S', '3333', '3');
insert into userinfo values('user3', '3333', '1', 'WC', '마바', 'S', '4444', '4');
insert into userinfo values('user4', '4444', '1', 'WC', '사아', 'S', '5555', '5');
insert into userinfo values('user5', '5555', '1', 'WC', '자차', 'S', '6666', '6');

===== default =====
alter table userinfo modify star default 0;
alter table userinfo modify grade default 'WC';
alter table userinfo modify cupreward default 'S';

===== sequence ===
create sequence pon_no
INCREMENT BY 1
START WITH 0001
MINVALUE 0001
MAXVALUE 9999
CYCLE
NOCACHE
ORDER;

===== fk =====
alter table userinfo add foreign key(pon_no) references e_coupon(pon_no);
*/

public class UserInfoDTO {
	
	private String id;			// 아이디 [PK, not null]
	private String pw;			// 비밀번호 [not null]
	private String confirmPw;	// DB X
	private int star;			// 별 [default 0]
	private String grade;		// 등급 [not null, check, default wc]
	private String nickname;	// 닉네임
	private String cupreward;	// 에코컵리워드 설정 [not null, check, default s]
	private String DTPass;		// 드라이브스루 패스 등록
	private int pon_no; 		// 쿠폰 넘버 [FK]
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getConfirmPw() {
		return confirmPw;
	}
	public void setConfirmPw(String confirmPw) {
		this.confirmPw = confirmPw;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCupreward() {
		return cupreward;
	}
	public void setCupreward(String cupreward) {
		this.cupreward = cupreward;
	}
	public String getDTPass() {
		return DTPass;
	}
	public void setDTPass(String dTPass) {
		DTPass = dTPass;
	}
	public int getPon_no() {
		return pon_no;
	}
	public void setPon_no(int pon_no) {
		this.pon_no = pon_no;
	}
	
}