package com.clone.starbucks.DTO;

public class AllDTO2 extends RegisterDTO {
	
	private int star;			// 별 [default 0]
	private String grade;		// 등급 [not null, check, default wc]
	private String nickname;	// 닉네임
	private String cupreward;	// 에코컵리워드 설정 [not null, check, default s]

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
	
}
