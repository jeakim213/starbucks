package com.clone.starbucks.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMemberDAO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;


@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired private IMemberDAO memberDao;
	@Autowired private HttpSession session;
	
	@Override
	public int isExistPhone(String phone) {
		if(phone == null)
			return 1;
		int count = memberDao.isExistPhone(phone);
		if(count >= 1)
			return 0;
		return 1;
	}

	@Override
	public String isExistId(String id) {
		
		if(id == null)
			return "아이디를 입력 후 다시 시도하세요.";
		int count = memberDao.isExistId(id);
		//System.out.println("count : " + count);
		if(count == 1)
			return "중복 아이디 입니다.";
		
		return "사용 가능한 아이디입니다.";
	}
	

	@SuppressWarnings("unlikely-arg-type")
	@Override
	public String memberProc(RegisterDTO member) {
		UserInfoDTO userinfo = member;
		
		/*
		 * System.out.println("service"); System.out.println(userinfo.getId());
		 * System.out.println(userinfo.getPw());
		 * System.out.println(userinfo.getNickname());
		 * 
		 * System.out.println("============"); System.out.println(member.getId());
		 * System.out.println(member.getName()); System.out.println(member.getPhone());
		 * System.out.println(member.getEmail());
		 * System.out.println(member.getBirth_year());
		 * System.out.println(member.getBirth_month());
		 * System.out.println(member.getBirth_day());
		 * System.out.println(member.getGender());
		 * System.out.println(member.getEvent_e());
		 * System.out.println(member.getEvent_sms());
		 */
		

		if(userinfo.getId() == null || userinfo.getId().isEmpty())
			return "아이디를 입력하세요.";
		if(userinfo.getPw() == null || userinfo.getPw().isEmpty())
			return "비밀번호를 입력하세요.";
		if(memberDao.isExistId(userinfo.getId()) > 0)
			return "중복 아이디 입니다.";
		
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(userinfo.getPw());
		userinfo.setPw(securePw);
		
		memberDao.insertUserInfo(userinfo);
		
		
		memberDao.insertMember(member);

		
		
		return "가입 완료";
	}


}
