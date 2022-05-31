<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 카드 선택</title>
</head>
<style type="text/css">
	.btn_coupon{background:#f6f6f6; margin: 10px; padding-top: 30px;padding-bottom: 30px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
	.submitResetBtn{margin: 10px; padding-top: 14px;padding-bottom: 14px; padding-left:50px; padding-right:50px;font-family: "맑은 고딕"; font-size:"16px"; border-style: none; border-radius:14px;}
</style>
</head>
<body>
<div class="popup" style="margin:auto; text-align: center;">
	<form action="#">
		<table class="coupon" style="border:solid; border-color: #dfdfdf; font-size: 14px; margin:auto;">
				<thead>
					<tr>
						<th colspan="2" style="padding:25px; width: 140px;">카드명</th>
						<th style="padding:25px; width: 230px;">닉네임</th>
						<th style="padding:25px; width: 120px;">잔여금액</th>
					</tr>
				</thead>
				<tbody>
					<%-- <c:forEach var="#" items="${coupon.list }">--%>
					<tr>
						<td><input type="radio" name="cardChoose" style="text-align: center;"/></td>
						<td style="padding:15px; width: 170px;"><img src="common/img/menu/2022_cherry_blossom_card.png" style="width:215px; height:135px;"></td>
						<td style="padding:15px; width: 140px;">정다<%-- ${coupon.start }&nbsp;~&nbsp;${coupon.end }--%></td>
						<td style="padding:15px; width: 120px;">7800<%-- ${coupon.cost }--%>원</td>
					</tr>
					<%-- </c:forEach>--%>
					
				</tbody>	
			</table>
			<input type="submit" class="submitResetBtn" style="color: white; background: #006633;" value="카드선택"><input type="reset" style="background: #f62222; color: white;" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
</html>