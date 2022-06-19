<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta property="og:type"		content="website">
<meta property="og:title"		content="Starbucks">
<meta property="og:url"			content="https://www.starbucks.co.kr/">
<meta property="og:image"		content="https://image.istarbucks.co.kr/common/img/kakaotalk.png">
<meta property="og:description" content="Starbucks">

<title id="titleJoin">Starbucks Korea</title> <!-- 220117 수정 -->
<link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828" type="image/ico"> <!-- 20200827 파비콘 교체 및 CDN 변수처리 -->
<link href="../common/css/reset.css" rel="stylesheet">
<!-- <link href="../common/css/style_util.css?v=180906" rel="stylesheet"> -->

<style type="text/css">

/* 팝업디자인 */
	.ecPop { position:absolute;  width:421px; background:#ffffff; z-index:100; display:none; border-radius:3px; overflow:hidden; }
	.ecPop div.head { background:#8c8279; color:#fff; font-size:14px; padding:15px; position:relative; }/* 팝업 수정 20150525 */
	.ecPop div.head p.close { position:absolute; right:11px; top:17px; }/* 팝업 수정 20150525 */
	.ecPop div.head p.close a{ transition:transform 1s; -webkit-transition:-webkit-transform 1s; display:block; width:14px; height:14px; background:url('../img/util/cal/calpop_close2.png') 0 0 no-repeat; text-indent:-9999px; }
	.ecPop div.head p.close a:hover { transform:rotate(180deg); }
	.ecPop .myPopInner { width:381px; padding:20px 20px 0 20px; position:relative; }
	.ecPop p.tit { font-size:18px; font-weight:bold; color:#222; padding-bottom:20px; }

	.ecPop div.coupon_input { /*border-top:2px solid #333;*/ border-bottom:1px solid #dbdbdb; padding-bottom:20px; margin-bottom:20px; }
	/*.ecPop div.coupon_input p.con { font-size:12px; color:#222; margin-bottom:10px; }*/
	.ecPop div.coupon_input label { background:url("../img/util/bullet_grey.gif") 0 5px no-repeat; color:#222; display:block; font-size:12px; margin-bottom:10px; text-indent:10px; }

	.ecPop div.coupon_input div.input input { width:118px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; margin-right:10px; }
	.ecPop div.coupon_input div.input input.last { margin-right:0; }

	.ecPop div.mobile_input { margin-bottom:20px; vertical-align:middle; }
	.ecPop div.mobile_input p.con { background:url("../img/util/bullet_grey.gif") 0 5px no-repeat; color:#222; font-size:12px; margin-bottom:10px; text-indent:10px; }
	.ecPop div.mobile_input div.input { width:382px; height:28px; }
	.ecPop div.mobile_input div.input:after { content:""; display:block; clear:both; }
	.ecPop div.mobile_input div.input input { float:left; width:115px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; }
	
	.ecPop div.coupon_input span.line,
	.ecPop div.mobile_input span.line{ float:left; display:block; width:11px; height:28px; background:url('../img/util/ec/dash_bg.jpg') center center no-repeat; } /*20170726수정*/

	/*20170726추가*/
	.ecPop .myCouponCb2 div.coupon_input div.input input{float:left; margin-right: 0; width:117px}
	.ecPop .myCouponCb2 div.mobile_input div.input input{width:118px}
	.ecPop .myCouponCb1 div.coupon_input div.input input {float:left;  width:85.5px; height:26px; line-height:26px; border:1px solid #ddd; border-radius:3px; color:#222; font-size:12px; font-family:'Arial'; text-indent:5px; margin-right:0}
	.ecPop .myCouponCb1 div.coupon_input div.input input.last { margin-right:0; }
	.ecPop .myCouponCb1 div.coupon_input span.line,
	.ecPop .myCouponCb1 div.mobile_input span.line{width:10px}
	.ecPop .myCouponCb1 div.mobile_input div.input { width:100%; height:28px; }
	.ecPop .myCouponCb1 div.mobile_input div.input input { float:left; width:100%; }
	
	.couponTabTit{font-size:12px; color: #000000; letter-spacing: -0.5px; line-height: 16px}
	.couponTabList{height:45px; padding:10px 0 0}
	.couponTabList li{display: inline-block; float:left; padding-right:20px; font-size:14px}
	.couponTabList li a{display: inline-block; height:21px; line-height: 20px; padding-left:28px; background:url("../img/util/cp_check_off.png") 0 0 no-repeat; font-size:14px}
	.couponTabList li.cpTabOn a{background:url("../img/util/cp_check_on.png") 0 0 no-repeat;}
	.cpClear{clear:both}
	.cpBg{background:#f4f4f2 !important}
	/*20170726추가*/

	.ecPop div.select_box03 { width:118px; background:#ffffff url("../img/coffee/select_arrow.png") no-repeat 100px center; top:0; float:left; }
	.ecPop div.select_box03 select { width:120px; }

	.ecPop div.info_wrap { padding:20px; background:#f4f4f2; }
	/*.ecPop div.info_wrap ul { margin-bottom:20px; } *//*20170726수정*/
	.ecPop div.info_wrap li { font-size:12px; color:#666; margin-bottom:8px; line-height:1.3; padding-left:8px; background:url('../img/util/ec/dot.jpg') 0 5px no-repeat; }

	.ecPop p.btns { height:30px; margin:0 auto; width:172px; }
	.ecPop p.btns a { float:left; width:81px; height:28px; line-height:28px; border-radius:3px; text-align:center; }
	.ecPop p.btns a.a1 { background:#e2c383; border:1px solid #bb9f65; color:#222; font-size:12px; font-weight:bold; }
	.ecPop p.btns a.a2 { background:#222; border:1px solid #222; color:#fff; font-size:12px; font-weight:bold; margin-left:5px; }
</style>
</head>

<body>
<div class="ecPop" style="display: block;">
	<div class="head">
		<p class="tt"><span class="en">My</span> 쿠폰 등록</p>
		<p class="close" onclick='window.close();'><a><img src="//image.istarbucks.co.kr/common/img/util/cal/calpop_close2.png" alt="닫기"></a></p>
	</div>
	<!-- 20170726 추가 -->                                
            <div class="myPopInner">
                <form name="efrm1" id="efrm1" method="post">
                    <fieldset>
                        <legend class="hid">My 쿠폰 등록</legend>
                        
                        <p class="couponTabTit">영수증 쿠폰, MMS 쿠폰 또는 Star 쿠폰 중 등록하고자 하시는 쿠폰을 선택하세요.</p> <!-- 211008 수정 -->
                        <ul class="couponTabList">
                            <li class="cpTab1 cpTabOn"><a href="javascript:void(0)">영수증 쿠폰</a></li>
                            <li class="cpTab2"><a href="javascript:void(0)">MMS 쿠폰</a></li>
                            <li class="cpTab3" id="couponTypeStar"><a href="javascript:void(0)">Star 쿠폰</a></li> <!-- 211008 추가 -->
                        </ul>
                        <div class="cpClear"></div>
                        
                        <!-- 1. 영수증쿠폰 -->
                        <div class="myCouponCb myCouponCb1 myCouponWrap"> <!-- 211008 클래스 추가 -->
                            <div class="coupon_input">
                                <label for="coupon_num1">영수증 쿠폰번호 17자리를 입력해주세요.</label>
                                <div class="input">
                                    <input type="tel" name="rptcoupon_num1" id="rptcoupon_num1" maxlength="4" ref="num" title="쿠폰 앞번호">
                                    <span class="line"></span>
                                    <input type="tel" name="rptcoupon_num2" id="rptcoupon_num2" maxlength="5" ref="num" title="쿠폰 두번째 번호">
                                    <span class="line"></span>
                                    <input type="tel" name="rptcoupon_num3" id="rptcoupon_num3" maxlength="4" ref="num" title="쿠폰 세번째 번호">
                                    <span class="line"></span>
                                    <input type="tel" name="rptcoupon_num4" id="rptcoupon_num4" maxlength="4" ref="num" title="쿠폰 마지막 번호" class="last">
                                </div>
                                <div class="cpClear"></div>
                            </div>
                            <div class="mobile_input mobile_input2">
                                <p class="con">e-쿠폰 등록코드 8자리를 입력해주세요.</p>
                                <div class="input">
                                    <input type="tel" name="regiCode" id="regiCode" maxlength="8" ref="num" value="" title="e-쿠폰 등록코드">
                                </div>
                            </div>
                        </div>
                        <!--// 1. 영수증쿠폰 -->
                        
                        <!-- 2. mms쿠폰 -->
                        <div class="myCouponCb myCouponCb2 myCouponWrap" style="display: none"> <!-- 211008 클래스 추가 -->
                            <div class="coupon_input">
                                <label for="coupon_num3">MMS 쿠폰번호 13자리를 입력해주세요.</label>
                                <div class="input">
                                    <input type="tel" name="coupon_num1" id="coupon_num1" maxlength="4" ref="num" title="쿠폰 앞번호">
                                    <span class="line"></span>
                                    <input type="tel" name="coupon_num2" id="coupon_num2" maxlength="5" ref="num" title="쿠폰 중간 번호">
                                    <span class="line"></span>
                                    <input type="tel" name="coupon_num3" id="coupon_num3" maxlength="4" ref="num" title="쿠폰 마지막 번호" class="last">
                                </div>
                                <div class="cpClear"></div>
                            </div>
                            <div class="mobile_input">
                                <p class="con">수신자(선물 받은 사람)의 휴대폰 번호를 입력해주세요.</p>
                                <div class="input">
                                    <div class="select_box select_box03">
                                        <label class="value" for="myplane_date01">선택</label>
                                        <select title="휴대폰 앞번호" id="myplane_date01">
                                            <option value="" selected="selected">선택</option>
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>
                                        </select>
                                    </div>
                                    <span class="line"></span>
                                    <input type="tel" name="mobile_num2" id="mobile_num2" maxlength="4" ref="num" value="" title="휴대폰 중간번호">
                                    <span class="line"></span>
                                    <input type="tel" name="mobile_num3" id="mobile_num3" maxlength="4" ref="num" value="" title="휴대폰 마지막 번호" class="last">
                                </div>
                            </div>
                        </div>
                        <!--// 2. mms쿠폰 -->
                        
                        <!-- s::211008 추가 -->
                     <!-- 3. Star 쿠폰 -->
                     <div class="myCouponCb myCouponCb3 myCouponWrap" id="starCouponRegInfo" style=""> <!-- 211101 수정 -->
	                                            <div class="starcoupon_input">
	                                                <label for="starcoupon_num1">Star 쿠폰번호 13자리를 입력해주세요.</label>
	                                                <div class="input">
	                                                    <input type="tel" name="starcoupon_num" id="starcoupon_num1" maxlength="4" ref="num" title="쿠폰 앞번호">
	                                                    <span class="line"></span>
	                                                    <input type="tel" name="starcoupon_num" id="starcoupon_num2" maxlength="5" ref="num" title="쿠폰 중간 번호">
	                                                    <span class="line"></span>
	                                                    <input type="tel" name="starcoupon_num" id="starcoupon_num3" maxlength="4" ref="num" title="쿠폰 마지막 번호" class="last">
	                                                </div>
	                                                <div class="cpClear"></div>
	                                            </div>
	                                            <div class="pin_input">
	                                                <p class="con">PIN 번호 8자리를 입력해주세요.</p>
	                                                <div class="input">
	                                                    <input type="tel" name="pinCode" id="pinCode" maxlength="8" ref="num" value="" title="PIN 번호">
	                                                </div>
	                                            </div>
	                                        </div>
                     <!--// 3. Star 쿠폰 -->
                     <!-- //e::211008 -->
                    </fieldset>
                </form>
            </div>
      <!--// 20170726 추가 -->
      
      <div class="info_wrap cpBg">
          <!-- 1. 영수증쿠폰 -->
          <ul class="myCouponCb myCouponCb1"> <!-- 211008 클래스 추가 -->
              <li>e-쿠폰으로 등록한 영수증 쿠폰은 등록해지가 불가능하며, 등록이후 기존의 실물 쿠폰은 더 이상 사용하실 수 없습니다.</li>
              <li>등록된 e-쿠폰은 해당 계정에 등록된 스타벅스 카드 또는 쿠폰의 QR코드를 제시하여 사용하실 수 있습니다.</li>
              <li>e-쿠폰 및 실물 쿠폰은 상업적으로 이용할 수 없으며, 스타벅스에서 제공하는e-쿠폰 선물하기 기능 외 방법으로 전달된 쿠폰 사용으로 인해 발생된 문제에 대해서는 스타벅스가 책임지지 않습니다.</li>
              <li>쿠폰이 발행된 원 거래가 취소되는 경우, 등록된 e-쿠폰도 즉시 회수됩니다.</li>
          </ul>
          
          <!-- 2. mms쿠폰 -->
          <ul class="myCouponCb myCouponCb2" style="display: none"> <!-- 211008 클래스 추가 -->
              <li>e-쿠폰 등록 후에는 선물 받은 쿠폰의 문자 메시지가 삭제되었더라도 해당 계정에 등록된 스타벅스 카드 또는 쿠폰 QR코드를 제시하시면 사용하실 수 있습니다.</li>
              <li>e-쿠폰 및 실물 쿠폰은 상업적으로 이용할 수 없으며, 스타벅스에서 제공하는 e-쿠폰 선물하기 기능 외 방법으로 전달된 쿠폰 사용으로 인해 발생된 문제에 대해서는 스타벅스가 책임지지 않습니다.</li>
              <li>쿠폰이 발행된 원 거래가 취소되는 경우, 등록된 e-쿠폰도 즉시 회수됩니다.</li>
          </ul>

          <!-- s::211008 추가 -->
       <!-- 3. Star 쿠폰 -->
       <ul class="myCouponCb myCouponCb3" style="display: none">
       	<li class="green"><strong>Star 쿠폰은 스타벅스 리워드 회원에 한해서만 등록 및 사용이 가능한 쿠폰입니다.</strong></li> <!-- 211101 추가 -->
           <li>하나의 Star 쿠폰에는 여러 개의 별이 들어 있으며, Star 쿠폰을 My 쿠폰으로 등록하는 즉시 별로 전환됩니다. 전환된 별은 별 History에서 확인 가능합니다.</li>
           <li>전환된 별은 별 정책에 따라 승급/별 12개 쿠폰 발행에 사용됩니다.</li>
           <li>Star 쿠폰은 쿠폰 그 자체로 사용할 수 없으며, My 쿠폰 등록을 통해 별로 전환하여 사용 가능합니다.</li>
           <li>Star 쿠폰 유효기간 내에만 쿠폰 등록이 가능합니다.</li>
           <li>Star 쿠폰으로 전환되는 별의 유효기간은 별 전환 시점으로부터 1년입니다.</li>
           <li>등록 완료되어 별로 전환된 Star 쿠폰은 등록 취소 및 재사용 불가합니다.</li>
           <li>Star 쿠폰은 상업적으로 이용할 수 없습니다.</li>
       </ul>
       <!-- //e::211008 -->

          <p class="btns"><a href="javascript:void(0)" class="a1">쿠폰 등록</a> <a href="javascript:void(0)" class="a2">취소</a></p>
      </div>
                         
</div>
	<script src="//image.istarbucks.co.kr/common/js/jquery-1.10.2.min.js"></script>
	<script src="https://image.istarbucks.co.kr/common/js/@common.js"></script>
	<script src="https://image.istarbucks.co.kr/common/js/jquery-ui.min.js?v=220207"></script>
	<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper-2.1.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/idangerous.swiper.scrollbar-2.1.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.bxslider.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/skdslider.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.drive.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.easing-1.3.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.elevatezoom.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.flip.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.jsmovie.1.4.4.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.mCustomScrollbar.concat.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.number.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.rotate.2.3.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.scrollbar.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.scrollTo-1.4.2-min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.superscrollorama.js"></script>						
	<script src="//image.istarbucks.co.kr/common/js/jquery.transform2d.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.transform3d.js"></script>			
	<script src="//image.istarbucks.co.kr/common/js/greensock/TweenMax.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/masonry.pkgd.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/common.js"></script>
	<script src="../common/js/gnb.js?v=220502"></script>
	<script src="../common/js/header.js?v=200915"></script>
	<script src="//image.istarbucks.co.kr/common/js/footer.js?v=210818"></script>

	<script src="//image.istarbucks.co.kr/common/js/jquery.tmpl.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.tmplPlus.min.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/jquery.ezmark.min.js"></script>
	<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
	
	<!--
	<script src="../common/js/swiper.jquery.min.js"></script>
	<script src="../common/js/swiper.min.js"></script>
	<script src="../common/js/util.js"></script>
	-->
	

	<script src="//image.istarbucks.co.kr/common/js/openevent/openevent.js"></script>
	<script src="//image.istarbucks.co.kr/common/js/open_event_control.js"></script>
	<script src="../common/js/my/ecoupon.js?v=211115"></script>
</body>
</html>