<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Mb_list.jsp</title>
<head>
<style>
</style>
</head>
<body>
<c:import url="/Main/header"></c:import>
	<div class="container" align="center">
		<div class="input-form col-md-12 mx-auto">
			<a href="#" onclick="location.href='Main/center'">
					<i class="fa-solid fa-book">Ezen Book Store</i>
				</a> <br>
			<h4 class="mb-3">회원목록 보기화면(관리자)</h4>
			<table border="1">
				<tr align="center">
					<td id=title>아이디</td>
					<td id=title>이름</td>
					<td id=title>이메일</td>
					<td id=title>연락처</td>
					<td id=title>가입날짜</td>
					<td id=title>탈퇴여부</td>
					<td id=title>탈퇴날짜</td>
				</tr>
				<tbody>
					<c:forEach var="m" items="${memberlist }">
						<tr>
							<td><a href='${root }member/Mbselect?mb_id=${m.mb_id}'>${m.mb_id }</a></td>
							<td>${m.mb_name }</td>
							<td>${m.mb_email }</td>
							<td>${m.mb_tel }</td>
							<td>${m.mb_date }</td>
							<td>${m.mb_deleted }</td>
							<td>${m.mb_deleted_date }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="mb-4"></div>
			<a href="${root }member/Mbinsert" class="btn btn-danger">회원가입</a> <a
				href="${root }index" class="btn btn-danger">메인</a>
		</div>
	</div>
	
<c:import url="/Main/footer"></c:import>
</body>
</html>