<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
	








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
	<link href="common/css_ie/style.css" rel="stylesheet">
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

	<link href="common/css/style_error.css" rel="stylesheet">
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
					<div class="top_msr_wrap" style="">
					<!-- 유저인포 -->
					<div class="user_greet">
						<div class="user_pic_area">
							<img alt="사용자 아이디" src="//image.istarbucks.co.kr/common/img/common/user_pic_sample.jpg">
							<p class="msr_user_mask msr_user_mask01"></p>
							<p class="msr_user_mask msr_user_mask02"></p>
							<p class="msr_user_mask msr_user_mask03"></p>
							<p class="msr_user_mask msr_user_mask04"></p>
						</div>
						<p class="user_greet_txt"><strong><!-- 홍길동 --></strong>님, 안녕하세요!</p>
						<p class="msr_btn_setting"><a href="/my/myinfo_modify_login.do">개인정보 수정</a></p>
					</div>
					<!-- 유저인포 end -->
					<span class="msr_sep_line"></span>

					<!-- 유저레벨 -->
					<!-- MSR 회원 -->
					<div class="user_level" style="display:none;">
						<a href="/my/reward.do">
							<p class="level_star_bg en">0</p>
							<p class="user_level_txt"><!-- <strong class="t_ac8432 en userGrade">Gold Level</strong><br /><strong>무료음료</strong> 획득 별까지<br><strong class="necessaryStar">0개</strong> 남았습니다. --></p>
						</a>
					</div>
					<!-- MSR 회원 end -->
					
					<!-- 일반회원 -->
					<div class="msr_lead">
						<a href="/msr/msreward/level_benefit.do">
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
						<p class="msr_card_area" onclick="location.href = '/my/mycard_index.do';" style="cursor:pointer;"><img alt=""></p>
						<p class="card_info_txt">잔액 <strong class="en balance">0</strong>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<div class="msr_card_zone m_card_pic">
						<div class="mycard_area1">
							<img alt="카드이름">
						</div>
						<div class="mycard_area2">
							<img alt="카드이름" src="//image.istarbucks.co.kr/common/img/common/mycard2.png">
							<p class="num"><!-- 1234-1234-1234-1234 --></p>
							<p class="barcord"><!-- <img src="//image.istarbucks.co.kr/common/img/common/bacord.png" alt=""> --></p>
						</div>
						<div class="mycard_one" style="transform: rotateY(239.852deg);">
							<!-- <div class="front"> -->
							<img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt="">
							<!-- </div> -->
							<!-- <div class="back"><img src="//image.istarbucks.co.kr/common/img/common/payment_icon1.png" alt=""></div> -->
						</div>
						<p class="mycard_money_result">잔액 <span class="en balance"><!-- 550,000 --></span>원</p>
						<!-- 150924 - 다른카드보기버튼 추가 -->
						<p class="btn_other_more"><a href="/my/mycard_index.do">다른 카드 보기</a></p>
						<!-- 150924 - 다른카드보기버튼 추가 ebd -->
					</div>
					<!-- 150805 DOM 수정 -->
					<!-- MSR 회원 end -->
										
					<!-- 일반회원 -->
					<div class="sb_card_regi">
						<a href="javascript:void(0);">
							<p class="icon_add_card" onclick="location.href = 'my/mycard_info_input';"><img alt="카드등록 아이콘" src="//image.istarbucks.co.kr/common/img/common/icon_add_card.png"></p>
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
							<a href="/my/calendar.do">
								<p></p>
								<span>캘린더</span>
							</a>
						</div>
						<div class="notice_icon3">
							<a href="/my/ecoupon.do">
								<p>
									<span class="validCoupontCnt">0</span>
								</p>
								<span>e-쿠폰</span>	
							</a>
						</div>
						
						<!-- 20170510 추가 : 아이콘추가 -->
						<div class="notice_icon4">
							<a href="/eFreq/status.do?TYPE=BARCODE">
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
							<a href="mycard_info_input">카드 등록</a>
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
						<li class="tablet_gnb02"><a href="index" required="login"><span class="a11y">마이스타벅스</span></a><!-- 접근성_20171106 span추가 --></li>
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
							<li><a href="index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">My 리워드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="reward" required="login">리워드 및 혜택</a></li>
									<li><a href="reward_star_history" required="login">별 히스토리</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 카드<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="mycard_index" required="login">보유 카드</a></li>
									<li><a href="mycard_info_input" required="login">카드 등록</a></li>
									<li><a href="mycard_charge" required="login">카드 충전</a></li>
									<li><a href="mycard_lost" required="login">분실신고/잔액이전</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="msr/sceGift/gift_step1" required="login">선물하기</a></li>
									<li><a href="egiftCard" required="login">선물 내역</a></li>
									<li><a href="egiftCard_shopping_bag" required="login">장바구니 내역</a></li>
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
							<!-- <li><a href="my/drink_shop" required="login">My 음료/매장</a></li> -->
							<li><a href="my/my_menu" required="login">My 메뉴</a></li>
							
							
									<li><a href="vocList" required="login">My 고객의 소리</a></li>
							<li><a href="eReceiptList" required="login">전자영수증</a></li>
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
							<li><a href="coffee/index">한눈에 보기</a></li>
							<li>
								<a role="button" href="javascript:void(0);">커피<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<li><a href="coffee/product_list">스타벅스 원두</a></li>
									<li><a href="coffee/product_list-1?PACKAGE=01">스타벅스 비아</a></li>
									<!-- <li><a href="coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li> 20210915 삭제 -->
									<li><a href="coffee/product_list-2?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li><!-- 20210915 추가 -->
								</ul>
							</li>
							<li><a href="coffee/productFinder">나와 어울리는 커피</a></li>
							<li>
								<a role="button" href="javascript:void(0);">스타벅스 리저브™<span class="mob_gnb_arrow_down"></span></a>
								<ul>
									<li><a href="coffee/reserve_info">ABOUT</a></li>
									<li><a href="coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">에스프레소 음료<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가  -->
								<ul>
									<li><a href="coffee/doppio">도피오</a></li>
									<li><a href="coffee/espresso_macchiato">에스프레소 마키아또</a></li>
									<li><a href="coffee/americano">아메리카노</a></li>
									<li><a href="coffee/caramel_macchato">마키아또</a></li>
									<li><a href="coffee/cappuccino">카푸치노</a></li>
									<li><a href="coffee/latte">라떼</a></li>
									<li><a href="coffee/mocha">모카</a></li>
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
									<li><a href="coffee/higher_enjoy">커피 프레스</a></li>
									<li><a href="coffee/higher_enjoy-1?PACKAGE=01">푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy-2?PACKAGE=02">아이스 푸어 오버</a></li>
									<li><a href="coffee/higher_enjoy-3?PACKAGE=03">커피 메이커</a></li>
									<li><a href="coffee/higher_enjoy-4?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>
								</ul>
							</li>
							<li>
								<a role="button" href="javascript:void(0);">커피 이야기<span class="mob_gnb_arrow_down"></span></a><!-- 접근성_20171106 role 추가 -->
								<ul>
									<!-- 20210914 수정 -->
									<li><a href="coffee/story">농장에서 우리의 손으로</a></li>
									<!-- <li><a href="coffee/story?PACKAGE=01">에스프레소 초이스</a></li> -->
									<li><a href="coffee/story-1?PACKAGE=02">최상의 아라비카 원두</a></li>
									<li><a href="coffee/story-2?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>
									<!-- <li><a href="javascript:void(0);">추출방식 알아보기</a></li> -->
									<li><a href="coffee/story-3?PACKAGE=04">스타벅스 디카페인</a></li>
									<li><a href="coffee/story-4?PACKAGE=05">클로버® 커피 추출 시스템</a></li>
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
	<li class="util_nav02"><a href="index" required="login">My Starbucks</a></li>
	<li class="util_nav03"><a href="menu/orderList">Order</a></li>
	<li class="util_nav04"><a href="store/store_map">Find a Store</a></li>
</ul>
				</nav>
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

	
	<!-- container -->
	<div id="container">
		<div class="need_login_wrap">
			<figure class="icon_com_lock"></figure>
			<div class="need_login_txt">
				<strong class="need_login_emphasis"><span class="t_006633">로그인</span> 시 이용 가능합니다.</strong>
				<p>해당 서비스를 이용하시려면 <strong>스타벅스 회원으로 가입</strong>하시기 바랍니다.</p>
				<ul class="need_login_btns">
					<li class="need_login_btn1"><a href="javascript:void(0);">로그인</a></li>
					<li class="need_login_btn2"><a href="javascript:void(0);">회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- container end -->
	
	<div id="container">
                <!-- 서브 타이틀 -->
                
	<header class="ms_sub_tit_wrap">
		<div class="ms_sub_tit_bg">
			<div class="ms_sub_tit_inner">
				<h4><img alt="My 음료/매장" src="/common/img/util/ms_ttl.png"></h4>
				<ul class="smap">
					<li><a href="/"><img src="//image.istarbucks.co.kr/common/img/common/icon_home_w.png" alt="홈으로"></a></li>
					<li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow_w.png" alt="작은 맵 화살표"></li>
					<li><a href="/my/index.do">My Starbucks</a></li>
					
					
				</ul>
			</div>
		</div>
	</header>
                <!-- 서브 타이틀 end -->
                
                <!-- 내용 -->
                <div class="ms_cont_wrap">
                    <div class="ms_cont">
                        <!-- 150528 - 문진욱 -->
                        <!-- 일반회원 -->
                        <div class="regular_user_index" style="display:none;">
                            <!-- 일반회원정보 -->
                            <section class="regu_user_info regu_info_add"><!-- 20200129 class="regu_info_add" 추가 -->
                                <article class="regu_user_info_center">
                                    <p><strong class="userName"><!-- 홍길동 --></strong> 님 안녕하세요.<br><span>(지금 스타벅스 카드를 등록하시면 <span class="en">Starbucks Rewards</span> 혜택을 받으실 수 있습니다.)</span></p> <!-- 스타벅스 리워드 수정 -->
                                    <!-- <a href="./myinfo_modify.do">개인정보 수정</a> -->
                                    <!-- 20160929 김민호 수정 -->
									<a href="./myinfo_modify_login">개인정보 수정</a>
									<a class="gray" href="./myinfo_modify_pwd">비밀번호 변경</a>
									<!-- 20160929 김민호 수정 end -->
                                    
                                </article>
                                <article class="regu_user_info_right">
                                    <div class="regu_user_info_rt">
                                        <a href="/whats_new/store_event_list?tab=2">
                                            <p class="icon_new_store"></p>
                                            <p class="icon_new_store_txt">신규 매장<br><strong>오픈 이벤트</strong></p>
                                            <p class="icon_new_store_mtxt">신규 매장 <strong>오픈 이벤트</strong></p>
                                            <span class="regu_next_arrow"></span>
                                        </a>
                                    </div>
                                    <div class="regu_user_info_rb">
                                        <a href="/whats_new/campaign_list">
                                            <p class="icon_evt_cup"></p>
                                            <p class="icon_evt_cup_txt">스타벅스<br><strong>전체 이벤트</strong></p>
                                            <p class="icon_evt_cup_mtxt">스타벅스 <strong>전체 이벤트</strong></p>
                                            <span class="regu_next_arrow"></span>
                                        </a>
                                    </div>
                                </article>
                            </section>
                            <!-- 일반회원정보 end -->
                            <!-- 카드혜택보기 -->
							<section class="card_advantage_wrap">
								<div class="card_advantage_int">
									<div class="card_advantage_icon">
										<figure class="card_advantage_icon1"></figure>
									</div>
									<div class="card_advantage_cont">
										<!-- 150706 DOM 수정 - 텍스트 수정 -->
										<div class="card_adv_txt1"><strong>아직 등록된 스타벅스 카드가 없으신가요?</strong><br>스타벅스 카드를 등록하시고 생일 무료음료 쿠폰과 다양한 스타벅스의<br> 리워드를 경험하세요. 스타벅스만의 특별한 혜택을 경험하실 수 있습니다.</div>
										<!-- 150706 DOM 수정 - 텍스트 수정 end -->
										<p class="card_adv_btn card_adv_btn1"><a href="/menu/card_list.do">스타벅스 카드 보기</a></p>
										<p class="card_adv_btn card_adv_btn2"><a href="/msr/sceGift/gift_step1.do">스타벅스 e-Gift Card 구매</a></p>
									</div>
								</div>
								<div class="card_advantage_inb">
									<div class="card_advantage_icon">
										<figure class="card_advantage_icon2"></figure>
									</div>
									<div class="card_advantage_cont2">
										<!-- 150706 DOM 수정 - 텍스트 수정 -->
										<div class="card_adv_txt2"><strong>스타벅스만의 특별한 혜택이 궁금하신가요?</strong><br>혜택에 편리함까지 더한 스타벅스 리워드로<br> 한층 더 스타벅스를 특별하게 즐기세요.</div> <!-- 스타벅스 리워드 수정 -->
										<!-- 150706 DOM 수정 - 텍스트 수정 end -->
										<p class="card_adv_btn card_adv_btn3"><a href="/msr/msreward/level_benefit.do">스타벅스 혜택보기</a></p>
									</div>
								</div>
							</section>
							<!-- 카드혜택보기 end -->                 
                            <!-- 매장 & 카드 -->
                            <section class="ms_sstore_charging">
                                <article class="ms_sstore_charging_l">
                                    <header><strong>새로운 스타벅스 매장을 소개합니다.</strong><br>전국의 새로운 스타벅스의 얼굴들을 만나보세요~!</header>
                                    <div class="ms_sstore_slider">
                                    	<!-- 150721 수정 - 신규매장이 없을 경우  -->
                                    	<div class="no_store_wrap">
	                                    	<figure><img src="//image.istarbucks.co.kr/common/img/util/no_store.jpg" alt=""></figure>
											<p class="cont">신규 매장이 없습니다.</p>
										</div>
                                    	<!-- 150721 수정 - 신규매장이 없을 경우  end -->
                                        <ul class="yes_store_wrap">
                                        </ul>
                                        <script id="storeList" type="text/x-jquery-tmpl">
                                        	<li>
                                                <a href="/store/store_map.do?in_biz_cd=${s_biz_code}">
                                                    <div class="ms_sstore_slider_img">
                                                        <img alt="" src="${defaultimage}" onerror="this.src='/common/img/util/edwDefault.png'">
                                                    </div>
                                                    <div class="ms_sstore_slider_txt">
                                                        <strong>${s_name}</strong><br>
                                                        ${sido_name} ${gugun_name}<br>
                                                        <span class="date">${open_dt.substr(0, 4)}-${open_dt.substr(4, 2)}-${open_dt.substr(6, 2)}</span>
                                                    </div>
                                                </a>
                                            </li>
                                    	</script>
                                    </div>
                                </article>
                                <article class="ms_sstore_charging_r">
                                    <div class="ms_regi_card">
                                        <a href="javascript:void(0);" required="login" data-href="/my/mycard_info_input.do">
                                            <figure class="icon_ms_regi_card"></figure>
                                            <p><strong>카드등록</strong><br>카드를 등록하시고 다양한 리워드를 만나보세요.</p>
                                            <strong>카드등록</strong>
                                        </a>
                                    </div>
                                    <div class="ms_charge_card">
                                        <a href="javascript:void(0);" required="login" data-href="/my/mycard_charge.do">
                                            <figure class="icon_ms_charge_card"></figure>
                                            <p><strong>카드충전</strong><br>매장과 온라인에서 간편하게 충전하세요.</p>
                                            <strong>카드충전</strong>
                                        </a>
                                    </div>
                                    <div class="regu_mem_icon_wrap">
                                        <a class="regu_mem_icon1" href="javascript:void(0);" required="login" data-href="javascript:void(0);">
                                            <span class="regu_icon"></span> <!-- 20210302 수정 -->
                                            <span class="regu_txt">전자영수증</span> <!-- 20210302 수정 -->
                                        </a>
                                        <a class="regu_mem_icon2" href="javascript:void(0);" required="login" data-href="javascript:void(0);">
                                            <span class="regu_icon"></span>
                                            <span class="regu_txt">캘린더</span>
                                        </a>
                                        <a class="regu_mem_icon3" href="javascript:void(0);" required="login" data-href="javascript:void(0);">
                                            <span class="regu_icon"><i>0</i></span>
                                            <span class="regu_txt">e-쿠폰</span>
                                        </a>
                                    </div>
                                </article>
                            </section>
                            <!-- 매장 & 카드 end -->
                        </div>
                        <!-- 일반회원 end -->

                        <!-- msr 회원 -->
                        <div class="msr_user_index">
                            <!-- 유저정보 -->
                            <section class="ms_user_info ms_user_add"><!-- 20200123 class="ms_user_add" 추가 -->
                            	<!-- s::20200123 페이스북 프로필 기능 삭제 관련 메인 수정 -->
                                <article class="ms_user_info_left">
                                	<h5><span class="en">My</span> 리워드</h5>
                                	<p class="ms_user_stat mo_block">
                                		<span><strong class="userName"><!-- 홍길동 --></strong> 님은</span><br>
                                		<span>현재 <strong class="en userGrade t_bd9b60"><!--OOO Level --></strong>이십니다.</span>
                                	</p>
                                	<!-- 20200805 PLCC 추가 -->
                               		<div class="plcc-logo" style="display:none;">
                               			<img src="/common/img/util/plcc-logo.png" alt="Hyundai Card + STARBUCKS">
                               		</div>
                                	<figure class="en ms_user_starbg"><span class="totalStar"></span></figure>
                                    <p class="ms_user_stat_notice"><strong class="en t_bd9b60"><!--OOO Level --></strong>을 유지 중 입니다.<br>무료음료 쿠폰 발행까지 개의 별이 남았습니다.</p>
                                </article>
                                <article class="ms_user_info_right">
                                    <p class="ms_user_stat"><span><strong class="userName"><!-- 홍길동 --></strong> 님은</span> <span>현재 <strong class="en userGrade t_bd9b60"><!--OOO Level --></strong>이십니다.</span></p>
                                    <!-- 20200805 PLCC 추가 -->
                               		<div class="plcc-logo" style="display:none;">
                               			<img src="/common/img/util/plcc-logo.png" alt="Hyundai Card + STARBUCKS">
                               		</div>
                                    <div class="ms_user_stat_btns">
                                        <ul>
											<li><a href="/reward">리워드 및 혜택</a></li>
											<li><a href="/reward_star_history">별 히스토리</a></li>
											<li class="btn_black"><a href="/myinfo_modify_login">개인정보 수정</a></li>
											<li class="btn_gray"><a class="gray" href="/myinfo_modify_pwd">비밀번호 변경</a></li>
                                        </ul>
                                    </div>
                                </article>
                                <!-- e::20200123 페이스북 프로필 기능 삭제 관련 메인 수정 -->
                            </section>
                            <!-- 유저정보 end -->
                            <!-- 등록된 카드 없음 -->
							<section class="have_no_ms_card" style="display:none;">
								<i class="icon_nocard"></i>
								<p class="nocard_txt_guide"><strong>현재 등록된 스타벅스 카드가 없습니다.</strong><br>스타벅스만의 특별한 혜택을 이용하시기 위해서는 카드가 필요합니다.<br>스타벅스 카드를 등록하시고 생일 무료음료 쿠폰과<br>다양한 스타벅스의 리워드를 이용하세요.</p>
								<div class="nocard_btns">
									<ul>
										<li class="nocard_btn1"><a href="/msr/scard/about">스타벅스 카드 보기</a></li>
										<li class="nocard_btn2"><a href="/msr/sceGift/gift_step1">스타벅스 e-Gift Card 구매</a></li>
									</ul>
								</div>
							</section>
							<!-- 등록된 카드 없음 end -->
                            <!-- My 스타벅스 카드 -->
                            <section class="my_ms_card">
                                <div class="my_ms_card_inner">
                                    <header>
                                        <h5><span class="en">My</span> 스타벅스 카드</h5>
                                        <p class="recent_card">총 보유카드 : 장</p>
                                        <aside>
                                            <span><strong class="curSlideNo">1<!-- 카드 --></strong>/<span class="totalCnt">2<!-- 카드 --></span></span>
                                            <p>
                                                <a class="back" href="javascript:void(0);">이전카드 보기</a><!-- 접근성_20171201 수정 -->
                                                <a class="forward" href="javascript:void(0);">다음카드 보기</a><!-- 접근성_20171201 수정 -->
                                            </p>
                                        </aside>
                                        <!-- 160125 김민호 시작 -->
										<i class="card_list_btn1"><a href="/my/mycard_list"><img src="//image.istarbucks.co.kr/common/img/util/card_list_btn1.png" alt="보유카드 상세정보"><!-- 접근성_20171201 alt 수정 --></a></i>
										<!-- 160125 김민호 end -->
                                    </header>
                                    <div class="my_ms_card_cont">
                                        <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 191px;"><ul class="slider" style="width: 415%; position: relative; transition-duration: 0s; transform: translate3d(-632px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 632px;" class="bx-clone">             <figure>                            <img alt="스타벅스 e카드" src="https://image.istarbucks.co.kr/cardImg/20200108/.png" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">             </figure>                                                 <div class="my_ms_card_info">                                                                    <p class="my_ms_card_id">                                                         <span>스타벅스 e카드</span>                <!-- 접근성_20171201 title 추가 -->                         <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="스타벅스 e카드" title=" 카드명 수정">정보수정</a>                  </p>               <p class="my_ms_card_id_modify" style="display:none;">               <label class="a11y" for="cardName_">카드명</label><!-- 접근성_20171201 label 추가 -->                <input class="my_nick_modify_input" id="cardName_" type="text" maxlength="20" value="스타벅스 e카드"><!-- 접근성_20171201 id 추가 -->                <a class="my_nick_modify" href="javascript:void(0);" data-cardregnumber="38480106" role="button" title="카드명 수정">수정</a><!-- 접근성_20171201 role, title 추가 -->                <a class="my_nick_cancel" href="javascript:void(0);" role="button">취소</a><!-- 접근성_20171201 role 추가 -->               </p>                                           <p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">0</strong>원</p>                                                      <p class="my_ms_card_date">최종 사용일 : <span class="en">2021-12-05 12:16:30</span></p>                                                      <div class="my_ms_card_btns">                                                                           <p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="38480106">카드 관리</a></p>                                                           <p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="CHARGE" data-cardregnumber="38480106">충전하기</a></p>                                                                      </div>                                                               </div>                                             </li><li style="float: left; list-style: none; position: relative; width: 632px;">             <figure>                            <!-- 160125 김민호 시작 -->              <!-- 접근성_20171201 aria 추가 -->               <i class="representative_icon" aria-hidden="true"></i>              <!-- 160125 김민호 end -->                            <img alt="2018 서머 카드" src="https://image.istarbucks.co.kr/cardImg/20180411/003009.png" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">             </figure>                                                 <div class="my_ms_card_info">                                                                    <p class="my_ms_card_id">                                                         <span>2018 서머 카드</span>                <!-- 접근성_20171201 title 추가 -->                         <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="2018 서머 카드" title=" 카드명 수정">정보수정</a>                  </p>               <p class="my_ms_card_id_modify" style="display:none;">               <label class="a11y" for="cardName_">카드명</label><!-- 접근성_20171201 label 추가 -->                <input class="my_nick_modify_input" id="cardName_" type="text" maxlength="20" value="2018 서머 카드"><!-- 접근성_20171201 id 추가 -->                <a class="my_nick_modify" href="javascript:void(0);" data-cardregnumber="16306725" role="button" title="카드명 수정">수정</a><!-- 접근성_20171201 role, title 추가 -->                <a class="my_nick_cancel" href="javascript:void(0);" role="button">취소</a><!-- 접근성_20171201 role 추가 -->               </p>                                           <p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">6,100</strong>원</p>                                                      <p class="my_ms_card_date">최종 사용일 : <span class="en">2022-04-06 16:07:20</span></p>                                                      <div class="my_ms_card_btns">                                                                           <p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="16306725">카드 관리</a></p>                                                           <p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="CHARGE" data-cardregnumber="16306725">충전하기</a></p>                                                                      </div>                                                               </div>                                             </li><li style="float: left; list-style: none; position: relative; width: 632px;">             <figure>                            <img alt="스타벅스 e카드" src="https://image.istarbucks.co.kr/cardImg/20200108/.png" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">             </figure>                                                 <div class="my_ms_card_info">                                                                    <p class="my_ms_card_id">                                                         <span>스타벅스 e카드</span>                <!-- 접근성_20171201 title 추가 -->                         <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="스타벅스 e카드" title=" 카드명 수정">정보수정</a>                  </p>               <p class="my_ms_card_id_modify" style="display:none;">               <label class="a11y" for="cardName_">카드명</label><!-- 접근성_20171201 label 추가 -->                <input class="my_nick_modify_input" id="cardName_" type="text" maxlength="20" value="스타벅스 e카드"><!-- 접근성_20171201 id 추가 -->                <a class="my_nick_modify" href="javascript:void(0);" data-cardregnumber="38480106" role="button" title="카드명 수정">수정</a><!-- 접근성_20171201 role, title 추가 -->                <a class="my_nick_cancel" href="javascript:void(0);" role="button">취소</a><!-- 접근성_20171201 role 추가 -->               </p>                                           <p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">0</strong>원</p>                                                      <p class="my_ms_card_date">최종 사용일 : <span class="en">2021-12-05 12:16:30</span></p>                                                      <div class="my_ms_card_btns">                                                                           <p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="38480106">카드 관리</a></p>                                                           <p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="CHARGE" data-cardregnumber="38480106">충전하기</a></p>                                                                      </div>                                                               </div>                                             </li><li style="float: left; list-style: none; position: relative; width: 632px;" class="bx-clone">             <figure>                            <!-- 160125 김민호 시작 -->              <!-- 접근성_20171201 aria 추가 -->               <i class="representative_icon" aria-hidden="true"></i>              <!-- 160125 김민호 end -->                            <img alt="2018 서머 카드" src="https://image.istarbucks.co.kr/cardImg/20180411/003009.png" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">             </figure>                                                 <div class="my_ms_card_info">                                                                    <p class="my_ms_card_id">                                                         <span>2018 서머 카드</span>                <!-- 접근성_20171201 title 추가 -->                         <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="2018 서머 카드" title=" 카드명 수정">정보수정</a>                  </p>               <p class="my_ms_card_id_modify" style="display:none;">               <label class="a11y" for="cardName_">카드명</label><!-- 접근성_20171201 label 추가 -->                <input class="my_nick_modify_input" id="cardName_" type="text" maxlength="20" value="2018 서머 카드"><!-- 접근성_20171201 id 추가 -->                <a class="my_nick_modify" href="javascript:void(0);" data-cardregnumber="16306725" role="button" title="카드명 수정">수정</a><!-- 접근성_20171201 role, title 추가 -->                <a class="my_nick_cancel" href="javascript:void(0);" role="button">취소</a><!-- 접근성_20171201 role 추가 -->               </p>                                           <p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">6,100</strong>원</p>                                                      <p class="my_ms_card_date">최종 사용일 : <span class="en">2022-04-06 16:07:20</span></p>                                                      <div class="my_ms_card_btns">                                                                           <p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="16306725">카드 관리</a></p>                                                           <p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="CHARGE" data-cardregnumber="16306725">충전하기</a></p>                                                                      </div>                                                               </div>                                             </li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
                                        <script id="cardList" type="text/x-jquery-tmpl">
                                            <li>
												<figure>
													{{if delegateCardYn == 'Y'}}
													<!-- 160125 김민호 시작 -->
													<!-- 접근성_20171201 aria 추가 -->
														<i class="representative_icon" aria-hidden="true"></i>
													<!-- 160125 김민호 end -->
													{{/if}}
													<img alt="${cardNickname}" src="${cardImgUrl}" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';" />
												</figure>
                                                <div class="my_ms_card_info">
													{{if cardStatus == 'R'}}
                                                	    <p class="my_ms_card_id">
                                                        <span>${cardNickname}</span>
															<!-- 접근성_20171201 title 추가 -->
												            <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="${cardStatus}"  data-cardNickname="${cardNickname}" title=" 카드명 수정">정보수정</a>
													    </p>
														<p class="my_ms_card_id_modify" style="display:none;">
														<label class="a11y" for="cardName_">카드명</label><!-- 접근성_20171201 label 추가 -->
															<input class="my_nick_modify_input" id="cardName_" type="text" maxlength="20" value="${cardNickname}" /><!-- 접근성_20171201 id 추가 -->
															<a class="my_nick_modify" href="javascript:void(0);" data-cardregnumber="${cardRegNumber}" role="button" title="카드명 수정">수정</a><!-- 접근성_20171201 role, title 추가 -->
															<a class="my_nick_cancel" href="javascript:void(0);" role="button">취소</a><!-- 접근성_20171201 role 추가 -->
														</p>
													{{/if}}
													{{if goldCardRegStatus == 'X' || goldCardRegStatus == 'R'}}
														<p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">${$item.getBalance}</strong>원</p>
	                                                    <p class="my_ms_card_date">최종 사용일 : <span class="en">${balanceConfirmDate}</span></p>
	                                                    <div class="my_ms_card_btns">
															{{if cardStatus == 'R'}}
	                                                    	    <p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="${cardRegNumber}">카드 관리</a></p>
	                                                        	<p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="CHARGE" data-cardregnumber="${cardRegNumber}">충전하기</a></p>
															{{else [cardStatus == 'S']}}
																{{if balance > 0}}
																	{{if enableTransferYn == 'Y' }}
																		<p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="TRANSFER" data-cardregnumber="${cardRegNumber}" data-cardnickname="${cardNickname}" data-balance="${balance}">잔액 이전</a></p>
																	{{/if}}
																	{{if refundableYn == 'Y' }}
																		<p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="REFUND" data-cardregnumber="${cardRegNumber}" data-cardnickname="${cardNickname}" data-balance="${balance}">잔액 환불</a></p>
																	{{/if}}
																{{else}}
																	<p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="DELETE" data-cardregnumber="${cardRegNumber}">카드삭제</a></p>
																{{/if}}
															{{/if}}
	                                                    </div>
													{{else}}
														<p class="my_ms_state">${getGoldCardRegStatusText(goldCardRegStatus)}</p>
														<div class="my_ms_card_btns">
															<p class="my_ms_card_btn1"><a href="javascript:void(0);" data-type="MANAGEMENT" data-cardregnumber="${cardRegNumber}">카드 관리</a></p>
															{{if goldCardRegStatus == 'A'}}															
																<p class="my_ms_card_btn2"><a href="javascript:void(0);" data-type="MODIFY_GOLD_INFO" data-cardregnumber="${cardRegNumber}">신청정보수정</a></p>
															{{/if}}
														</div>	                                                    
                                                    {{/if}}
                                                </div>
                                            </li>
                                        </script>
                                    </div>
                                </div>
                            </section>
                            <!-- My 스타벅스 카드 end -->
                            <!-- 개인화 아이콘 -->
                            <section class="my_ms_per_icon">
                                <ul>
                                    <li class="my_ms_per_icon1">
                                        <a href="javascript:void(0);">
                                            <span class="icon"></span>                                            
                                            <span class="txt">전자영수증</span> <!-- 20210302 수정(인박스-전자영수증으로 변경) -->
                                        </a>
                                    </li>
                                    <li class="my_ms_per_icon3">
                                        <a href="javascript:void(0);">
                                            <span class="icon"><strong class="validCouponCnt">0</strong></span>
                                            <span class="txt">e-쿠폰</span>
                                        </a>
                                    </li>
                                    <li class="my_ms_per_icon4">
                                        <a href="/my/mycard_charge.do">
                                            <span class="icon"></span>
                                             <!-- 160609 텍스트 수정 -->
											<span class="txt">카드 충전</span>
											<!-- 160609 텍스트 수정 end -->
                                        </a>
                                    </li>
                                    <li class="my_ms_per_icon5">
                                        <a href="/my/mycard_info_input.do">
                                            <span class="icon"></span>
                                            <!-- 160609 텍스트 수정 -->
											<span class="txt">카드 등록</span>
											<!-- 160609 텍스트 수정 end -->
                                            
                                        </a>
                                    </li>
                                </ul>
                            </section>
                            <!-- 개인화 아이콘 end -->
                            <!-- 최근 마신 음료 -->
                            <section class="recent_bev_bg" style="">
                                <p class="recent_bev">가장 최근 2022년 4월 6일에 <strong>인천계양점</strong>에서 <strong class="t_0d5f34">(V)쉐이큰 자몽허니 블랙티</strong>를 마셨습니다.</p>
                                <span class="icon_recent_bev"></span>
                            </section>
                            <!-- 최근 마신 음료 end -->
                        </div>
                        <!-- msr 회원 end -->
                        <!-- 150528 - 문진욱 end -->
                        <!-- 메뉴 순위 -->
                        <section class="my_ms_rank">
                            <form name="edwForm" method="post">
                                <fieldset>
                                    <legend>스타벅스 메뉴 순위 폼</legend>
                                    <header class="my_ms_rank_head">
                                        <p class="p1">스타벅스 코리아를 사랑하는</p>
                                        <div class="my_ms_select">
                                            <label for="my_ms_age" class="a11y">연령대</label><!-- 접근성_20171201 class 추가, 텍스트 수정 -->
                                            <select id="my_ms_age" class="rank_select"><!-- 접근성_20171201 class 추가 -->
                                                <option value="10">10대</option>
                                                <option value="20" selected="selected">20대</option>
                                                <option value="30">30대</option>
                                                <option value="40">40대</option>
                                                <option value="50">50대</option>
                                            </select>
                                        </div>
                                        <div class="my_ms_select">
                                            <label for="my_ms_select" class="a11y">성별</label><!-- 접근성_20171201 class 추가, 텍스트 수정 -->
                                            <select id="my_ms_select" class="rank_select"><!-- 접근성_20171201 class 추가 -->
                                                <option value="M">남성</option>
                                                <option value="F" selected="selected">여성</option>
                                            </select>
                                        </div>
                                        <!-- 150706 DOM 수정 - 텍스트 수정 -->
										<p class="my_ms_last_txt">이 즐기는 메뉴가 궁금하시죠?</p>
										<!-- 150706 DOM 수정 - 텍스트 수정 end -->
										<a href="javascript:void(0)" class="my_ms_setBtn" role="button" title="메뉴 확인하기">확인</a><!-- 접근성_20171201 확인버튼 추가 -->
                                    </header>
                                    <span class="criteria">스타벅스 리워드<br>최근 일주일 판매 집계 기준</span> <!-- 스타벅스 리워드 수정 -->
                                    <article class="my_ms_rank_wrap">
                                        <div class="my_ms_rank_each my_ms_rank_each1">
                                            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 317px;"><ul class="edw1" style="width: 1115%; position: relative; transition-duration: 0s; transform: translate3d(-202px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 음료 판매 순위<br><strong>콜드 브루</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000000487"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000487]_20210430112319040.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000000487">바닐라 크림 콜드 브루</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000000038">콜드 브루</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002081">돌체 콜드 브루</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>에스프레소</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="110563"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="110563">아이스 카페 아메리카노</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="110569">아이스 카페 라떼</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="128695">아이스 스타벅스 돌체 라떼</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>프라푸치노</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000002760"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000002760]_20210415133558068.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002760">더블 에스프레소 칩 프라푸치노</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="168016">P 자바 칩 프라푸치노</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002502">유기농 말차로 만든 크림 프라푸치노</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>블렌디드</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000003991"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/04/[9200000003991]_20220406123619904.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000003991">펀치 그래피티 블렌디드</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000003276">딸기 딜라이트 요거트 블렌디드</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002766">피치   레몬 블렌디드</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>기타 제조 음료</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="110621"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110621]_20210415140901611.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="110621">아이스 시그니처 초콜릿</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="72">시그니처 핫 초콜릿</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000001302">아이스 제주 까망 라떼</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>브루드 커피</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="106509"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[106509]_20210430111852870.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="106509">아이스 커피</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="2">오늘의 커피</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>스타벅스 피지오</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000004121"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/05/[9200000004121]_20220517102911610.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000004121">유자 패션 피지오</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="107051">쿨 라임 피지오</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="107031">패션 탱고 티 레모네이드 피지오</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>스타벅스 주스(병음료)</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="5210008070"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5210008070]_20210426095034991.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="5210008070">딸기주스 190M</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="5210008072">케일 사과주스 190M</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9300000003775">딸기 가득 요거트 190M</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>티</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000000190"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000190]_20210419131723532.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000000190">쉐이큰 자몽허니 블랙티</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002959">아이스 유자 민트 티</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000003994">포멜로 플로우 그린 티</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 음료 판매 순위<br><strong>콜드 브루</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="9200000000487"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000000487]_20210430112319040.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="9200000000487">바닐라 크림 콜드 브루</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000000038">콜드 브루</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="9200000002081">돌체 콜드 브루</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 음료 판매 순위<br><strong>에스프레소</strong></header>	<figure><a href="javascript:void(0);" class="goDrink" data-sku="110563"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937808.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goDrink" data-sku="110563">아이스 카페 아메리카노</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="110569">아이스 카페 라떼</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goDrink" data-sku="128695">아이스 스타벅스 돌체 라떼</a></span>	</p></li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
                                        </div>
                                        <div class="my_ms_rank_each my_ms_rank_each2">
                                            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 317px;"><ul class="edw2" style="width: 1115%; position: relative; transition-duration: 0s; transform: translate3d(-202px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 푸드 판매 순위<br><strong>브런치유어웨이</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110003062"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110003062]_20210421162339549.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110003062">바비큐 치킨 치즈 치아바타</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000002178">베이컨 치즈 토스트</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000001777">햄 루꼴라 올리브 샌드위치</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>브레드</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="9300000003223"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003223]_20210315170846073.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="9300000003223">바질 토마토 크림치즈 베이글</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000004026">티라미수 크림 데니쉬</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="5110006070">하트 파이</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>케이크</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110007181"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110007181]_20210421164728509.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110007181">부드러운 생크림 카스텔라</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000004034">딸기 쏙 생크림 케이크</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000004174">크런치 쿠키 마스카포네 케이크</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>샌드위치&amp;샐러드</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110003062"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110003062]_20210421162339549.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110003062">바비큐 치킨 치즈 치아바타</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000002178">베이컨 치즈 토스트</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000001777">햄 루꼴라 올리브 샌드위치</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>따뜻한 푸드</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="9900000000680"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9900000000680]_20210426103936780.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="9900000000680">판매트러플 머쉬룸 수프</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9900000001201">판매 토마토 로제 수프</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9900000001200">판매 단호박 크림 수프</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>과일&amp;요거트</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110009051"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110009051]_20210422111651003.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110009051">하루 한 컵 레드</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000003232">오가닉 프로틴 그릭 요거트   그래놀라</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000002619">20 밀크 푸딩</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>스낵&amp;미니디저트</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="9300000002517"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000002517]_20210421163620436.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="9300000002517">더블 치즈 베이글 칩</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000004045">리얼 두부칩</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000001924">다크 초콜릿 마카롱</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>아이스크림</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110009050"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110009050]_20210422110047018.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110009050">유기농 아이스크림 바닐라볼</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9900000000031">바닐라 아포가토볼</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000000810">유기농 아이스크림 초콜릿볼</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>프리미어 푸드</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="9300000001785"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9300000001785]_20210422124351504.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="9300000001785">리저브초콜릿 월넛 돔 쿠키</a></p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 푸드 판매 순위<br><strong>브런치유어웨이</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="5110003062"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[5110003062]_20210421162339549.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="5110003062">바비큐 치킨 치즈 치아바타</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000002178">베이컨 치즈 토스트</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000001777">햄 루꼴라 올리브 샌드위치</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 푸드 판매 순위<br><strong>브레드</strong></header>	<figure><a href="javascript:void(0);" class="goFood" data-sku="9300000003223"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003223]_20210315170846073.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goFood" data-sku="9300000003223">바질 토마토 크림치즈 베이글</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="9300000004026">티라미수 크림 데니쉬</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goFood" data-sku="5110006070">하트 파이</a></span>	</p></li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
                                        </div>
                                        <div class="my_ms_rank_each my_ms_rank_each3">
                                            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 317px;"><ul class="edw3" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-202px, 0px, 0px);"><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 원두 판매 순위<br><strong>스타벅스 비아</strong></header>	<figure><a href="javascript:void(0);" class="goCoffee" data-sku="11089092"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2019/05/[11089092]_20190527140748520.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goCoffee" data-sku="11089092">비아 아이스 커피 5개입</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11023539">비아 콜롬비아 12개입</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11037708">비아 하우스 블렌드 12개입</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 원두 판매 순위<br><strong>스타벅스 원두</strong></header>	<figure><a href="javascript:void(0);" class="goCoffee" data-sku="11017015"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2015/07/[11017015]_20150722234902895.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goCoffee" data-sku="11017015">하우스 블렌드 250</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11017011">카페 베로나 250</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11019859">케냐 250</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 원두 판매 순위<br><strong>리저브 원두</strong></header>	<figure><a href="javascript:void(0);" class="goCoffee" data-sku="11133545"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2022/03/[11133545]_20220324145738445.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goCoffee" data-sku="11133545">Reserve 브라질 파젠다 카탄두바 250</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11133775">Reserve SD 콜롬비아 핀카 250</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11115491">Reserve 인도네시아 웨스트 자바 250</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;">	<header>부문별 원두 판매 순위<br><strong>스타벅스 비아</strong></header>	<figure><a href="javascript:void(0);" class="goCoffee" data-sku="11089092"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2019/05/[11089092]_20190527140748520.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goCoffee" data-sku="11089092">비아 아이스 커피 5개입</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11023539">비아 콜롬비아 12개입</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11037708">비아 하우스 블렌드 12개입</a></span>	</p></li><li style="float: left; list-style: none; position: relative; width: 202px;" class="bx-clone">	<header>부문별 원두 판매 순위<br><strong>스타벅스 원두</strong></header>	<figure><a href="javascript:void(0);" class="goCoffee" data-sku="11017015"><img alt="" src="https://image.istarbucks.co.kr/upload/store/skuimg/2015/07/[11017015]_20150722234902895.jpg"></a></figure>	<p class="first_bev">1위</p>	<p class="coffee_name"><a href="javascript:void(0);" class="goCoffee" data-sku="11017015">하우스 블렌드 250</a></p>	<p class="second_rank">		<span class="left"><strong>2위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11017011">카페 베로나 250</a></span>	</p>	<p class="third_rank">		<span class="left"><strong>3위</strong></span>		<span class="right"><a href="javascript:void(0);" class="goCoffee" data-sku="11019859">케냐 250</a></span>	</p></li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
                                        </div>
                                    </article>
                                </fieldset>
                            </form>
                        </section>
                        <!-- 메뉴 순위 end -->
                        
                    </div>
                    
                    



<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="javascript:void(0);">My 리워드<span class="sbox_arrow_down"></span></a>
			<ul>
				<!-- 160609 텍스트 수정 -->
				<li><a href="javascript:void(0);" required="login" data-href="/my/reward.do">· 리워드 및 혜택</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/reward_star_history.do">· 별 히스토리</a></li>
				<!-- 160609 텍스트 수정 end -->
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);">My 스타벅스 카드<span class="sbox_arrow_down"></span></a>
			<ul>
				<!-- 160609 텍스트 수정 -->
				<li><a href="javascript:void(0);" required="login" data-href="/my/mycard_index.do">· 보유 카드</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/mycard_info_input.do">· 카드 등록</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/mycard_charge.do">· 카드 충전</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/mycard_lost.do">· 분실신고/잔액이전</a></li>
				<!-- 160609 텍스트 수정 end -->
			</ul>
		</li>
		<li>
			<a href="javascript:void(0);">My 스타벅스 e-Gift Card<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="javascript:void(0);" required="login" data-href="/msr/sceGift/gift_step1.do">· 선물하기</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/egiftCard.do">· 선물 내역</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/egiftCard_shopping_bag.do">· 장바구니 내역</a></li>
			</ul>
		</li>
		<li class="msRnb_btn">
			<a href="javascript:void(0);" required="login" data-href="javascript:void(0);">My 쿠폰<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="/my/ecoupon.do?t=REG">· 등록하기</a></li>
				<li><a href="/my/ecoupon.do?t=GIFT">· 선물하기</a></li>
				<li><a href="/my/ecoupon.do?t=USE">· 사용하기</a></li>
			</ul>
		</li>
		<!-- <li class="msRnb_btn"><a href="/my/drink_shop.do" required="login">My 음료/매장</a></li> -->
		<li class="msRnb_btn"><a href="javascript:void(0);" required="login" data-href="/my/my_menu.do">My 메뉴</a></li>
		
		 
		
		
		<!-- <li class="msRnb_btn"><a href="/my/order_status_list.do" required="login">케익 주문 현황</a></li> -->
		<li class="msRnb_btn"><a href="javascript:void(0);" required="login" data-href="/my/eReceiptList.do">전자영수증</a></li>
		<li class="msRnb_btn"><a href="javascript:void(0);" onclick="fn_rewardTumblerMsrCheck();">개인컵 리워드 설정</a></li>
		<li class="msRnb_btn"><a href="javascript:void(0);" required="login" data-href="/edt/expressDtList.do">My DT Pass</a></li>
		<li>
			<a href="javascript:void(0);">개인정보관리<span class="sbox_arrow_down"></span></a>
			<ul>
				<li><a href="javascript:void(0);" required="login" data-href="/my/myinfo_modify_login.do">· 개인정보확인 및 수정</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/myinfo_out.do">· 회원 탈퇴</a></li>
				<li><a href="javascript:void(0);" required="login" data-href="/my/myinfo_modify_pwd.do">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
                </div>
                <!-- 내용 end -->
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
							<li><a href="#">한눈에 보기</a></li>
							<li><a href="#">스타벅스 사명</a></li>
							<li><a href="#">스타벅스 소개</a></li>
							<li><a href="#">국내 뉴스룸</a></li>
							<li><a href="#">세계의 스타벅스</a></li>
							<!-- 160811 메뉴 추가 -->
							<li><a href="#">글로벌 뉴스룸</a></li>
							<!-- 160811 메뉴 추가 end -->
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="#">CORPORATE SALES<span class="footer_arrow_down"></span></a></li>
							<li><a href="#">단체 및 기업 구매 안내</a></li>
						</ul>
						<ul>
							<li class="footer_menu_ttl"><a class="en" href="javascript:void(0);">PARTNERSHIP<span class="footer_arrow_down"></span></a></li>
							<li><a href="#">신규 입점 제의</a></li>
							<li><a href="#">협력 고객사 등록신청</a></li>
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
							<li><a href="#">채용 소개</a></li>
							<li><a href="#">채용 지원하기</a></li><!-- 20210927 수정 -->
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
					<a class="c_00b050" href="#">개인정보처리방침</a>
					<a href="#" class="mbn">영상정보처리기기 운영관리 방침</a>
					<a href="#">홈페이지 이용약관</a>
					<a href="#" class="mbn">위치정보 이용약관</a>
					<a href="#" class="mbn">스타벅스 카드 이용약관</a>
					<a href="#" class="mbn">비회원 이용약관</a>
					<span class="br"><!-- 150713 삭제  구명준  <a href="javascript:void(0);">위치정보 이용약관</a> -->
					<a href="#">My DT Pass 서비스 이용약관</a></span> <!-- 20200914 mdp 추가 -->
					<a href="#" class="last">윤리경영 핫라인</a>
					<br>
					<a class="btned_link" href="#">찾아오시는 길</a>
					<a class="btned_link" href="#">신규입점제의</a>
					<a class="btned_link" href="#">사이트 맵</a><br>
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
			<script src="common/js/swiper.jquery.min.js"></script>
			<script src="common/js/swiper.min.js"></script>
			<script src="common/js/util.js"></script>
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
		
	
	<script src="common/js/common_jhp.js"></script>
	<script src="common/js/error/need_login.js"></script>
</div>
</body>
</html>