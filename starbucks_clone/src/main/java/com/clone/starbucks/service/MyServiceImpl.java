package com.clone.starbucks.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Service
public class MyServiceImpl implements IMyService {
	
	@Autowired private IMyDAO myDAO;
	@Autowired private HttpSession session;
	

//----------------------------------------E-gift Card 등록----------------------------------------------		
	@Override
	public String cardRegisterProc(CardDTO cardDTO, HttpServletRequest request) {
		
		session.setAttribute("id", "쭈고");
		
		String cardNum = request.getParameter("c_num1")+request.getParameter("c_num2")+request.getParameter("c_num3")+request.getParameter("c_num4");
		//cardDTO.setC_num(cardNum);
		CardDTO check = myDAO.c_numCheck(cardNum);
		
		
		//카드번호랑 핀번호 맞는지
		//카드번호 맞는지
		if(cardNum.equals(check.getC_num())==false) {
			return "등록실패";
		}
		
		cardDTO.setC_num(cardNum);
		
		//핀번호 맞는지
		if(cardDTO.getC_pin().equals(check.getC_pin())==false) {
			return "등록실패";
		}
		
		//아이디가 null인지
		if(check.getId()==null) {
			
			//id 널이면 등록...?
			//주카드아이디 검색
			String strId = String.valueOf(session.getAttribute("id")); 
			System.out.println("strId : "+strId);
			cardDTO.setId(strId);
			
			//카드명 업데이트
			String oldName = myDAO.nameFind(cardNum);
			if(cardDTO.getC_name()!="") {
				cardDTO.setC_name(cardDTO.getC_name());
			}else {
				cardDTO.setC_name(oldName);
			}
			
			//핀번호 입력한 값이랑 저장되어있는 DTO값일랑 같은지 확인.
			if(check.getC_pin().equals(cardDTO.getC_pin())) {
				cardDTO.setC_pin(check.getC_pin());
			}else {
				return "등록실패";
			}
			
			
			//System.out.println("strId : " + strId);
			int masterCheck = myDAO.cMaster1Bool(strId);
			//System.out.println("1인가요? : "+masterCheck);
			
			if(masterCheck==1) {
				String cMaster1CardNum = myDAO.cMaster1Num(strId);
				check = myDAO.c_numCheck(cMaster1CardNum);
				check.setC_master(0);
				myDAO.updateCard(check);
			}
					
			//4. DTO설정 업데이트
			myDAO.updateCard(cardDTO);
			
		}else {
			return "등록실패";
		}

		
		return "등록완료";
	}


	@Override
	public String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, HttpServletRequest request) {
		session.setAttribute("id", "쭈고");
		//1. 영수증 쿠폰인지, mms 쿠폰인지, star 쿠폰인지 구별.. (check박스가 아니기에 실패)
		//2. 각각 선택지의 input 값 받아오기
		String receipt_num = request.getParameter("rptcoupon_num1")+request.getParameter("rptcoupon_num2")+request.getParameter("rptcoupon_num3")+request.getParameter("rptcoupon_num4");
		String mms_num = request.getParameter("coupon_num1")+request.getParameter("coupon_num2")+request.getParameter("coupon_num3");
		String star_num = request.getParameter("starcoupon_num1")+request.getParameter("starcoupon_num2")+request.getParameter("starcoupon_num3");
		
		
		//3. pon_number로 eCouponDTO에서 검색해서 pon_no를 불러온다 select
		
		if(receipt_num!="" && mms_num=="" && star_num=="") {
			System.out.println("rc_num : "+receipt_num);
			E_couponDTO check = myDAO.pon_numCheck(receipt_num);
			if(receipt_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(receipt_num);
			if(check.getId()==null) {
				//아이디 저장
				String strId = String.valueOf(session.getAttribute("id")); 
				System.out.println("strId : "+strId);
				eCouponDTO.setId(strId);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
				myDAO.idUpdate(eCouponDTO);
			}
		}else if(receipt_num=="" && mms_num!="" && star_num=="") {
			System.out.println("mc_num : "+mms_num);
			E_couponDTO check = myDAO.pon_numCheck(mms_num);
			if(mms_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(mms_num);
			if(check.getId()==null) {
				//아이디 저장
				String strId = String.valueOf(session.getAttribute("id")); 
				System.out.println("strId : "+strId);
				eCouponDTO.setId(strId);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
				myDAO.idUpdate(eCouponDTO);
			}
		}else if(receipt_num =="" && mms_num=="" &&star_num!="") {
			System.out.println("sc_num : "+star_num);
			E_couponDTO check = myDAO.pon_numCheck(star_num);
			if(star_num.equals(check.getPon_num())==false) {
				return "등록실패";
			}
			eCouponDTO.setPon_num(star_num);
			if(check.getId()==null) {
				//아이디 저장
				String strId = String.valueOf(session.getAttribute("id")); 
				System.out.println("strId : "+strId);
				eCouponDTO.setId(strId);
				System.out.println("1인가요 ? : "+myDAO.idUpdate(eCouponDTO));
				myDAO.idUpdate(eCouponDTO);
			}
		}
		
		return "등록완료";
	}
	
//----------------------------------------E-gift Card 등록----------------------------------------------	
}
