package com.clone.starbucks.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMsrDAO;
import com.clone.starbucks.DTO.CardDTO;

@Service
public class MsrServiceImpl implements IMsrService{
	
	@Autowired private IMsrDAO msrDAO;
//	@Autowired private HttpSession session;

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
	public CardDTO eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException {
		
		
		
		//받는 사람
		if(request.getParameter("name")==null) {
			return null;
		}
		if(request.getParameter("email1")==null ||request.getParameter("email2")==null) {
			return null;
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
		
		
		return cardDTO;
	}


//	@Override
//	public void sendMail(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		
//		
//		//메일 관련 정보
//		String host = "smtp.naver.com";
//		final String username = "dbdbdbgg";
//		final String password = "afdfdf4933";
//		int port = 587;
//		
//		//메일 내용
//		String name = request.getParameter("name");
//		String email1 = request.getParameter("email1");
//		String email2 = request.getParameter("email2");
//		String reqMsg = request.getParameter("reqMsg");
//		
//		
//		String recipient = email1+"@"+email2;
//		String subject = "♬ Starbucks E-gift Card 선물이 도착하였습니다 ♬";
//		String content = name+"님 안녕하세요. 선물받은 E-gift Card가 도착하였습니다.\n\n"
//				+ "--------------------------------------------"
//				+ "카드번호 : "+""+"\n"
//				+ "핀 번호 : "+""+"\n\n"
//				+ "메세지 : "+reqMsg
//				+ "--------------------------------------------"
//				+ "* 위 정보를 스타벅스 홈페이지에서 등록해야 사용 하실 수 있습니다.\n"
//				+ "스타벅스 홈페이지 : http://localhost:8085/starbucks/my/mycard_info_input";
//		
//		Properties props = System.getProperties();
//		
//		props.put("mail.smtp.host", host);
//		props.put("mail.smtp.port", port);
//		props.put("mail.smtp.auth", "true");
//		props.put("mail.smtp.ssl.enable", "true");
//		props.put("mail.smtp.trust", host);
//		
//		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//			String un = username;
//			String pw = password;
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(un, pw);
//			}
//		});
//		
//		session.setDebug(true);
//		
//		Message mimeMessage = new MimeMessage(session);
//		mimeMessage.setFrom(new InternetAddress(recipient));
//		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
//		mimeMessage.setSubject(subject);
//		mimeMessage.setText(content);
//		Transport.send(mimeMessage);
//		
//	}
	
//	public String kakaoPay() {
//		//카카오톡 결제(메소드 만들어서 불러오기)
//				try {
//					URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
//					HttpURLConnection serverConect = (HttpURLConnection) url.openConnection();
//					serverConect.setRequestMethod("POST");
//					serverConect.setRequestProperty("Authorization", "KakaoAK 3979c78b0f234feced0d69d19282e5e2");
//					serverConect.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//					serverConect.setDoOutput(true);
//					String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8085/starbucks/&fail_url=http://localhost:8085/starbucks/msr/sceGift/gift_step1&cancel_url=http://localhost:8085/starbucks/msr/sceGift/gift_step1";
//					OutputStream ops = serverConect.getOutputStream(); //보내는애
//					DataOutputStream dops = new DataOutputStream(ops);
//					dops.writeBytes(param);
////					dops.flush(); //자기가 가지고있는것을 비운다. 전깃줄에 태워보내므로써 비움.
//					dops.close();
//					
//					int result = serverConect.getResponseCode();
//					
//					InputStream ips; //받는 애
//					if(result==200) {
//						ips = serverConect.getInputStream();
//					}else {
//						ips = serverConect.getErrorStream();
//					}
//					InputStreamReader isr = new InputStreamReader(ips);
//					BufferedReader bfrr = new BufferedReader(isr);
//					
//					String readline = bfrr.readLine();
//					return readline;
//					
//				}catch (Exception e) {
//					e.printStackTrace();
//				}
//				return "{\"result\":\"NO\"}";
//	}
//	
	
	
//----------------------------------------E-gift Card----------------------------------------------


	
}
