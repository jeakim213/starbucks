package com.clone.starbucks.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMsrDAO;
import com.clone.starbucks.DTO.CardDTO;

@Service
public class MsrServiceImpl implements IMsrService{
	
	@Autowired private IMsrDAO msrDAO;
	@Autowired private HttpSession session;

//----------------------------------------E-gift Card----------------------------------------------	
	
	//카드번호 생성
	@Override
	public String card_NumMake(CardDTO cardDTO) {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞 첫번째, 두번째 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String secondNum = ymd.substring(4,8);
		
		//뒤 세번째, 네번째 코드 (랜덤 코드)
		int intThirdNum = random.nextInt(10000);
		String thirdNum = String.format("%04d", intThirdNum);
		int intFourthNum = random.nextInt(10000);
		String fourthNum = String.format("%04d", intFourthNum);
		
		String cardNum = firstNum + secondNum + thirdNum+ fourthNum; 
		return cardNum;
	}
	
//	@Override
//	public String selectNo(E_couponDTO ecouponDTO) throws ParseException {
//	if(ecouponDTO.getPon_category().isEmpty() ||ecouponDTO.getPon_num().isEmpty() ||ecouponDTO.getPon_name().isEmpty() || ecouponDTO.getPon_startdate()==null || ecouponDTO.getPon_enddate()==null || ecouponDTO.getPon_used()==0 || ecouponDTO.getPon_usedate()==null || ecouponDTO.getPon_cash()==0) {
//		return "정보가 빈곳이 있습니다. 입력하세요.";
//	}
//	E_couponDTO check = adminDAO.selectNo(ecouponDTO.getPon_no());
//
//	if(check!=null && ecouponDTO.getPon_no()==check.getPon_no()) {
//		session.setAttribute("pon_category", check.getPon_category());
//		session.setAttribute("pon_num", check.getPon_num());
//		session.setAttribute("pon_name", check.getPon_name());
//		session.setAttribute("pon_startdate", check.getPon_startdate());
//		session.setAttribute("pon_enddate", endDate(ecouponDTO));
//		session.setAttribute("pon_used", check.getPon_used());
//		session.setAttribute("pon_usedate", check.getPon_usedate());
//		session.setAttribute("pon_cash", check.getPon_cash());
//		return "등록 완료";
//	}
//	return "등록 실패";
//	}	
	
	
	//핀번호 생성
	@Override
	public String pin_NumMake(CardDTO cardDTO) {
		Random random = new Random();
		int codeNum = random.nextInt(1000000);
		String pinCode = String.format("%06d", codeNum);
	
		return pinCode;
	}
	

	// 선물하기 페이지 정보 DB에 넣기
	@Override
	public String eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException {
		
		//삭제..할지말지 고민
		session.setAttribute("eGift_name", request.getParameter("name"));
		session.setAttribute("eGift_email1", request.getParameter("email1"));
		session.setAttribute("eGift_email2", request.getParameter("email2"));
		session.setAttribute("eGift_message", request.getParameter("reqMsg"));
		
		
		
		
		
		//받는 사람
		if(request.getParameter("name").isEmpty() || request.getParameter("name")==null) {
			return "받는 사람의 이름을 입력하셔야 합니다.";
		}
		if(request.getParameter("email1").isEmpty() || request.getParameter("email1")==null ||request.getParameter("email2").isEmpty() || request.getParameter("email2")==null) {
			return "이메일은 모두 입력하셔야 합니다.";
		}
		
		//카드 선택 << 기본선택 2022 Cherry Blossom
		
		//메세지 입력 << 기본적으로 null허용
		
		//금액 선택 << 기본선택 1만원
		
		//결제수단 선택 << 기본선택 카카오페이
		
		//카드 선물받은 날짜 넣기
		Date date = new Date(); //카드선물 받은 날짜는 현재 지금 날짜로
		cardDTO.setC_saledate(date);
		
		//카드 번호 넣기(랜덤)
		cardDTO.setC_num(card_NumMake(cardDTO));
		
		//핀 번호 넣기(랜덤)
		cardDTO.setC_pin(pin_NumMake(cardDTO));
		
		
		//insert
		msrDAO.insertEgift(cardDTO);
		
		
		return "완료";
	}
//----------------------------------------E-gift Card----------------------------------------------


	
}
