package com.clone.starbucks.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
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
	
//----------------------------------------E-gift Card 등록----------------------------------------------
	
	//----------my/index
		
		// 카드 여부 확인으로 index 열기
		@Override
		public boolean isExistCard(UserInfoDTO userInfo, CardDTO cardDTO) {
			session.setAttribute("id", "admin");
			
			String id = (String) session.getAttribute("id");
			
			int cardCount = myDAO.userCard(id);
			
			if(cardCount == 0 ) {
				return false;
			}
			return true;
		}
	
		
		@Override
		public AllDTO userAllInfo(String id) {
	
			AllDTO user = myDAO.userAllInfo(id);

			return user;
		}

	
}
