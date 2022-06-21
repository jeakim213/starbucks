<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<c:set var="i" value="0"/>
					<c:forEach var="eCouponDTO" items="${list }">
						<tr>
							<td><input type="radio" name="couponChoose" style="text-align: center;"/></td>
							<td style="padding:15px; width: 230px;"><p id="pon_name">${eCouponDTO.pon_name }</p></td>
							<td style="padding:15px; width: 140px;">
							${startList[i]} - ${endList[i]}</td>
							<td style="padding:15px; width: 120px;"><p id="pon_cash">${eCouponDTO.pon_cash }</p></td>
						</tr>
						<c:set var="i" value="${i+1 }"/>
					</c:forEach>
				</tbody>
			</table>
			<label style="color: red; font-size: 12px;"><b>쿠폰의 중복선택은 불가합니다.</b></label><br>
			<input type="submit" class="submitResetBtn" style="color: white; background: #006633;" value="쿠폰선택" <%--onclick="close();"--%>onclick="window.close()"><input type="reset" style="background: #f62222; color: white;" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
<script type="text/javascript">
	
</script>
</html>