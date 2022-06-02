<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 선택 팝업</title>
<script type="text/javascript">

	<!-- function close 만들기-->
	



</script>
<style type="text/css">
	
	.btn_coupon{background:#f6f6f6; margin: 10px; padding-top: 30px;padding-bottom: 30px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.submitResetBtn{margin: 10px; padding-top: 14px;padding-bottom: 14px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
</style>
</head>
<body>
<div class="popup" style="margin:auto;text-align: center;">
	<form action="#">
		<table class="coupon" style="border:solid; border-color: #dfdfdf; font-size: 14px; margin:auto;">
				<thead>
					<tr>
						<th colspan="2" style="padding:25px; width: 140px;">사용 할 쿠폰명</th>
						<th style="padding:25px; width: 230px;">사용기한</th>
						<th style="padding:25px; width: 120px;">할인금액</th>
					</tr>
				</thead>
				<tbody>
					<%-- <c:forEach var="#" items="${e-coupon.list }">--%>
					<tr>
						<td><input type="radio" name="couponChoose" style="text-align: center;"/></td>
						<td style="padding:15px; width: 230px;">[발렌타인]당첨! 500원 할인 쿠폰<%-- ${e-coupon.pon_name }--%></td>
						<td style="padding:15px; width: 140px;">22.05.30 ~ 22.06.30<%-- ${e-coupon.startdate }&nbsp;~&nbsp;${e-coupon.enddate }--%></td>
						<td style="padding:15px; width: 120px;">500<%-- ${e-coupon.cash }--%>원</td>
					</tr>
					<%-- </c:forEach>--%>
					<!-- 목록 내용 채워넣으면 지워야 할 부분 (43~48)-->
					<tr>
						<td><input type="radio" name="couponChoose" style="text-align: center;"/></td>
						<td style="padding:15px; width: 230px;">[멤버쉽]10% 할인 쿠폰<%-- ${e-coupon.pon_name }--%></td>
						<td style="padding:15px; width: 140px;">22.05.30 ~ 22.06.30<%-- ${e-coupon.startdate }&nbsp;~&nbsp;${e-coupon.enddate }--%></td>
						<td style="padding:15px; width: 120px;">금액의 10%<%-- ${e-coupon.cash }--%></td>
					</tr>
				</tbody>
			</table>
			<label style="color: red; font-size: 12px;"><b>쿠폰의 중복선택은 불가합니다.</b></label><br>
			<input type="submit" class="submitResetBtn" style="color: white; background: #006633;" value="쿠폰선택" <%--onclick="close();"--%>onclick="window.close()"><input type="reset" style="background: #f62222; color: white;" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
</html>