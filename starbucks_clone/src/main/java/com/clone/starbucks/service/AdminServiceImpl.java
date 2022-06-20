package com.clone.starbucks.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IAdminDAO;
import com.clone.starbucks.DTO.AllDTO2;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Service
public class AdminServiceImpl implements IAdminService {
	
	@Autowired private IAdminDAO adminDAO;
	@Autowired private HttpSession session;
	
	
//----------------------------------------E-coupon----------------------------------------------
	
	//영수증쿠폰(16자) 랜덤숫자 생성
	@Override
	public String receiptCoupon_NumMake(E_couponDTO ecouponDTO) {
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
		
		String receiptCoupon = firstNum + secondNum + thirdNum+ fourthNum;
	
		
		return receiptCoupon;
	}
	
	//mms쿠폰(13자) 랜덤숫자 생성
	@Override
	public String mmsCoupon_NumMake(E_couponDTO ecouponDTO) {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞, 중간 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String middleNum = ymd.substring(4,8);
		
		//뒤 마지막 코드 (랜덤 코드)
		int intLastNum = random.nextInt(100000);
		String lastNum = String.format("%05d", intLastNum);
		String mmsCoupon = firstNum + middleNum+ lastNum;
		
		return mmsCoupon;
	}

	//스타쿠폰(13자) 랜덤숫자 생성
	@Override
	public String starCoupon_NumMake(E_couponDTO ecouponDTO) {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞, 중간 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String middleNum = ymd.substring(4,8);
		
		//뒤 마지막 코드 (랜덤 코드)
		int intLastNum = random.nextInt(100000);
		String lastNum = String.format("%05d", intLastNum);
		String starCoupon = firstNum + middleNum+ lastNum;
		
		
		return starCoupon;
	}
	
	//selectNo 번호검색
//	public String selectNo(E_couponDTO ecouponDTO) throws ParseException {
//		if(ecouponDTO.getPon_category().isEmpty() ||ecouponDTO.getPon_num().isEmpty() ||ecouponDTO.getPon_name().isEmpty() || ecouponDTO.getPon_startdate()==null || ecouponDTO.getPon_enddate()==null || ecouponDTO.getPon_used()==0 || ecouponDTO.getPon_usedate()==null || ecouponDTO.getPon_cash()==0) {
//			return "정보가 빈곳이 있습니다. 입력하세요.";
//		}
//		E_couponDTO check = adminDAO.selectNo(ecouponDTO.getPon_no());
//
//		if(check!=null && ecouponDTO.getPon_no()==check.getPon_no()) {
//			session.setAttribute("pon_category", check.getPon_category());
//			session.setAttribute("pon_num", check.getPon_num());
//			session.setAttribute("pon_name", check.getPon_name());
//			session.setAttribute("pon_startdate", check.getPon_startdate());
//			session.setAttribute("pon_enddate", endDate(ecouponDTO));
//			session.setAttribute("pon_used", check.getPon_used());
//			session.setAttribute("pon_usedate", check.getPon_usedate());
//			session.setAttribute("pon_cash", check.getPon_cash());
//			return "등록 완료";
//		}
//		return "등록 실패";
//	}

	
	//쿠폰 insert
	@Override
	public String eCouponProc(E_couponDTO eCouponDTO, HttpServletRequest request) throws ParseException {
		/*
		create table e_coupon(
		pon_no number not null primary key,												△ <<mapper에서 
		pon_category char(7) check(pon_category in ('receipt','mms','star')) not null,	O
		pon_num varchar2(20) not null unique,											O
		pon_name varchar2(50) not null,													O
		pon_startdate date default sysdate not null,									O
		pon_enddate date default sysdate+30 not null,									O
		pon_used char(1) check(pon_used in ('Y','N')) not null,							O
		pon_usedate date default sysdate null,											X
		pon_cash number not null														O
		);
		*/
		
		//pon_no
		
		
		//입력받아오는 네개의 정보
		//카테고리(pon_category)
		if(eCouponDTO.getPon_category().isEmpty() || eCouponDTO.getPon_category()==null) {
			return "카테고리를 선택해야 합니다.";
		}
		//쿠폰이름(pon_name)
		if(eCouponDTO.getPon_name().isEmpty() || eCouponDTO.getPon_name()==null) {
			return "쿠폰이름을 입력하세요.";
		}
		//쿠폰시작날짜(pon_startdate)
		if(eCouponDTO.getPon_startdate()==null) {
			return "쿠폰 시작 날짜를 선택해야 합니다.";
		}
		//쿠폰 금액(pon_cash)
		if(request.getParameter("pon_cash")=="" || request.getParameter("pon_cash")==null) {
			eCouponDTO.setPon_cash(0);
			return "쿠폰 금액을 입력해야합니다.";
		}
		
		
		
		
		//startdate 형식 변경후 dto에 저장
//		String dateStr = strYear+"-"+strMonth+"-"+strDate;
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		Date enddate = formatter.parse(dateStr);
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strSD = sdf.format(eCouponDTO.getPon_startdate());
		
		System.out.println(eCouponDTO.getPon_category());
		System.out.println(eCouponDTO.getPon_name());
		System.out.println("시작날짜 : " + eCouponDTO.getPon_startdate());
		System.out.println("끝날짜 : "+endDate(eCouponDTO));
		String cashStr = request.getParameter("pon_cash");
		int cash = Integer.parseInt(cashStr);
		eCouponDTO.setPon_cash(cash);
		System.out.println("금액 : "+eCouponDTO.getPon_cash());
		
		
		//쿠폰 카테고리 확인해서 번호 입력 (pon_num)
		if(eCouponDTO.getPon_category().equals("receipt")) {
			eCouponDTO.setPon_num(receiptCoupon_NumMake(eCouponDTO));
		}else if(eCouponDTO.getPon_category().equals("mms")) {
			eCouponDTO.setPon_num(mmsCoupon_NumMake(eCouponDTO));
		}else if(eCouponDTO.getPon_category().equals("star")) {
			eCouponDTO.setPon_num(starCoupon_NumMake(eCouponDTO));
		}else {
			return "카테고리를 선택해야합니다.";
		}
		
		//쿠폰의 끝 날짜(pon_endDate)
		eCouponDTO.setPon_enddate(endDate(eCouponDTO));
		
		//쿠폰 사용했는지 안했는지(pon_used)
		eCouponDTO.setPon_used('N');
		
		//insert
		adminDAO.insertEcoupon(eCouponDTO);
		
		return "완료";
	}
	
	
	//끝날짜 계산
	@Override
	public Date endDate(E_couponDTO ecouponDTO) throws ParseException{
		//E_couponDTO check = adminDAO.selectNo(ecouponDTO.getPon_no());
		
		SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
		SimpleDateFormat sdfMonth = new SimpleDateFormat("MM");
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd");
		Date date = ecouponDTO.getPon_startdate();
		String strYear = sdfYear.format(date);
		String strMonth = sdfMonth.format(date);
		String strDate = sdfDate.format(date);
		int intMonth = Integer.parseInt(strMonth);
		int intDate = Integer.parseInt(strDate);
		
		switch(intMonth) {
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:{
				if(intDate+30>31) {
					intDate = intDate+30-31;
					intMonth += 1;
				}else {
					intDate = intDate+30;
				}
				break;
			}
		case 2:{
			if(intDate==29) {
				intDate = intDate+30-29;
				intMonth+=1;
				break;
			}else {
				intDate= intDate+30-28;
				intMonth+=1;
				break;
			}
			}
		case 4: case 6: case 9: case 11:{
				intMonth+=1;
				break;
			}
		}
		
		strMonth = String.valueOf(intMonth);
		strDate = String.valueOf(intDate);
		
		String dateStr = strYear+"-"+strMonth+"-"+strDate;
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date enddate = formatter.parse(dateStr);
		return enddate;
	}



//----------------------------------------E-coupon----------------------------------------------

	
	
	//목록
	@Override
	public void memberListForm(int currentPage, String select, String search) {
		int pageBlock = 5; //한 화면에 보여줄 데이터 수
		int totalCount = adminDAO.memberCount(); //총 데이터의 수 
		int end = currentPage * pageBlock; //데이터의 끝 번호
		int begin = end+1 - pageBlock; //데이터의 시작 번호
		
		ArrayList<RegisterDTO> list = adminDAO.memberListForm(begin, end, select, search);
		session.setAttribute("list", list);
		String url = "/starbucks/admin/memberListForm?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	//정보
	@Override
	public AllDTO2 userInfoForm(String id) {
		RegisterDTO reg = adminDAO.userInfoForm(id);
		UserInfoDTO user = adminDAO.info(id);
		AllDTO2 all = new AllDTO2();
		if (reg != null) {
			all.setId(reg.getId());
			all.setName(reg.getName());
			all.setPhone(reg.getPhone());
			all.setEmail(reg.getEmail());
			all.setBirth_year(reg.getBirth_year());
			all.setBirth_month(reg.getBirth_month());
			all.setBirth_day(reg.getBirth_day());
			all.setGender(reg.getGender());
			all.setEvent_sms(reg.getEvent_sms());
			all.setEvent_e(reg.getEvent_e());
		}
		if (user != null) {
			all.setStar(user.getStar());
			all.setGrade(user.getGrade());
			all.setNickname(user.getNickname());
			all.setCupreward(user.getCupreward());
		}
		return all;
	}
	
//	@Value("${ADMIN:admin}")
//	private String adminAccount;
	
	//수정
	@Override
	public String memberModifyForm(AllDTO2 all) {
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//
		AllDTO2 oldUserInfo = (AllDTO2) session.getAttribute("all");
		if (all.getName() != "") {
			RegisterDTO reg = all;
			adminDAO.updateReg(reg);
		}
		if (all.getNickname() != "") {
			UserInfoDTO user = all;
//			UserInfoDTO user = new UserInfoDTO();
			user.setNickname(all.getNickname());
			user.setStar(all.getStar());
			user.setGrade(all.getGrade());
			user.setCupreward(all.getCupreward());
			adminDAO.updateUser(user);
		}
		return "회원 수정";
	}
	
	@Override
	public String deleteProc(UserInfoDTO user) {

		// 세션 아이디로 비밀번호 확인(일반사용자 또는 관리자 계정)
//		String id = (String) session.getAttribute("id");

//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		UserInfoDTO login = adminDAO.userPassword(id);
		
		// 계정 삭제
		String Id = (String)session.getAttribute("Id");
		adminDAO.deleteLogin(Id);
		
		// 관리자 계정과 로그인된 계정이 다르거나 관리자 계정과 수정계정이 같으면 세션 삭제
//		if(adminAccount.equals(id) == false || adminAccount.equals(Id))
//			session.invalidate();
		return "회원 삭제 완료";
	}
	
}
