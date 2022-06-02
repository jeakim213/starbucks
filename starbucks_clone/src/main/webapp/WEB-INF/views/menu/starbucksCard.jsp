<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
				<thead style="background: #006633; color: white;">
					<tr>
						<th colspan="2" style="padding:25px; width: 25px;"></th>
						<th style="padding:25px; width: 140px;">카드종류</th>
						<th style="padding:25px; width: 100px;">닉네임</th>
						<th style="padding:25px; width: 120px;">잔여금액</th>
					</tr>
				</thead>
				<tbody>
					<!-- ↓ 주석처리 지우면 됨 -->
					<%-- <c:forEach var="#" items="${card.list }">--%>
					<%-- <c:choose>
					<c:when test="${card.c_master }==1">
						<tr><b>
							<td><input type="radio" checked="checked" id="${card.c_name}Choose" name="cardChoose" style="text-align: center;"/></td>name은 el태그${}쓰기
							<td style="padding:15px; width: 215px;"><img src="common/img/menu/2022_cherry_blossom_card.png" style="width:180px; height:116px;"></td>
							<td style="padding:15px; width: 100px;">정다${card.c_name}</td>
							<td style="padding:15px; width: 120px;">7800${card.remaincost }원</td>
						</b></tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td><input type="radio" id="${card.c_name}Choose" name="cardChoose" style="text-align: center;"/></td>name은 el태그${}쓰기
							<td style="padding:15px; width: 215px;"><img src="common/img/menu/2022_cherry_blossom_card.png" style="width:180px; height:116px;"></td>
							<td style="padding:15px; width: 100px;">${card.c_name}</td>
							<td style="padding:15px; width: 120px;">${card.remaincost }원</td>
						</tr>
					</c:otherwise>
					</c:choose> --%>
					<%-- </c:forEach>--%>
					<!-- 아래는 예시화면 나중에 지우면 됨 -->
					<tr>
						<td style="padding:15px; width: 25px; color: red;"><b>★</b></td>
						<td><input type="radio" checked="checked" id="다다Choose" name="cardChoose" style="text-align: center;"/></td>
						<td style="padding:15px; width: 215px;"><img src="common/img/menu/2022_cherry_blossom_card.png" style="width:180px; height:116px;"></td>
						<td style="padding:15px; width: 100px;"><b>다다</b></td>
						<td style="padding:15px; width: 120px;"><b>76800원</b></td>
					</tr>
					<tr>
						<td style="padding:15px; width: 25px;"></td>
						<td><input type="radio" id="정다Choose" name="cardChoose" style="text-align: center;"/></td>
						<td style="padding:15px; width: 215px;"><img src="common/img/menu/2021_holiday_siren_card.png" style="width:180px; height:116px;"></td>
						<td style="padding:15px; width: 100px;">정다</td>
						<td style="padding:15px; width: 120px;">7800원</td>
					</tr>
				</tbody>	
			</table>
			<label style="color: red; font-size: 11px;"><b>★ 표시는 자주 사용하는 카드로 등록된 카드 입니다.</b></label><br>
			<input type="submit" class="submitResetBtn" style="color: white; background: #006633;" value="카드선택"><input type="reset" style="background: #f62222; color: white;" class="submitResetBtn" value="취소">
	</form>
</div>
</body>
</html>