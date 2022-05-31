<%@page import="com.clone.jspJdbc.MemberDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInfo</title>
<style>
</style>
</head>
<body>

<div  class="admin_index">
	<c:url var="root" value="/" />
	<!-- 테이블 -->
	
	<c:if test="${empty sessionScope.id }">
	<!-- <script>
	location.href = 'index?formpath=login';
	</script> -->
	</c:if>
	
	<center>
	
		<table style="width: 800px;">
			<tr>
				<td align="center" colspan=4><h2>회원 관리</h2></td>
			</tr>
			<tr>
				<td><hr></td>
			</tr>
		</table>
	
		<table style="width: 800px;">
			<thead>
				<tr>
					<th style="width: 100px; height:20px;" align="left">아이디</th>
					<th style="width: 50px; height:20px;" align="left">등급</th>
					<th style="width: 50px; height:20px;" align="left">이름</th>
					<th style="width: 100px; height:20px;" align="left">가입일</th>
				</tr>
			</thead>
			<tr>
				<td align="center" colspan=4><hr></td>
			</tr>
			<c:forEach var="db" items="${list}">
			<tr>
				<td style="width: 100px; height:40px;" align="left">
					<a href="userInfoProc?id=${db.id}">${db.id}</a>
				</td>
				<td style="width: 50px; height:40px;" align="left">${db.grade}</td>
				<td style="width: 50px; height:40px;" align="left">${db.name}</td>
				<td style="width: 100px; height:40px;" align="left">${db.date}</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan=4><hr></td>
			</tr>
		</table>
			이전 1 2 3 4 다음
		<table>
			<tr>
				<td>
					<select>
						<option>아이디</option>
						<option>이메일</option>
					</select>
					<input type=text name='search'/>
					<input type=button name='searchBtn' value='검색' style="width: 80px; "/>
				</td>
			</tr>
		</table>
	</center>							
</div>

</body>
</html>