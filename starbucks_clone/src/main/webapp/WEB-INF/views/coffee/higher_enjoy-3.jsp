<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

	<head>
		








<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type" content="website">
<meta property="og:title" content="Starbucks">
<meta property="og:url" content="https://www.starbucks.co.kr/">
<meta property="og:image" content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title> <!-- 220117 수정 -->
<link rel="shortcut icon" href="common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="common/css/reset.css" rel="stylesheet">
<link href="common/css/style.css?v=210721" rel="stylesheet">
<link href="common/css/jquery.bxslider.css" rel="stylesheet">
<link href="common/css/idangerous.swiper.css" rel="stylesheet">
<link href="common/css/idangerous.swiper.scrollbar.css" rel="stylesheet">
<link href="common/css/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="common/css/jquery.scrollbar.css" rel="stylesheet">
<link href="common/css/jquery-ui.css" rel="stylesheet">
<link href="common/css/ezmark.css" rel="stylesheet">
<link href="common/css/style_dt.css?v=20191211" rel="stylesheet"> <!-- 20191211 수정 -->

<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<link href="/common/css_ie/style.css" rel="stylesheet">
	<script>
		document.createElement('header');
		document.createElement('nav');
		document.createElement('section');
		document.createElement('figure');
		document.createElement('article');
		document.createElement('aside');
		document.createElement('footer');
	</script>
<![endif]-->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66158138-1', 'auto');
  ga('send', 'pageview');
</script>





<script type="text/javascript">
var eFrequencyYn = 'Y';
var eFrequencySeq = '172';
var eFrequencyPlannerYn = 'Y';
</script>

		<!--<link href="/common/css/style_coffee.css" rel="stylesheet">-->
		<link href="common/css/style_coffee_new.css?v=210917" rel="stylesheet"> <!--   이 페이지에서만 이 css 연결해주세요..  -->
		<!--[if lt IE 9]>
		<link href="/common/css_ie/style_main.css" rel="stylesheet">
		<link href="/common/css_ie/style_coffee.css" rel="stylesheet">
		<![endif]-->
	</head>


	<body>
		<div id="wrap">
			
				
<script>
//appId      : '1012019678818238',
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '179159949450639',
      xfbml      : true,
      version    : 'v2.4'
    });
  };

	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/ko_KR/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
  
</script>


<!-- 접근성_20171106 건너뛰기 링크  추가 -->
	<div id="skip-menu">
	  <a href="#gnb">메뉴바로가기</a>
	  <a href="#container">콘텐츠 바로가기</a>
	</div>
<!-- 접근성_20171106 건너뛰기 링크  추가 끝 -->
	

<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 -->

			

<!-- 로그인 팝업 위치 이슈로 인해 위치 변경 -->
<!-- 150617 로그인 레이어 팝업 추가 - 문진욱 end -->




<!-- MSR 영역 -->




			
			<!-- MSR 영역 -->
			<div id="top_MSR" class="eFreqTop"><!-- 20170510 수정 : 클래스 eFreqTop 추가 -->
				<div class="top_msr_wrap" style="display:none;">
					<!-- 유저인포 -->
					<div class="user_greet">
						<div class="user_pic_area">
							<img alt="사용자 아이디" src="common/img/common/user_pic_sample.jpg">
							<p class="msr_user_mask msr_user_mask01"></p>
							<p class="msr_user_mask msr_user_mask02"></p>
							<p class="msr_user_mask msr_user_mask03"></p>
							<p class="msr_user_mask msr_user_mask04"></p>
						</div>
						<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
						<p class="msr_btn_setting"><a href="my/myinfo_modify_login">개인정보 수정</a></p>
					</div>
					<!-- 유저인포 end -->
					<span class="msr_sep_line"></span>

					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level" style="display:none;">
						<a href="my/reward">
							<p class="level_star_bg en">0</p>
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
						</a>
					</div>
					<!-- MSR 회원 end -->
					
					<!-- 일반회원 -->
					<div class="msr_lead">
						<a href="msr/msreward/level_benefit">
							<p class="icon_msr_cup"></p>
							<p class="msr_lead_txt"><strong>스타벅스 리워드</strong><br>혜택에 편리함까지 더한<br>스타벅스 리워드를<br>즐겨보세요.</p> <!-- 스타벅스 리워드 수정 -->
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 유저레벨 end -->

					<span class="msr_sep_line"></span>

					<!-- 카드인포 -->
					<!-- MSR 회원 -->
					<!-- 150805 DOM 수정 -->
					<div class="msr_card_info w_card_pic">
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index';" style="cursor:pointer;"><img alt=""></p>
						<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="my/mycard_index">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름">
						</div>
						<div class="mycard_area2">
							<img alt="카드이름" src="common/img/common/mycard2.png">
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one">
							<!-- <div class="front"> -->
							<img src="common/img/common/payment_icon1.png" alt="">
							<!-- </div> -->
							<!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
						</div>
						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="my/mycard_index">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<!-- 150805 DOM 수정 -->
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<a href="javascript:void(0);">
							<p class="icon_add_card" onclick="location.href = '/my/mycard_info_input';"><img alt="카드등록 아이콘" src="common/img/common/icon_add_card.png"></p>
							<p class="sb_card_regi_txt"><strong>스타벅스 카드 등록</strong><br>카드를 등록하시고<br>다양한 리워드를<br>만나보세요.</p>
						</a>
					</div>
					<!-- 일반회원 end -->
					<!-- 카드인포 end -->

					<!-- 일반 회원 -->
					<!-- 일반 회원 end -->

					<span class="msr_sep_line"></span>
					<!-- 알림아이콘 -->
					<div class="notice_icons">
						<div class="notice_icon2">
							<a href="my/calendar">
								<p></p>
								<span>캘린더</span>
							</a>
						</div>
						<div class="notice_icon3">
							<a href="my/ecoupon">
								<p>
									<span class="validCoupontCnt">0</span>
								</p>
								<span>e-쿠폰</span>	
							</a>
						</div>
						
						<!-- 20170510 추가 : 아이콘추가 -->
						<div class="notice_icon4">
							<a href="eFreq/status?TYPE=BARCODE">
								<p></p>
								<span>e-프리퀀시<br>바코드</span>
							</a>
						</div>
						<!--// 20170510 추가 : 아이콘추가 -->
						
					</div>
					<!-- 알림아이콘 end -->
				</div>

				<div class="top_msr_nologin">
					<div class="top_msr_nologin_l">
						<i class="icon_before_login"></i>
						<p class="top_msr_mem_yet"><strong>스타벅스커피 코리아 회원이 아니세요?</strong><br>스타벅스커피 코리아 회원만의<br>특별한 혜택을 누릴 수 있습니다.</p>
						<div class="msr_nologin_btns">
							<ul>
								<li><a href="javascript:$.loginLib.showLayerLogin();">로그인</a></li>
								<li><a href="mem/join">회원가입</a></li>
							</ul>
						</div>
					</div>
					<span class="msr_sep_line"></span>
					<div class="top_msr_nologin_r">
						<i class="icon_sbcard_lead"></i>
						<p class="sbcard_lead_txt"><strong>스타벅스 카드를 가지고 계신가요?</strong><br>스타벅스 카드를 등록하시면, 스타벅스 리워드 만의<br>특별한 혜택을 누릴 수 있습니다.</p> <!-- 스타벅스 리워드 수정 -->
						<p class="btn_sbcard_regi">
							<a href="my/mycard_info_input">카드 등록</a>
						</p>
					</div>
					<!-- 160628 수정 -->
					<div class="top_msr_nologin_b">
						<p class="egift_lead_txt"><strong>스타벅스 카드가 없으신가요?</strong><br>스타벅스 매장에서 구매하시거나,<br>PC/모바일웹, 스타벅스 앱에서<br>e-Gift를 “나에게 선물하기”로 구매 후,<br>편리하게 등록하세요!<br>스타벅스 리워드의 특별한 혜택! 생일 쿠폰을 드립니다!</p>
						<p class="btn_egift_regi">
							<a href="msr/sceGift/gift_step1">e-Gift 선물하기</a>
						</p>
					</div>
					<!-- 160628 수정 end -->
				</div>
			</div>
			
			
<!-- MSR 영역 end -->





<!-- GNB 영역 -->



			<!-- 960 gnb -->
			<div class="tablet_gnb_wrap">
				<h1 class="logo"><a href="index.htm">스타벅스 코리아</a></h1>
				<nav class="tablet_gnb_sep">
					<ul>
						<li class="tablet_gnb01"><a href="javascript:void(0);" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171106 role, title 추가 --><span class="rCup2"></span></a></li><!-- 150709 클레스 수정 -->
						<li class="tablet_gnb02"><a href="my/index" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb03"><a href="store/store_map"><span class="a11y">매장찾기</span></a><!-- 접근성_20171106 span추가 --></li>
						<li class="tablet_gnb04"><a href="javascript:void(0);"><span class="a11y" role="button">메뉴열기</span></a><!-- 접근성_20171106 span추가 --></li>
					</ul>
				</nav>
			</div>
			<!-- 960 gnb end -->
			<!-- 640 gnb -->
			<div class="mob_gnb_dimm"></div>
			<div class="mob_gnb_wrap">
				<div class="mob_gnb_wrap_inner">
					<aside class="btn_gnb_close"><a href="javascript:void(0);" title="메뉴닫기" role="button">닫기</a><!-- 접근성_20171106 title 추가 --></aside>
					<div class="mob_gnb_search">
						<div class="mob_gnb_search_inner">
						<label for="search_text" class="a11y">검색어</label><!-- 접근성_20171106 검색어 추가 -->
							<input type="text" id="search_text" name="search_text">
							<a href="javascript:void(0);" class="mob_gnb_search_btn" titie="검색">Search</a><!-- 접근성_20171106 title 추가 -->
						</div>
					</div>
					<nav class="mob_gnb_menus">
						<ul>
							<li class="mob_gnb_ttl1"><a role="button" class="en" href="javascript:void(0);">My Starbucks<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="my/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/reward" required="login">리워드 및 혜택</a></li>
									<li><a href="my/reward_star_history" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/mycard_index" required="login">보유 카드</a></li>
									<li><a href="my/mycard_info_input" required="login">카드 등록</a></li>
									<li><a href="my/mycard_charge" required="login">카드 충전</a></li>
									<li><a href="my/mycard_lost" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="my/egiftCard" required="login">선물 내역</a></li>
									<li><a href="my/egiftCard_shopping_bag" required="login">장바구니 내역</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 쿠폰<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/ecoupon?t=REG" required="login">등록하기</a></li>
									<li><a href="my/ecoupon?t=GIFT" required="login">선물하기</a></li>
									<li><a href="my/ecoupon?t=USE" required="login">사용하기</a></li>
								</ul>
							</li>
							<li><a href="my/calendar" required="login">My 캘린더</a></li>
							<!-- <li><a href="my/drink_shop" required="login">My 음료/매장</a></li> -->
							<li><a href="my/my_menu" required="login">My 메뉴</a></li>
							
							
							<li>
								<a role="button" href="javascript:void(0);">My e-프리퀀시<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="eFreq/guide?promoSeq=172">이용안내</a></li>
									<li><a href="eFreq/status-1?promoSeq=172" required="login">이용현황</a></li>
								</ul>
							</li>
							
									<li><a href="my/vocList" required="login">My 고객의 소리</a></li>
							<li><a href="my/eReceiptList" required="login">전자영수증</a></li>
							<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
							<li><a href="login/login" required="login">My DT Pass</a></li>
							<li>
								<a role="button" href="javascript:void(0);">개인정보관리<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="my/myinfo_modify_login" required="login">개인정보확인 및 수정</a></li>
									<li><a href="my/myinfo_out" required="login">회원 탈퇴</a></li>
									<li><a href="my/myinfo_modify_pwd" required="login">비밀번호 변경</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">COFFEE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="product_list">스타벅스 원두</a></li>
									<li><a href="product_list-1?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li><a href="product_list-2?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
								</ul>
							</li>
							<li><a href="productFinder">나와 어울리는 커피</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></span></a>
								<ul>
									<li><a href="reserve_info">ABOUT</a></li>
									<li><a href="reserve_magazine_list">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="doppio">도피오</a></li>
									<li><a href="espresso_macchiato">에스프레소 마키아또</a></li>
									<li><a href="americano">아메리카노</a></li>
									<li><a href="caramel_macchato">마키아또</a></li>
									<li><a href="cappuccino">카푸치노</a></li>
									<li><a href="latte">라떼</a></li>
									<li><a href="mocha">모카</a></li>
									<!-- <li><a href="javascript:void(0);">더블샷</a></li> -->
									<!-- <li><a href="coffee/flat_white">리스트레또 비안코</a></li> 20210914 삭제 -->
									<!-- <li class="mgnb_gold"><a href="javascript:void(0);">·에스프레소 초이스</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·프로모션 상품</a></li>
									<li class="mgnb_gold"><a href="javascript:void(0);">·브런치 유어 웨이</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">최상의 커피를 즐기는 법<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="higher_enjoy">커피 프레스</a></li>
									<li><a href="higher_enjoy-1?PACKAGE=01">푸어 오버</a></li>
									<li><a href="higher_enjoy-2?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="higher_enjoy-3?PACKAGE=03">커피 메이커</a></li>
									<li><a href="higher_enjoy-4?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li><a href="story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="story-1?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li><a href="story-2?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="story-3?PACKAGE=04">스타벅스 디카페인</a></li>
									<li><a href="story-4?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
									<!-- //20210914 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">MENU<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="menu/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/drink_list">전체보기</a></li>
									<li><a href="menu/drink_list-1?CATE_CD=product_cold_brew">콜드 브루</a></li>
									<li><a href="menu/drink_list-2?CATE_CD=product_brood">브루드 커피</a></li>
									<li><a href="menu/drink_list-3?CATE_CD=product_espresso">에스프레소</a></li>
									<li><a href="menu/drink_list-4?CATE_CD=product_frappuccino">프라푸치노</a></li>
									<li><a href="menu/drink_list-5?CATE_CD=product_blended">블렌디드</a></li>
									<li><a href="menu/drink_list-6?CATE_CD=product_fizzo">스타벅스 피지오</a></li>
									<li><a href="menu/drink_list-7?CATE_CD=product_tea">티(티바나)</a></li>
									<li><a href="menu/drink_list-8?CATE_CD=product_etc">기타 제조 음료</a></li>
									<li><a href="menu/drink_list-9?CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">푸드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/food_list">전체보기</a></li>
									<li><a href="menu/food_list-1?CATE_CD=product_bakery">브레드</a></li>
									<li><a href="menu/food_list-2?CATE_CD=product_cake">케이크</a></li>
									<li><a href="menu/food_list-3?CATE_CD=product_sandwich">샌드위치 &amp; 샐러드</a></li>
									<li><a href="menu/food_list-4?CATE_CD=product_wram_food">따뜻한 푸드</a></li>
									<li><a href="menu/food_list-5?CATE_CD=product_fruit_yogurt">과일 &amp; 요거트</a></li>
									<li><a href="menu/food_list-6?CATE_CD=product_snack">스낵 &amp; 미니 디저트</a></li>
									<li><a href="menu/food_list-7?CATE_CD=product_icecream">아이스크림</a></li>
                                    <!-- <li><a href="menu/food_list?CATE_CD=product_etc">기타 푸드</a></li> -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">상품<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="menu/product_list">전체보기</a></li>
									<li><a href="menu/product_list-1?CATE_CD=product_mug">머그</a></li>
									<li><a href="menu/product_list-2?CATE_CD=product_glass">글라스</a></li>
									<li><a href="menu/product_list-3?CATE_CD=product_plastic">플라스틱 텀블러</a></li>
									<li><a href="menu/product_list-4?CATE_CD=product_stainless">스테인리스 텀블러</a></li>
									<li><a href="menu/product_list-5?CATE_CD=product_vacuum">보온병</a></li>
									<li><a href="menu/product_list-6?CATE_CD=product_accessories">액세서리</a></li>
									<li><a href="menu/product_list-7?CATE_CD=product_present">선물세트</a></li>
									<li><a href="menu/product_list-8?CATE_CD=product_coffee">커피 용품</a></li>
									<li><a href="menu/product_list-9?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>
									<!-- <li><a href="menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li> --> <!-- 20210602 삭제 -->
								</ul>
							</li>
							
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">STORE<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="store/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 찾기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="store/store_map-1?disp=quick">빠른 검색</a></li>
									<li><a href="store/store_map-2?disp=locale">지역 검색</a></li>
								</ul>
							</li>
							<li><a href="store/store_drive">드라이브 스루 매장</a></li>
							<li><a href="store/store_reserve">스타벅스 리저브™ 매장</a></li>
							<li><a href="store/store_community">커뮤니티 스토어 매장</a></li>
							<li>
								<a role="button" href="javascript:void(0);">매장 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- <li><a href="store/store_cheongdam">청담스타</a></li> 20210727 메뉴 비노출 -->
									<li><a href="store/store_star_field">티바나 바 매장</a></li>
									<!-- <li><a href="store/store_park">파미에파크</a></li> 20210727 메뉴 비노출 -->
								</ul>
							</li>
						</ul>
						
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">Starbucks Rewards<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>  <!-- 스타벅스 리워드 수정 -->
							<li><a href="msr/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 스타벅스 리워드 수정 -->
								<ul>
									<li><a href="msr/msreward/about">스타벅스 리워드 소개</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="msr/msreward/level_benefit">등급 및 혜택</a></li>
									<li><a href="msr/msreward/star">스타벅스 별</a></li>
									<li><a href="community/faq?menu_cd=STB2703&cate=F17">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/scard/about">스타벅스 카드 소개</a></li>
									<li><a href="msr/scard/scard_gallery">스타벅스 카드 갤러리</a></li>
									<li><a href="msr/scard/register_inquiry">등록 및 조회</a></li>
									<li><a href="msr/scard/charge_information">충전 및 이용안내</a></li>
									<li><a href="msr/scard/lost_report">분실신고/환불신청</a></li>
									<li><a href="community/faq-1?menu_cd=STB2703&cate=F05">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>
									<li><a href="msr/sceGift/msr_useguide">이용안내</a></li>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="community/faq-2?menu_cd=STB2703&cate=F22">자주 하는 질문</a></li> <!-- 20210809 수정 -->
								</ul>
							</li>
						</ul>
						<ul>
							<li class="mob_gnb_ttl2"><a role="button" class="en" href="javascript:void(0);">WHAT'S NEW<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --></li>
							<li><a href="whats_new/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="whats_new/campaign_list">전체</a></li>
									<li><a href="whats_new/campaign_list-1?menu_cd=STB2812">스타벅스 카드</a></li>
									<li><a href="whats_new/campaign_list-2?menu_cd=STB2813">스타벅스 리워드</a></li> <!-- 스타벅스 리워드 수정 -->
									<li><a href="whats_new/campaign_list-3?menu_cd=STB2814">온라인</a></li>
									
									
										<li><a href="whats_new/eFreq_gift">e-프리퀀시 증정품</a></li> <!-- 20210423 메뉴명, 경로 수정 -->
									
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">뉴스<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 --> <!-- 20210304 메뉴명변경 -->
								<ul>
									<li><a href="whats_new/news_list">전체</a></li>
									<li><a href="whats_new/news_list-1?cate=N01">상품 출시</a></li>
									<li><a href="whats_new/news_list-2?cate=N02">스타벅스와 문화</a></li>
									<li><a href="whats_new/news_list-3?cate=N03">스타벅스 사회공헌</a></li>
									<li><a href="whats_new/news_list-4?cate=N04">스타벅스 카드출시</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">매장별 이벤트<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="whats_new/store_event_list">일반 매장</a></li>
									<li><a href="whats_new/store_event_list-1?search_date=1&tab=1">신규 매장</a></li>
								</ul>
							</li>
							<li><a href="whats_new/notice_list">공지사항</a></li>
							<li><a href="whats_new/wallpaper">월페이퍼</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- 640 gnb end -->

<!-- GNB 영역 end -->
			
			
			
			
<div id="mstopWrap">
	<div id="gnb">
		<!-- 서브 gnb -->
		<div class="sub_gnb_wrap">
			<div class="sub_gnb_wrap_inner">
				<h1 class="logo"><a href="index.htm" title="스타벅스 메인페이지">스타벅스 코리아</a><!-- 접근성_20171106 title 추가 --></h1>
				<nav class="util_nav">
					
								
<ul>
	<li class="util_nav01 sign_out" style="display:none;"><a href="javascript:void(0);">Sign out</a></li>
	<li class="util_nav01 sign_in"><a href="javascript:void(0);">Sign In</a></li>
	<li class="util_nav02"><a href="my/index" required="login">My Starbucks</a></li>
	<li class="util_nav03"><a href="util/index">Customer Service & Ideas</a></li>
	<li class="util_nav04"><a href="store/store_map">Find a Store</a></li>
</ul>
				</nav>
				<p class="btn_search">
					<a href="javascript:void(0);"><img alt="통합검색" src="common/img/common/icon_magnifier_black.png"></a>
				</p>
				<a href="javascript:void(0);" class="rCup3_wrap" role="button" title="마이 리워드 레이어 열기"><!-- 접근성_20171201 class, role, title 추가 --><span class="rCup3"></span></a><!-- 150714 DOM 수정 - 떨어지는 메뉴 부분에 jsMovie 추가 -->
			</div>
			<nav class="sub_gnb_nav">
				<div class="sub_gnb_nav_inner">
				</div>
			</nav>
		</div>
		<!-- 서브 gnb end -->
	</div>
</div>			
	
			
			<div id="container">
				<!-- 서브 타이틀 -->
				<div class="sub_tit_wrap">
					<div class="sub_tit_inner">
						<h2><img src="common/img/coffee/higher_enjoy_tit1.jpg" alt="최상의 커피를 즐기는 법 "></h2>
						<ul class="smap">
							<li><a href="index.htm"><img src="common/img/common/icon_home.png" alt="홈으로"></a></li>
							<li><img class="arrow" src="common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li class="en"><a href="espresso">COFFEE</a></li>
							<li><img class="arrow" src="common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="higher_enjoy">최상의 커피를 즐기는 법</a></li>
							<li><img class="arrow" src="common/img/common/icon_arrow.png" alt="하위메뉴"></li>
							<li><a href="higher_enjoy" class="this ">커피 프레스</a></li>
						</ul>
					</div>
				</div>
				<!-- 서브 타이틀 end -->
				<div class="coffee_higher_enjoy">
					<dl class="content_tabmenu">
						<dt class="box_bg"></dt><!-- jsp 추가 - 모바일 용 디자인 셀렉트 박스 추가 -->
						<!-- 1번 시작 -->
						<dt class="tab tab_first tab_01 on"><h3><a href="#">커피 프레스</a></h3></dt>
						<dd class="panel on">
							<div class="coffee_content">
								<div class="higher_enjoy_titl icon_coffee_press">
									<h3>커피 프레스</h3>
									<p>커피 프레스는 물에 침지 된 원두의 맛과 향이 충분히 추출되어, 원두 본연의 풍미와 커피의 오일리함을 풍성하게 느낄 수 있습니다.</p><!-- 20210914 수정 -->
								</div>
								<div class="higher_enjoy_youtube">
									<iframe width="100%" height="100%" src="//www.youtube.com/embed/qNIngFRL-Z0?wmode=transparent&rel=0" frameborder="0" allowfullscreen="" title="커피 추출하기 - 커피 프레스편 동영상"></iframe><!-- 접근성_20171127 title 추가 -->	
								</div>
							</div>
							<div class="coffee_info_bottom">
								<div class="coffee_content">
									<ul class="coffee_info">
										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_press_img01.jpg" alt="그라인딩 및 계량하기"></p>
											<dl class="coffee_info_text icon_coffee_info_01">
												<dt><h4>그라인딩 및 계량하기</h4></dt>
												<dd>
													<p>바다 소금 크기로 굵게 그라인딩 된 커피를 프레스에 넣고, 물 6온스 당 <br>커피 2테이블 스푼을 계랑해서 넣어주세요.</p><!-- 20210914 수정 -->
													<span class="icon_coffee_info_tip"><img src="common/img/coffee/icon_coffee_info_tip.png" alt="Tip"></span>
													<span>커피는 농산품과 같다는 점을 기억하세요. <br>소량으로 자주 구입해야 가장 신선하게 즐길 수 있습니다. </span>
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_press_img02.jpg" alt="뜨거운 물 더하기"></p>
											<dl class="coffee_info_text icon_coffee_info_02">
												<dt><h4>뜨거운 물 더하기</h4></dt>
												<dd>
													<p>갓 끓인 뜨거운 물을 프레스에 채워주세요. 그라인딩 된 커피를 모두 적셔주세요.</p><!-- 20210914 수정 -->
													<span class="icon_coffee_info_tip"><img src="common/img/coffee/icon_coffee_info_tip.png" alt="Tip"></span>
													<span>최상의 풍미를 내려면 필터로 여과한 물이나 생수를 사용하세요. </span>
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_press_img03.jpg" alt="플런저(plunger) 올리고 커피 추출하기"></p><!-- 211104 수정 -->
											<dl class="coffee_info_text icon_coffee_info_03">
												<dt><h4>플런저(plunger) 올리고 커피 추출하기</h4></dt><!-- 211104 수정 -->
												<dd>
													<p>플런저를 프레스 위에 올려놓고 4분간 커피를 추출하세요. <br>이때 플런저를 아래로 누르지 마세요.</p><!-- 211104 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_press_img04.jpg" alt="플런저 누르기"></p><!-- 211104 수정 -->
											<dl class="coffee_info_text icon_coffee_info_04">
												<dt><h4>플런저 누르기</h4></dt><!-- 211104 수정 -->
												<dd>
													<p>플런저가 프레스 바닥에 닿을 때까지 천천히 아래로 눌러주세요. <br>그리고 커피를 즐기면 됩니다.</p><!-- 211104 수정 -->
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</dd>
						<!-- 1번 끝 -->

						<!-- 2번 시작 -->
						<dt class="tab tab_02"><h3><a href="#">푸어 오버</a></h3></dt>			
						<dd class="panel">
							<div class="coffee_content">
								<div class="higher_enjoy_titl icon_pour_over">
									<h3>푸어 오버</h3>
									<p>푸어 오버로 추출한 드립 커피는 부드럽고 깨끗한 풍미, 은은한 매력을 느낄 수 있고, 물을 멈추지 않고 부어 누구나 쉽고 간편하게 만들 수 있습니다.</p><!-- 20210914 수정 -->
								</div>
								<div class="higher_enjoy_youtube">
									<iframe width="100%" height="100%" src="//www.youtube.com/embed/Y6_X0UoEsBQ?wmode=transparent&rel=0" frameborder="0" allowfullscreen="" title="커피 추출하기 - 푸어 오버편 동영상"></iframe><!-- 접근성_20171127 title 추가 -->	
								</div>
							</div>
							<div class="coffee_info_bottom">
								<div class="coffee_content">
									<ul class="coffee_info">
										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_pourOver_img01.jpg" alt="계량 및 끓이기"></p>
											<dl class="coffee_info_text icon_coffee_info_01">
												<dt><h4>물 계량 및 끓이기</h4></dt><!-- 20210914 수정 -->
												<dd>
													<p>커피를 추출하기 위한 물을 원하는 만큼 계량하여 끓여 주세요. <br>필터를 린싱할 물도 조금 추가해 주세요.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_pourOver_img02.jpg" alt="미리 필터 적시기"></p>
											<dl class="coffee_info_text icon_coffee_info_02">
												<dt><h4>필터 린싱 & 예열하기</h4></dt><!-- 20210914 수정 -->
												<dd>
													<p>필터를 접어 드리퍼 안에 넣습니다. <br>소량의 뜨거운 물로 필터를 적시며, 드리퍼와 함께 예열합니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_pourOver_img03.jpg" alt="계량 및 그라인딩하기"></p>
											<dl class="coffee_info_text icon_coffee_info_03">
												<dt><h4>계량 및 그라인딩하기</h4></dt>
												<dd>
													<p>원하는 만큼 커피를 계량합니다. 종이로 된 필터에 그라인딩 된 커피를 넣으세요. <br>설탕 알갱이 크기의 비교적 곱게 그라인딩 된 커피를 사용합니다. <br>물 6온스 당 커피 2테이블 스푼을 계량하세요.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_pourOver_img04.jpg" alt="물 붓고 기다리기"></p>
											<dl class="coffee_info_text icon_coffee_info_04">
												<dt><h4>뜸 들이기</h4></dt><!-- 20210914 수정 -->
												<dd>
													<p>먼저 뜨거운 물 소량을 그라인딩 된 커피가 살짝 젖을 정도로 붓습니다. <br>커피의 풍미가 잘 드러날 수 있도록 10초 정도 기다립니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_pourOver_img05.jpg" alt="물 마저 붓고 커피 즐기기 "></p>
											<dl class="coffee_info_text icon_coffee_info_05">
												<dt><h4>물 마저 붓고 커피 즐기기 </h4></dt>
												<dd>
													<p>남은 물을 천천히 부어주세요. 그라인딩 된 커피가 전부 젖을 수 있도록 조그만 원을 <br>그리듯 규칙적으로 물을 붓습니다. 그리고 커피를 즐깁니다. </p><!-- 20210914 수정 -->
													<span class="icon_coffee_info_tip"><img src="common/img/coffee/icon_coffee_info_tip.png" alt="Tip"></span>
													<span>푸어 오버 시 항상 동일한 맛을 내도록 하려면 타이머를 사용하세요. <br>1컵을 만드는 데 약 3분 정도가 소요되도록 합니다. </span>
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</dd>
						<!-- 2번 끝 -->
						
						<!-- 3번 시작 -->
						<dt class="tab tab_03"><h3><a href="#">아이스 푸어 오버</a></h3></dt>			
						<dd class="panel">
							<div class="coffee_content">
								<div class="higher_enjoy_titl icon_iced_pour_over">
									<h3>아이스 푸어 오버</h3>
									<p>부드럽고 깨끗한 풍미의 푸어 오버 드립 커피를 아이스커피로 산뜻하게 마실 수 있는 간단한 방법입니다.</p><!-- 20210914 수정 -->
								</div>
								<div class="higher_enjoy_youtube">
									<iframe width="100%" height="100%" src="//www.youtube.com/embed/0fj5LeX4WqE?wmode=transparent&rel=0" frameborder="0" allowfullscreen="" title="커피 추출하기 - 아이스 푸어 오버편 동영상"></iframe><!-- 접근성_20171127 title 추가 -->	
								</div>
							</div>
							<div class="coffee_info_bottom">
								<div class="coffee_content">
									<ul class="coffee_info">
										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img01.jpg" alt="필터 린싱 & 예열하기"></p><!-- 20210928 수정 -->
											<dl class="coffee_info_text icon_coffee_info_01">
												<dt><h4>필터 린싱 & 예열하기</h4></dt><!-- 20210914 수정 -->
												<dd>
													<p>필터를 접어 드리퍼 안에 넣고, 소량의 뜨거운 물로 필터를 적십니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img02.jpg" alt="적합하게 그라인딩 된 커피 찾기"></p><!-- 20210928 수정 -->
											<dl class="coffee_info_text icon_coffee_info_02">
												<dt><h4>적합하게 그라인딩 된 커피 찾기</h4></dt><!-- 20210928 수정 -->
												<dd>
													<p>종이 필터에 그라인딩 된 커피를 넣으세요. 설탕 알갱이 크기의 비교적 곱게 그라인딩 된 <br>커피를 사용합니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img03.jpg" alt="계량하기"></p>
											<dl class="coffee_info_text icon_coffee_info_03">
												<dt><h4>계량하기</h4></dt>
												<dd>
													<p>아이스 푸어 오버는 두 배로 진하게 만든 후 얼음을 넣어 희석시킵니다. <br>뜨거운 물 6온스 당 커피 4테이블 스푼을 계랑하세요.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img04.jpg" alt="물 붓고 기다리기"></p>
											<dl class="coffee_info_text icon_coffee_info_04">
												<dt><h4>물 붓고 기다리기</h4></dt>
												<dd>
													<p>먼저 뜨거운 물 소량을 그라인딩 된 커피가 살짝 젖을 정도로 붓고, <br>커피의 풍미가 잘 드러날 수 있도록 10초 정도 기다립니다. <br>커피가 물과 골고루 섞이면서 풍미가 나타나기 시작합니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img05.jpg" alt="물 마저 붓고 커피 즐기기 "></p>
											<dl class="coffee_info_text icon_coffee_info_05">
												<dt><h4>물 마저 붓고 커피 즐기기 </h4></dt>
												<dd>
													<p>남은 물을 천천히 부어주세요. <br>그라인딩 된 커피가 전부 젖을 수 있도록 조그만 원을 그리듯 규칙적으로 <br>물을 붓습니다.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_iced_pourOver_img06.jpg" alt="얼음 더하기 "></p>
											<dl class="coffee_info_text icon_coffee_info_06">
												<dt><h4>얼음 더하기</h4></dt>
												<dd>
													<p>만들어진 커피에 얼음을 넣어 더 차갑고 시원하게 즐기세요.</p><!-- 20210914 수정 -->
													<span class="icon_coffee_info_tip"><img src="common/img/coffee/icon_coffee_info_tip.png" alt="Tip"></span>
													<span>훌륭한 바디감과 톡쏘는 시트러스 향기를 가진 아프리카 커피는 아이스 푸어 오버로 <br>즐기기 좋습니다. </span>
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</dd>
						<!-- 3번 끝 -->

						<!-- 4번 시작 -->
						<dt class="tab tab_04"><h3><a href="#">커피 메이커</a></h3></dt>			
						<dd class="panel">
							<div class="coffee_content">
								<div class="higher_enjoy_titl icon_coffee_brewer">
									<h3>커피 메이커</h3>
									<p>드립 커피는 맛있는 커피를 간편하게 만드는 방법입니다. 커피 브루어에 적당히 그라인딩 된 커피와 깨끗한 물을 이용해서 완벽한 커피를 만들 수 있습니다. </p><!-- 20210914 수정 -->
								</div>
								<div class="higher_enjoy_youtube">
									<iframe width="100%" height="100%" src="//www.youtube.com/embed/mT2ZJnLyjXg?wmode=transparent&rel=0" frameborder="0" allowfullscreen="" title="커피 추출하기 - 커피 메이커편 동영상"></iframe><!-- 접근성_20171127 title 추가 -->	
								</div>
							</div>
							<div class="coffee_info_bottom">
								<div class="coffee_content">
									<ul class="coffee_info">
										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_brewer_img01.jpg" alt="취향에 맞는 커피 찾기"></p><!-- 20210928 수정 -->
											<dl class="coffee_info_text icon_coffee_info_01">
												<dt><h4>취향에 맞는 커피 찾기</h4></dt><!-- 20210914 수정 -->
												<dd>
													<p>바닥이 평평한 필터의 경우, 바다 소금 정도의 중간 크기로 그라인딩 된 커피를 사용하세요. <br>콘 형태 필터의 경우, 설탕 알갱이 크기의 곱게 그라인딩 된 커피를 사용하세요.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_brewer_img02.jpg" alt="계량하기"></p>
											<dl class="coffee_info_text icon_coffee_info_02">
												<dt><h4>계량하기</h4></dt>
												<dd>
													<p>물 6온스 당 신선하게 그라인딩 된 커피 2테이블 스푼을 계랑하세요.</p><!-- 20210914 수정 -->
												</dd>
											</dl>
										</li>

										<li>
											<p class="coffee_info_img"><img src="common/img/coffee/coffee_brewer_img03.jpg" alt="커피 만들어 즐기기"></p>
											<dl class="coffee_info_text icon_coffee_info_03">
												<dt><h4>커피 만들어 즐기기</h4></dt>
												<dd>	
													<span class="icon_coffee_info_tip"><img src="common/img/coffee/icon_coffee_info_tip.png" alt="Tip"></span>
													<span>브루어를 이용해 만든 커피는 신선하게 마셔야 가장 맛있습니다. <br>한 번에 마실 정도의 커피를 만드세요. 커피를 다시 데우면 풍미가 약해질 수 있습니다.</span>
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</dd>
						<!-- 4번 끝 -->
						
						<!-- 170713  리저브 수정   여기 부분만 추가해주세요. -->
						<!-- 5번 시작 -->
						<dt class="tab tab_last tab_05"><h3><a href="javascript:void(0)">리저브를 매장에서 <br class="for_web">다양하게 즐기는 법</a></h3></dt>			
						<dd class="panel">
							<div class="cloverExtraction_wrap">
								<h4><img src="common/img/coffee/sb_reserve_logo.png?v=210802" alt="starbucks reserve"></h4><!-- 20210727 수정 -->
								<!-- 20210727 수정 -->
								<h5>리저브 원두를 다양하게 즐기는 방법</h5>
								<p>리저브 원두는 동일한 원두도 추출 방식에 따라 커피의 맛과 향이 다르게 추출됩니다. <br>원하는 원두와 추출 방식을 선택하시면, 숙련된 커피 마스터가 취향을 담은 커피를 추출해 드립니다. </p>
								<!-- //20210727 수정 -->
								
								<small>※ 클릭 시 상세 설명을 볼 수 있습니다. </small>
								<div class="howtoEnjoy">
								<!-- 20210727 위치 변경 및 내용 수정 -->
									<ul class="p">
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/p_coffee_reserve_icon5.png?v=210802" alt="CHEMEX - 깨끗하고 밝은 풍미가 가득한"></a><!-- 20210727 수정 -->
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/p_coffee_reserve_icon3.png?v=210802" alt="POUR OVER - 은은한 커피향에 부드럽고 깔끔한 풍미를 느끼고 싶다면"></a><!-- 20210727 수정 -->
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/p_coffee_reserve_icon2.png?v=210802" alt="BLACK EAGLE - 개성있고 다채로운 풍미의"></a><!-- 20210727 수정 -->
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/p_coffee_reserve_icon1.png?v=210802" alt="CLOVER - 진하면서도 깔끔한 맛, 풍부한 아로마가 느껴지는"></a><!-- 20210727 수정 -->
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/p_coffee_reserve_icon6.png?v=210802" alt="COLD BREW - 리저브 커피의 또 다른 매력"></a><!-- 20210727 수정 -->
										</li>
										<!-- 20210727 주석 처리 -->
										
										<!-- //20210727 주석 처리 -->										
									</ul>
									<ul class="m">
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 -->
												<img src="common/img/coffee/m_coffee_reserve_icon5.png" alt="CHEMEX -풍부한 커피향과 균형 잡힌 풍미를 느끼고 싶다면"><!-- 20210727 수정 -->
												<strong>CHEMEX</strong>
												<span>풍부한 커피향과 균형 잡힌 풍미를 느끼고 싶다면</span>
											</a>
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 -->
												<img src="common/img/coffee/m_coffee_reserve_icon3.png" alt="POC - 은은한 커피향에 부드럽고 깔끔한 풍미를 느끼고 싶다면"><!-- 20210727 수정 -->
												<strong>POUR OVER</strong> <!-- 20210813 수정 -->
												<span>은은한 커피향에 부드럽고 깔끔한 풍미를 느끼고 싶다면</span>
											</a>
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 -->
												<img src="common/img/coffee/m_coffee_reserve_icon2.png" alt="BLACK EAGLE - 진하고 깊은 에스프레소 풍미를 다채롭게 즐기고 싶다면"><!-- 20210727 수정 -->
												<strong>BLACK EAGLE</strong>
												<span>진하고 깊은 에스프레소 풍미를 다채롭게 즐기고 싶다면</span> <!-- 211122 수정 -->
											</a>
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 -->
												<img src="common/img/coffee/m_coffee_reserve_icon1.png" alt="CLOVER - 깊은 풍미에 진하고 강렬한 맛을 원한다면"><!-- 20210727 수정 -->
												<strong>CLOVER</strong>
												<span>깊은 풍미에 진하고 강렬한 맛을 원한다면</span>
											</a>
										</li>
										<li>
											<a href="#;" title="" role="button"><!-- 접근성_20171127 role 추가 -->
												<img src="common/img/coffee/m_coffee_reserve_icon6.png" alt="COLD BREW - 달콤함과 부드러운 풍미를 동시에 느끼고 싶다면"><!-- 20210727 수정 -->
												<strong>COLD BREW</strong>
												<span>달콤함과 부드러운 풍미를 동시에 느끼고 싶다면</span>
											</a>
										</li>
										<!-- 20210727 주석 처리 -->
										
										<!-- //20210727 주석 처리 -->
									</ul>
									<!-- //20210727 위치 변경 및 내용 수정 -->
								</div>
							</div>

							<div class="coffee_content">
								<div class="cloverExtraction_ber">
									<dl>
										<dt><img src="common/img/coffee/logo_reserveBrown.png" alt="스타벅스 리저브™ 매장"></dt>
										<dd>스타벅스 리저브 원두 및 다양한 제품을 만날 수 있는 리저브 매장을 확인하세요.</dd> <!-- 20210727 수정 -->
									</dl>
									<p class="btn_cloverExtraction"><a href="store/store_reserve"><img src="common/img/coffee/cf_more_btnR2.png" alt="리저브 매장 보기"></a></p>
								</div>
							</div>
						</dd>
						<!-- 5번 끝 -->
						<!-- 170713  리저브 수정 end -->
					</dl>
				</div>
			</div>
		
		<!-- 20170713  추가 팝업-->
			<div class="dimd" style="display: none; "></div>
			<div class="layer_howtoEnjoy" style="display: none;" role="dialog" aria-hidden="true" aria-labelledby="howto_tit"><!-- 접근성_20171127 role, aria 추가 -->
				<h3 id="howto_tit">리저브를 즐기는 다양한 추출 방식</h3><!-- 접근성_20171127 id 추가 -->
				<div id="showBox" class="layerConts">
					<div>
						<ul id="imgBox">
							<!-- 20210727 마크업 수정 -->
							<li>
								<h4><strong>CHEMEX</strong>케맥스</h4>
								<img src="common/img/coffee/waytoEnjoy5.jpg" alt="CHEMEX">
								<p>케맥스(Chemex)는 시간과 무게를 정확히 지켜 추출하는 방식으로, 완벽하게 균형 잡힌 커피와 매끄러운 바디감을 느낄 수 있습니다. 완전히 밀착된 두툼한 곡물 필터가 공기의 흐름을 막아 풍부한 향을 가득 담은 커피를 만들어 냅니다. </p>  <!-- 20210727 수정 -->
							</li>
							<li>
								<!-- 20210727 수정 -->
								<h4><strong>POUR OVER</strong>푸어 오버 핸드 드립</h4> 
								<img src="common/img/coffee/waytoEnjoy3.jpg" alt="POC">
								<p>푸어 오버(Pour Over)는 가장 전통적인 커피 추출 방식의 하나로, 은은한 커피향과 부드럽고 깔끔한 풍미를 느낄 수 있습니다. 가늘게 그라인딩 한 커피를 종이 필터 위에 소복이 담고 부드럽게 원을 그리며 물을 붓습니다. 필터를 통해 떨어지는 커피 방울이 섬세한 향과 풍미를 생생하게 담아내어 부드럽고 깔끔한 한 잔의 커피를 완성합니다.</p> <!-- 20210813 수정 -->
								<!-- //20210727 수정 -->
							</li>
							<li>
								<h4><strong>BLACK EAGLE</strong>블랙 이글</h4>
								<img src="common/img/coffee/waytoEnjoy2.jpg" alt="BLACK EAGLE">
								<p>리저브의 모든 에스프레소 음료는 월드 바리스타 챔피언십 공식 머신인 블랙이글(Black Eagle)로 추출합니다. 블랙이글 머신과 리저브 원두가 만나 풍부한 아로마와 진하고 깊은 풍미를 가진 다채로운 리저브 에스프레소 음료들이 완성됩니다.</p> <!-- 20210727 수정 -->
							</li>
							<li>
								<h4><strong>CLOVER</strong>클로버</h4>
								<img src="common/img/coffee/waytoEnjoy1.jpg" alt="CLOVER">
								<p>클로버(Clover)는 진공 압착 추출 방식으로 원두가 가지고 있는 다양한 풍미와 오일까지 추출합니다. 풍미 가득한 원두를 마치 커피 프레스로 내린 듯 진한 맛과 함께 마이크로 필터로 추출하여 깔끔한 맛을 유지합니다.</p> <!-- 20210727 수정 -->
							</li>
							<li>
								<h4><strong>COLD BREW</strong>콜드브루</h4>
								<img src="common/img/coffee/waytoEnjoy6.jpg" alt="COLD BREW">
								<p>콜드브루(Cold Brew)는 리저브 전용 콜드브루 원두에 커피 마스터의 14시간 정성이 더해져 깊고 부드러운 풀 바디감과 달콤한 풍미를 함께 느낄 수 있습니다. 나이트로 콜드브루도 부드럽게 즐길 수 있는 리저브만의 콜드브루를 경험해 보세요.</p> <!-- 20210727 수정 -->
							</li>
							<!-- 20210813 주석 처리  -->
							<!-- <li>
								<h4><strong>SIPHON</strong>사이폰</h4>
								<img src="//image.istarbucks.co.kr/common/img/coffee/waytoEnjoy4.jpg" alt="SIPHON" />
								<p>아름다운 할로겐 불빛으로부터 시작하는 사이폰의 추출 과정은 마치 사뭇 진지하고 신비로운 과학 실험처럼 느껴집니다. 증기압과 진공력을 이용하는 사이폰의 매혹적인 추출 과정은 색다른 경험뿐만 아니라 풍부하면서도 섬세한 아로마가 매력적인 커피를 선사합니다.</p>
							</li> -->
							<!-- //20210813 주석 처리  -->
							<!-- //20210727 마크업 수정 -->	
						</ul>		
					</div>
					<a href="#;" class="prev p" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/btn_prev.jpg" alt="이전 방식보기"><!-- 접근성_20171127 alt 추가 --></a>
					<a href="#;" class="next p" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/btn_next.jpg" alt="다음 방식보기"><!-- 접근성_20171127 alt 추가 --></a>
				</div>
				<ol class="m" aria-hidden="true" role="presentation"><!-- 접근성_20171127 role, aria 추가 -->
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					<!-- <li>6</li> 202108513 주석 처리 -->		
				</ol>
				<a href="#;" class="close_Layer" role="button"><!-- 접근성_20171127 role 추가 --><img src="common/img/coffee/btn_closeLayer.png" alt="추출방식 레이어 닫기"><!-- 접근성_20171127 alt 추가 --></a>
			</div>

		
		
		




		
			<!-- footer -->
			<footer id="footer"> 
				<div class="footer_wrap">
					<div class="footer_menus">
						<ul class="footer_first_menu">
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">CUSTOMER SERVICE &amp; IDEAS<span class="footer_arrow_down"></span></a></li>
							<li><a href="util/faq">자주 하는 질문</a></li><!-- 20210809 수정 -->
							<li><a href="customer/suggestionWrite">고객의 소리</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 이용 팁<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="util/web_tip">홈페이지 이용 팁</a></li>
									<li><a href="util/app_tip">애플리케이션 이용 팁</a></li>
									<li><a href="util/partnership_card">제휴카드 안내</a></li>
								</ul>
							</li>
							<li><a href="util/online_survey">고객 경험 설문조사</a></li> <!-- 20210811 수정  -->
							
							
							<li><a href="util/guest_eReceipt">비회원 전자영수증 조회</a></li>
							
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">COMPANY<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/company/index">한눈에 보기</a></li>
							<li><a href="footer/company/mission">스타벅스 사명</a></li>
							<li class="footer_2depth_ttl"><a href="javascript:void(0)">스타벅스 소개<span class="footer_arrow_down"></span></a>
								<ul>
									<li><a href="footer/company/starbucks_information">스타벅스 코리아</a></li> <!-- 220118 수정 -->
									<li><a href="footer/company/starbucks_history">주요 연혁</a></li> <!-- 202107 수정 -->
									<li><a href="footer/company/starbucks_story">스타벅스 이야기</a></li>
								</ul>
							</li>
							<li><a href="footer/company/news_list">국내 뉴스룸</a></li>
							<li><a href="footer/company/global_starbucks">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="https://news.starbucks.com" target="_blank">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" id="goPage" href="javascript:void(0);">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/co_sales/index">단체 및 기업 구매 안내</a></li>
							<!-- <li><a href="footer/co_sales/sbcard_egift">스타벅스 <span class="en">e-Gift Card</span></a></li> -->
							<!-- <li><a href="footer/co_sales/sbcard">스타벅스 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/co-branded"><span class="en">Co-branded</span> 카드</a></li> -->
							<!-- <li><a href="footer/co_sales/sb_product">스타벅스 상품</a></li> -->
							<!-- <li><a href="footer/co_sales/sbgift_certificate">스타벅스 상품권</a></li> -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/partnership/new_partner">신규 입점 제의</a></li>
							<!-- <li><a href="footer/partnership/portal_systems">협력사 포털 시스템</a></li> -->
							<li><a href="srm/login">협력 고객사 등록신청</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">ONLINE COMMUNITY<span class="footer_arrow_down"></span></a></li>
							<li><a href="https://www.facebook.com/starbuckskorea" target="_blank">페이스북</a></li>
							<li><a href="https://twitter.com/StarbucksKorea" target="_blank">트위터</a></li>
							<li><a href="https://www.youtube.com/user/starbuckskorea" target="_blank">유튜브</a></li>
							<li><a href="https://instagram.com/starbuckskorea/" target="_blank">인스타그램</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">RECRUIT<span class="footer_arrow_down"></span></a></li>
							<li><a href="footer/recruit/index">채용 소개</a></li>
							<li><a href="http://job.shinsegae.com/recruit_info/notice/notice02_view.jsp?notino=5924" target="_blank">채용 지원하기</a></li><!-- 20210927 수정 -->
						</ul>
					</div>
				</div>
				<div class="footer_util_btn">
					<ul>
						<li><a href="index.htm">HOME</a></li>
						<li>
							<a href="javascript:$.loginLib.showLayerLogin();" class="sign_in">Sign In</a>
							<a href="javascript:$.loginLib.logout();" class="sign_out" style="display:none;">Sign Out</a>
						</li>
						<li class="last"><a href="mem/join1">Join Us</a></li>
					</ul>
				</div>
				<!-- 수상내역 -->
				<div class="footer_awards_wrap">
					<div class="footer_awards_wrap_inner">
						<div class="footer_slider_controller">
							<div class="footer_slider_controls"></div>
							<div class="footer_slider_pagers"></div>
						</div>
					</div>
				</div>
				<!-- 수상내역 end -->
                
                <!-- Express DT MSR 회원 확인 Popup -->
				<div class="dtPop ecoPop" id="msrCheckPop" style="display:none">
					<div class="head">
						<p class="tt"></p>
						<p id="dtPopCommonCloseBtn" class="close dtPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
					</div>  
					<div id="Msr" class="dtPopInner left" style="display:none">
						<p>[My DT Pass]는 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?
						</p>
						<br>
						<input type="hidden" id="dtsPwdchk2">
						<input type="hidden" id="dtsPwdchk">
					</div>
					<div class="dtPopBtn">
						<a id="dtPopPwdCheckBtnMsr" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
						<a id="dtPopCancelBtnMsr" class="dtPopBtn2 cancel">취소</a>
						<a id="dtPopCommonBtnMsr" class="dtPopBtn2 commonBtnMsr" style="display:none">확인</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup s-->
				<div class="dtPop ecoPop" id="msrCheckPop_rewardTumbler" style="display:none">
					<div class="head">
						<p class="tt">스타벅스 리워드 등록 안내</p>  <!-- 스타벅스 리워드 수정  -->
						<p id="tumblerPopCommonCloseBtn" class="close ecoPopClose"><a href="javascript:void(0)"></a></p> <!-- 팝업 닫힘 클래스 : dtPopClose -->
					</div>  
					<div id="msrCheckPop_rewardTumblerContents" class="dtPopInner ecoPopDs left" style="display:none">
						<p>[개인컵 리워드 설정]은 스타벅스 카드를<br>
						등록한 회원만 이용 가능한 서비스입니다.<br>
						카드를 등록하시겠어요?</p>
						<br>
					</div>
					<div class="dtPopBtn">
						<a id="tumblerPopConfirmBtn" class="dtPopBtn1 confirm pwdCheckBtn">확인</a>
						<a id="tumblerPopCancelBtn" class="dtPopBtn2 cancel">취소</a>
					</div>
					<!--// 버튼 -->
				</div>
				<!-- 개인컵 리워드  MSR 회원 확인 Popup e-->
				<div class="dt_pop_up_dimm" style="display:none"></div>
				
				<!-- 150517 추가 - 문진욱 -->
				<aside class="copyright">
					<a class="c_00b050" href="footer/etc/privacy">개인정보처리방침</a>
					<a href="footer/etc/rules_vod" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="footer/etc/rules">홈페이지 이용약관</a>
					<a href="footer/etc/rules_loc" class="mbn">위치정보 이용약관</a>
					<a href="footer/etc/rules_msr" class="mbn">스타벅스 카드 이용약관</a>
					<a href="footer/etc/rules_non" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="footer/etc/rules_mdp">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="footer/etc/hotline" class="last">윤리경영 핫라인</a>
					<br>
					<a class="btned_link" href="footer/etc/coming_route">찾아오시는 길</a>
					<a class="btned_link" href="footer/partnership/new_partner">신규입점제의</a>
					<a class="btned_link" href="footer/etc/sitemap">사이트 맵</a><br>
					<ul class="copy_menu">
						<li>사업자등록번호 : 201-81-21515</li>
						<li>주식회사 에스씨케이컴퍼니 대표이사 : 송 데이비드 호섭</li> <!-- 220105 수정 -->
						<li>TEL : 1522-3232</li>
						<li>개인정보 책임자 : 하익성</li><!-- 20210125 수정 -->
					</ul>
					<span class="en">ⓒ 2022 Starbucks Coffee Company. All Rights Reserved.</span>
				</aside>
				<!-- 150517 추가 - 문진욱 end -->
			</footer>
			<!-- footer end -->
		
			
			<script src="common/js/jquery-1.10.2.min.js"></script>
			<script src="common/js/%40common.js"></script>
			<script src="common/js/jquery-ui.min.js?v=220207"></script>
			<script src="common/js/idangerous.swiper-2.1.min.js"></script>
			<script src="common/js/idangerous.swiper.scrollbar-2.1.js"></script>
			<script src="common/js/jquery.bxslider.min.js"></script>
			<script src="common/js/skdslider.min.js"></script>
			<script src="common/js/jquery.drive.js"></script>
			<script src="common/js/jquery.easing-1.3.min.js"></script>
			<script src="common/js/jquery.elevatezoom.js"></script>
			<script src="common/js/jquery.flip.js"></script>
			<script src="common/js/jquery.jsmovie.1.4.4.min.js"></script>
			<script src="common/js/jquery.mCustomScrollbar.concat.js"></script>
			<script src="common/js/jquery.number.min.js"></script>
			<script src="common/js/jquery.rotate.2.3.js"></script>
			<script src="common/js/jquery.scrollbar.js"></script>
			<script src="common/js/jquery.scrollTo-1.4.2-min.js"></script>
			<script src="common/js/jquery.superscrollorama.js"></script>						
			<script src="common/js/jquery.transform2d.js"></script>
			<script src="common/js/jquery.transform3d.js"></script>			
			<script src="common/js/greensock/TweenMax.min.js"></script>
			<script src="common/js/masonry.pkgd.js"></script>
			<script src="common/js/common.js"></script>
			<script src="common/js/gnb.js?v=220502"></script>
			<script src="common/js/header.js?v=200915"></script>
			<script src="common/js/footer.js?v=210818"></script>

			<script src="common/js/jquery.tmpl.js"></script>
			<script src="common/js/jquery.tmplPlus.min.js"></script>
			<script src="common/js/jquery.ezmark.min.js"></script>
			<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
			
			<!--
			<script src="/common/js/swiper.jquery.min.js"></script>
			<script src="/common/js/swiper.min.js"></script>
			<script src="/common/js/util.js"></script>
			-->
			
		
			<script src="common/js/openevent/openevent.js"></script>
			<script src="common/js/open_event_control.js"></script>
			<script type="text/javascript">
				
				var mrSlider;
				
				$(document).ready(function(){
					/* 20171204 kbs 페이지별 head 내 title 변경 */
					if( $('.smap li').last().text() == "" )
					{
						$('#titleJoin').text("Starbucks Korea"); //220117 수정
					}
					else
					{
						$('#titleJoin').text( $('.smap li').last().text() + " | Starbucks Korea" ); //220117 수정	
					}
					
					$('#pickDate1, #pickDate2').datepicker({
						 "dateFormat"      : "yy-mm-dd"
						/* ,"dayNamesMin"     : ['일', '월', '화', '수', '목', '금', '토'] */
						,"maxDate"         : "+0m +0w"
						/* ,"monthNamesShort" : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] */
					});
			
// 					var sbox = $('.my_ms_select select');
// 					sbox.change(function(){
// 						접근성_20171123 삭제
// 						var sbox_name = $(this).children('option:selected').text();
// 						$(this).siblings('label').text(sbox_name);
// 					});접근성_20171201 삭제

					/* s::20210714 수정 */
					/* 170201 수정 - 황기흠 */
					if ((myWindow > 640) && (myWindow <= 1200)) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:3,
							maxSlides:3,
							slideWidth:210,
							slideMargin:0,
							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:3000,
							infiniteLoop: true,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					} else if (myWindow <= 640) {
						var faSlider = $('.footer_awards_slider').bxSlider({
							minSlides:1,
							maxSlides:1,
							slideWidth:320,
							slideMargin:0,
							controls:false,
							auto:true,
							autoControls:true,
							autoControlsCombine:true,
							pause:3000,
							infiniteLoop: true,
							pagerSelector:'.footer_slider_pagers',
							autoControlsSelector:'.footer_slider_controls'
						});
					}
					/* 170201 수정 - 황기흠 end */
					/* e::20210714 수정 */
					
					/* 구명준 추가 시작 탭 */			
					/* 20171127 중복 스크립트 삭제 coffee.js 내 존재 */
// 					$(".content_tabmenu > .tab").bind("click focusin", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
// 					$(".content_tabmenu > .tab").bind("click focusout", function(){
// 						if(!$(this).hasClass("on")) {
// 							$(this).parent().children(".on").removeClass("on");
// 							var index = $(this).addClass("on").closest(".content_tabmenu").children(".tab").index(this);
// 							$(this).parent().children(".panel").hide().eq(index).show();
// 						}
// 						return false;
// 					});
					/* 구명준 끝 */

					/* 150714 추가 - 박종현 */
					var itvChangeLink = setInterval(function() {
						if (m_jsonRewardSummary != null) {
							// 등록된 카드가 없으면 링크 변경
							if (m_jsonRewardSummary.cardInfo.cardNumber == "") {
								if (location.href.indexOf("my/") > -1) {
									var url = "my/mycard_none";
									
									$('a[data-href="my/mycard_index"]').attr("data-href", url);
									$('a[data-href="my/mycard"]').attr("data-href", url);
									$('a[data-href="my/mycard_charge"]').attr("data-href", url);
									$('a[data-href="my/mycard_lost"]').attr("data-href", url);
								}
							}
							
							// 로그인 상태에 따라 등록 및 조회 페이지 링크 변경
							if (m_jsonRewardSummary.msrMemberYn == "Y") {
								$('a[href="msr/scard/register_inquiry"]').attr("href", "my/mycard_info_input");
							} else {
								$('a[href="msr/scard/register_inquiry"]').attr("href", "my/reward");
							}
							
							clearInterval(itvChangeLink);
						}
					}, 150);
					/* 150714 추가 - 박종현 end */
					$('#goPage').bind('click', function(){
						if (myWindow > 640) {
							location.href="footer/co_sales/index";
						}
					});
					
                    /*kbs Express DT 접근 시 MSR 회원 체크, 비밀번호 체크*/
                    var dtPopHt = $('.dtPop').height() * -0.5;
                    $('.dtPop').css('margin-top',dtPopHt);
                    
                    $('#dtPopCancelBtn, #dtPopCommonCloseBtn, #dtPopCancelBtnMsr, #dtPopCommonCloseBtnMsr, .commonBtn, .commonBtnMsr').click(function(){
                        $('#msrCheckPop').fadeOut();
                        $('#commonPop').fadeOut();
                        $('.dt_pop_up_dimm').fadeOut();
                    });
                    
                    $('#dtClauseCloseBtn').click(function(){
                        $('#privatePop').fadeOut();
                    });
                    
					$('#dtClauseCloseXBtn').click(function(){
						$('#privatePop').fadeOut();
					});
                });
                
                /* 개인컵 리워드 s */
                function fn_rewardTumblerMsrCheck(){
                	fn_hideGnbMenu();
					var url = document.location.pathname;
					fn_showrewardTumblerMsrCheckLayer(url);
                }
                function fn_showrewardTumblerMsrCheckLayer(url){
                	/* 로그인 체크  */
                	$.ajax({
                    	type: 'post',
                    	url : '/edt/edtCheckLogin',
                    	data : {},
                    	dataType : 'json',
                    	jsonp : 'callback',
                    	success : function(_response){
                    		
                    		if(_response.result_code != "SUCCESS"){
                    			
                            	if(url.length == 0){
                            		url = location.href;
                            	}  
                            	location.href = "login/login?redirect_url=" + encodeURIComponent(url);
                    			
                    		}else{
                    			//MSR 회원 여부 체크
                    			if (m_jsonRewardSummary == null) {
                    				 $.ajax({
                                     	type: 'post',
                                     	url : '/interface/getMsrRewardSummary',
                                     	data : {},
                                     	dataType : 'json',
                                     	jsonp : 'callback',
                                     	async : false,
                                     	success : function(_response){
                                     		if (_response.result_code == "SUCCESS") {
												m_jsonRewardSummary = jQuery.parseJSON(_response.data);
												fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
											}
                                     	}
                                   	});
								}else{
									
									fn_showrewardTumblerMsrCheckPopup(m_jsonRewardSummary);
								}
                    		}
                    	}
                    });
                }
                
                function fn_showrewardTumblerMsrCheckPopup(obj){
                	if( obj.msrMemberYn == "Y"){ /*msr 회원일 경우 페이지 이동*/
                		location.href = "my/reward_tumbler";
                    }else{/* msr 비회원일 경우 팝업창 노출 */
                        $('#msrCheckPop_rewardTumbler').fadeIn();
                        $('.dt_pop_up_dimm').fadeIn();
                        $('#msrCheckPop_rewardTumblerContents').show();
                        $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').show();
                        $('#tumblerPopConfirmBtn').on('click', function(){
                        	// msr 비회원일 경우 카드 등록 페이지로 이동
                        	location.href = "my/mycard_info_input";
                        });
                    }
                }
                $('#tumblerPopCommonCloseBtn, #tumblerPopCancelBtn').click(function(){
                    $('#msrCheckPop_rewardTumbler').fadeOut();
                    $('.dt_pop_up_dimm').fadeOut();
                    $('#msrCheckPop_rewardTumblerContents').hide();
                    $('#tumblerPopConfirmBtn, #tumblerPopCancelBtn').hide();
                });
                /* 개인컵 리워드 e */
			</script>

			<script src="common/js/jquery.transit.min.js"></script>
			<script>
				// 150805 DOM 수정
				$('div.msr_card_zone').bind('click', function(){
					if($('div.mycard_area2').css("display")=="none"){
						$('div.mycard_area1').hide();
						$('div.mycard_area2').fadeIn();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon2.png').attr('alt','결제하기'); // 접근성_20171106 alt 추가
					}else{
						$('div.mycard_area1').fadeIn();
						$('div.mycard_area2').hide();
						$('.mycard_one img').attr('src', '//image.istarbucks.co.kr/common/img/common/payment_icon1.png').attr('alt', '결제완료');// 접근성_20171106 alt 추가
					}
				});
				// 150805 DOM 수정 end
			
				(function($) {
					$.fn.seqfx = function() {
						var elements = this,
							l = elements.length,
							i = 0;
		
						function execute() {
							var current = $(elements[i]);
							i = (i + 1) % l;
		
							current
								.animate({ rotateY: '360deg' }, 2000)
								.animate({ rotateY: '-360deg' }, 2000, execute);
						}
						execute();
						return this;
					};
				}(jQuery));
				$('.mycard_one').seqfx();
			</script>
						
			<script src='common/js/makePCookie.js'></script>
		
			<script>
				$(document).ready(function () {
					$('a[href*="card_list"] , a[href*="drink_list"] , a[href*="food_list"] , a[href*="product_list"]').on("click", function () {
						Cookies.deleteCookie("MENU_TAB");
						Cookies.deleteCookie("MENU_CATE");
						Cookies.deleteCookie("MENU_OPT");
					});
				});
			</script>
		

		<script src="common/js/coffee.js"></script>
		
		<script>
        var $PACKAGE = "03";
			$(document).ready(function(){
                
                $.openevent.getStamp('E');

				
				// jsp 추가
				$(".cf_select_box select").on("change",function(){
					$(this).prev()($(this).find("option:selected").text());
					}).prev()(function() {
					return $(this).next().find("option:selected").text();
				});

				if(myWindow <= 640){
					var bh = 141;// 접근성_20171127 위치 변경
					$('dl.content_tabmenu dt.tab_05').removeClass('tab_last');
					$('dt.box_bg, dl.content_tabmenu dt.tab').bind('click', function(){
// 						var bh = 141;// 접근성_20171127 위치 변경
						if($('dt.box_bg').css('height')=='35px'){
							$('dt.box_bg').animate({height: bh }, 500, function(){
								$('dl.content_tabmenu dt a').show();
							});
						}else{
							$('dt.box_bg').css({height: 35});
							$('dl.content_tabmenu dt:not(.on) a').hide();
						}
						if($('dl.content_tabmenu dt.tab_01').hasClass('on')){
							$('dl.content_tabmenu dt.tab_01').css({top: 11});
							$('dl.content_tabmenu dt.tab_02').css({top: 36});
							$('dl.content_tabmenu dt.tab_03').css({top: 63});
							$('dl.content_tabmenu dt.tab_04').css({top: 88});
							$('dl.content_tabmenu dt.tab_05').css({top: 113});
						}else if($('dl.content_tabmenu dt.tab_02').hasClass('on')){
							$('dl.content_tabmenu dt.tab_01').css({top: 36});
							$('dl.content_tabmenu dt.tab_02').css({top: 11});
							$('dl.content_tabmenu dt.tab_03').css({top: 63});
							$('dl.content_tabmenu dt.tab_04').css({top: 88});
							$('dl.content_tabmenu dt.tab_05').css({top: 113});
						}else if($('dl.content_tabmenu dt.tab_03').hasClass('on')){
							$('dl.content_tabmenu dt.tab_01').css({top: 36});
							$('dl.content_tabmenu dt.tab_02').css({top: 63});
							$('dl.content_tabmenu dt.tab_03').css({top: 11});
							$('dl.content_tabmenu dt.tab_04').css({top: 88});
							$('dl.content_tabmenu dt.tab_05').css({top: 113});
						}else if($('dl.content_tabmenu dt.tab_04').hasClass('on')){
							$('dl.content_tabmenu dt.tab_01').css({top: 36});
							$('dl.content_tabmenu dt.tab_02').css({top: 63});
							$('dl.content_tabmenu dt.tab_03').css({top: 88});
							$('dl.content_tabmenu dt.tab_04').css({top: 11});
							$('dl.content_tabmenu dt.tab_05').css({top: 113});
						}else if($('dl.content_tabmenu dt.tab_05').hasClass('on')){
							$('dl.content_tabmenu dt.tab_01').css({top: 36});
							$('dl.content_tabmenu dt.tab_02').css({top: 63});
							$('dl.content_tabmenu dt.tab_03').css({top: 88});
							$('dl.content_tabmenu dt.tab_04').css({top: 113});
							$('dl.content_tabmenu dt.tab_05').css({top: 11});
						}
						
					});
			          // 접근성_20171127 키보드 이벤트 추가
			          $('dt.box_bg, dl.content_tabmenu dt.tab').bind('keydown', function (e) {
			            var $this = 0;
			            var $tablinks = $('.content_tabmenu > dt  a');
			            var keycode = e.which;
			            $tablinks.each(function (i, el) {
			              if (el === event.target) $this = i;
			            });
			            switch (keycode) {
			              case 38:
			                keypress_change();
			                $tablinks.eq(--$this).focus();
			                e.preventDefault();
			                break;
			              case 40:
			                keypress_change();
			                if (++$this >= $tablinks.length) $this = 0;
			                $tablinks.eq($this).focus();
			                e.preventDefault();
			                break;
			            }
			          });
			          function keypress_change(){
			            $('dt.box_bg').animate({ height: bh }, 500, function () {
			              $('dl.content_tabmenu dt a').show();
			            });
			          }
			          // 접근성_20171127 키보드 이벤트 추가 end
				}
				// jsp 추가 end
				
				if($PACKAGE == '01') {
					$(".content_tabmenu > .tab").eq(1).click();
					$('ul.smap li .this').text('푸어 오버');
				} else if($PACKAGE == '02') {
                    $(".content_tabmenu > .tab").eq(2).click();
                    $('ul.smap li .this').text('아이스 푸어 오버');
                } else if($PACKAGE == '03') {
                    $(".content_tabmenu > .tab").eq(3).click();
                    $('ul.smap li .this').text('커피 메이커');
                } else if($PACKAGE == '04') {
					$(".content_tabmenu > .tab").eq(4).click();
					$('ul.smap li .this').text('리저브를 매장에서 다양하게 즐기는 법');
					setTimeout(fn_imgSize, 150);
				
                    
                }

			    $(".content_tabmenu > .tab").bind("click", function(){// 접근성_20171127 focusin 이벤트 삭제
		            if ( $(this).index() == 9 ) {
		            	$('ul.smap li .this').text('리저브를 매장에서 다양하게 즐기는 법');
		            	fn_imgSize();
		            } else {
		            	$('.smap .this').text($(this).find('a').text());	
		            }
			    });
			});
		</script>
		
		<!-- 20170713  추가 스크립트  20170727  추가 수정함.. -->
		<script type="text/javascript">
			
			$(function(){
				var $clicked_bnr; // 접근성_20171127 추가
				$('.howtoEnjoy').find('a').on('click', function(){
						
					var layerIndex=0;
					var img_Width=0;
					$clicked_bnr = $(this);// 접근성_20171212 추가
					$('.howtoEnjoy').fadeIn().focusIn;
					var topHheight = (($(window).height() - $('.layer_howtoEnjoy').outerHeight()) / 2) + $(window).scrollTop();
					var windowWidth =$(window).width();
	
					// layer open
					$('.layer_howtoEnjoy').css({"display":"block", "top": topHheight });
					if (windowWidth < 360){
						$('.layer_howtoEnjoy').css({"display":"block", "top": topHheight  + 42});
					}
					$('.layer_howtoEnjoy').css("left", (($(window).width() - $('.layer_howtoEnjoy').outerWidth()) / 2) + $(window).scrollLeft()).attr("tabindex", "0").attr("aria-hidden", "false").focus();
					$('.dimd').show();
	
					var idx=$(this).parent('li').index();
					layerIndex = idx;				
					$("#imgBox").children('li').eq(idx).addClass('show');
					$("#showBox").next('ol').children("li").eq(idx).addClass("now");
					
					$(".prev").click(function() {
						layerIndex--;
						if (layerIndex <= 0) {
							layerIndex = 0;
						}
						$(".show").removeClass("show").prev().addClass("show");
						$("ol li").removeClass('now');
						$("ol li").eq(layerIndex).addClass('now');
						$("#imgBox").stop().animate({"left" : -(layerIndex * img_Width)}, function() {
							showBtn();
						});
					});
	
					$(".next").click(function() {
						layerIndex++;
						if (layerIndex >= 4) { // 20210813 수정
						 layerIndex = 4; // 20210813 수정
						 }
						$(".show").removeClass("show").next().addClass("show");
						$("ol li").removeClass('now');
						$("ol li").eq(layerIndex).addClass('now');
						$("#imgBox").stop().animate({"left" : -(layerIndex * img_Width)}, function() {
							showBtn();
						});
					});
	
					$("ol li").click(function() {
						layerIndex = $(this).index();
						$(".now").removeClass("now");
						$(this).addClass("now");
						$(".show").removeClass("show");
						$("#imgBox").children("li").eq(layerIndex).addClass("show");
						$("#imgBox").stop().animate({"left" : -(layerIndex * img_Width)}, function() {
							showBtn();
						});
					});
	
					function showBtn() {
						$("#showBox").children("a").show();
						if (layerIndex <= 0) {
							layerIndex = 0;
							$("#showBox").children("a").eq(0).hide();
						} else if (layerIndex >= 4) { // 20210813 수정
							layerIndex = 4; // 20210813 수정
							$("#showBox").children("a").eq(1).hide();
						}
					}
	
					function popSize(){
						img_Width=$('#showBox').width();
						$("#imgBox").css("left",-(layerIndex*img_Width));
						$("#imgBox").children("li").css('width', img_Width);    
						$("#showBox").children("a").show(); 
						if(layerIndex==0){
							$("#showBox").children("a").eq(0).hide();
						} else if(layerIndex==4){// 20210813 수정
							$("#showBox").children("a").eq(1).hide();
						};
						$('.layer_howtoEnjoy').center();
					}
					popSize();
					$(window).resize(popSize);
				
					/* layer close*/
					$('.layer_howtoEnjoy').find('.close_Layer').click(function() {
						topHheight =0;
						$('.layer_howtoEnjoy').fadeOut().attr("aria-hidden","true").attr("tabindex","-1"); // 접근성_20171127 aria, tabindex 추가
						$('.layer_howtoEnjoy').fadeOut();
						$('.dimd').fadeOut();
						$("#imgBox").children('li').removeClass('show');
						//$("#imgBox").css("left", 0);
						$(".now").removeClass("now");
						$clicked_bnr && $clicked_bnr.focus();// 접근성_20171212 추가
						layerIndex = 0;
					});
				
				
				});
	
			});
	
			$(function() {
				var imgSize = $(".howtoEnjoy .p").find('a').height();
				$('.howtoEnjoy .p  li').css("height", imgSize);
			});
	
			$(function() {
				var imgSize = $(".howtoEnjoy .m").find('a').height();
				$('.howtoEnjoy .m  li').css("height", imgSize);
				//$('.howtoEnjoy .m  li:nth-child(3)').css("margin-top", imgSize + 50); 20210727 주석 처리
				//$('.howtoEnjoy .m  li:nth-child(5)').css("margin-top", imgSize + 80); 20210727 주석 처리
			});
	

			function fn_imgSize() {
                var windowWidth = $(window).width();
                if (windowWidth > 641) {
					var imgSize = $(".howtoEnjoy .p").find('a').height();
                    $('.howtoEnjoy .p li').css("height", imgSize);
                }
                if (windowWidth < 641) {
                    var imgSize = $(".howtoEnjoy .m").find('a').height();
                    var imgWidth = $(".howtoEnjoy .m").find('a').width(); //20170731 추가
                    
                    $('.howtoEnjoy .m li').css("height", imgSize);
                    //$('.howtoEnjoy .m  li:nth-child(3)').css({"margin-top":imgSize+60, "margin-left": -imgWidth}); 20210727 주석 처리
                    //$('.howtoEnjoy .m  li:nth-child(5)').css({"margin-top":imgSize+80, "margin-left": -imgWidth}); 20210727 주석 처리
				}
     		}

			
			$(window).ready(fn_imgSize);
			$(window).resize(fn_imgSize);
	   </script>
	   <!-- //20170713  추가 스크립트  -->
	   </div><!-- 접근성_20171127 <div id="wrap"> 닫힘태그 누락 -->
	</body>

</html>