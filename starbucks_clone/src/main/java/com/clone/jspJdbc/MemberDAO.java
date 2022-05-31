package com.clone.jspJdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private Connection con; 
	
	public MemberDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String password = "oracle";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public MemberDTO selectId(String id) {
		PreparedStatement ps;
		ResultSet rs;
		String sql = "SELECT * FROM jsp_jdbc WHERE id=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setGrade(rs.getString("grade"));
				member.setName(rs.getString("name"));
				member.setRegister_time(rs.getString("register_time"));
				return member;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	public void insert(MemberDTO member) {
		PreparedStatement ps;
		String sql = "INSERT INTO jsp_jdbc VALUES(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getId());
			ps.setString(2, member.getGrade());
			ps.setString(3, member.getName());
			ps.setString(4, member.getRegister_time());
			ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberDTO> selectAll(){
		PreparedStatement ps;
		ResultSet rs;
		String sql = "SELECT * FROM jsp_jdbc";
		ArrayList<MemberDTO> members = new  ArrayList<MemberDTO>();
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setGrade(rs.getString("grade"));
				member.setName(rs.getString("name"));
				member.setRegister_time(rs.getString("register_time"));
				members.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return members;
	}
	
	public void update(MemberDTO news) {
		PreparedStatement ps;
		String sql = "UPDATE jsp_jdbc SET pw=?, name=?, email=? WHERE id=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, news.getGrade());
			ps.setString(2, news.getName());
			ps.setString(3, news.getRegister_time());
			ps.setString(4, news.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delete(MemberDTO member) {
		PreparedStatement ps;
		String sql = "DELETE FROM jsp_jdbc WHERE id=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
