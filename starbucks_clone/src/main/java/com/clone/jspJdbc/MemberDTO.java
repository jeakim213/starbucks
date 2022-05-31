package com.clone.jspJdbc;
/*

CREATE TABLE jsp_jdbc(
id varchar2(20),
grade varchar2(20),
name varchar2(20),
register_time varchar2(40)
);

create table jsp_jdbc(
id varchar2(20) primary key,
grade varchar2(20),
name varchar2(20),
register_time varchar2(20)
);

Table created.

 */
public class MemberDTO {
	private String id;
	private String grade;
	private String name;
	private String register_time;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegister_time() {
		return register_time;
	}
	public void setRegister_time(String register_time) {
		this.register_time = register_time;
	}
	
	
}
