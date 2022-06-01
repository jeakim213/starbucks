<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="root" value="/" />
	<center>
		<h3><font color="green" id="msg">${msg }</font></h3>
		<table style="width: 450px; border: 1">
			<tr>
				<td colspan=2 align="center" style="height: 40px; padding-top: 15px;">
					<h2>회원 정보</h2>
					<h3><font color="green">로그인 계정: ${sessionScope.id }</font></h3>
				</td>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px;" align="center" valign="center"><b>아이디</b></td>
				<td style="width: 250px; height: 40px;" align="center" valign="center">${user.id }</td>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px;" align="center" valign="center"><b>이메일</b></td>
				<td style="width: 250px; height: 40px;" align="center" valign="center">${user.email }</td>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px;" align="center" valign="center"><b>성별</b></td>
				<c:choose>
					<c:when test="${user.gender == 'm'}">
						<td style="width: 250px; height: 40px;" align="center" valign="center">남</td>
					</c:when>
					<c:when test="${user.gender == 'w'}">
						<td style="width: 250px; height: 40px;" align="center" valign="center">여</td>
					</c:when>
					<c:otherwise>
						<td style="width: 250px; height: 40px;" align="center" valign="center">선택 안 함</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px;" align="center" valign="center"><b>주소</b></td>
				<td style="width: 250px; height: 40px;" align="center" valign="center">
					${user.addr1}&nbsp;&nbsp;${user.addr2 }
				</td>
			</tr>
			<tr>
				<td colspan=2 align="right">
					<button onclick="location.href='${root}index?formpath=modifyCheck&modifyId=${user.id }'">수정</button>
					<button onclick="location.href='${root}index?formpath=memberDelete&modifyId=${user.id }'">삭제</button>
					<button onclick="location.href='memberListProc'">목록</button>
				</td>
			</tr>
		</table>
	</center>