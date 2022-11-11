<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mb_list.jsp</title>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<!-- 게시글 리스트 -->
	<div class="container" align="center">
		<div class="input-form col-md-12 mx-auto">
			<a href="#" onclick="location.href='index'"><h2>
					<i class="fa-solid fa-book"></i>Ezen Book Store
				</h2></a> <br>
			<h4 class="mb-3">회원 목록 보기 화면 - 마이 페이지(관리자)</h4>
			<table border="1">
				<tr align="center">
					<td id=title>아이디</td>
					<td id=title>이름</td>
					<td id=title>이메일</td>
					<td id=title>연락처</td>
					<td id=title>가입날짜</td>
				</tr>


				<tbody>
					<c:forEach var="m" items="${memberlist }">
						<tr>
							<%-- 							<td><a href="Mb_select?mb_idx=${m.mb_idx()}">${m.mb_idx()}</a></td> --%>
							<%-- 							<td><a href='${root }member/Mb_select?mb_id=${m.mb_id}'>${m.mb_id }</a></td> --%>
							<td><a href='${root }member/Mbselect?mb_id=${m.mb_id}'>${m.mb_id }</a></td>
							<td>${m.mb_name }</td>
							<td>${m.mb_email }</td>
							<td>${m.mb_tel }</td>
							<td>${m.mb_date }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="mb-4"></div>
			<a href="${root }member/Mbinsert" class="btn btn-danger">회원가입</a>
			<%-- 				<a href="${root }member/Mb_select" class="btn btn-danger">마이페이지</a> --%>
			<a href="${root }index" class="btn btn-danger">메인</a>
			<!-- 				<button class="btn btn-dark" onclick="location.href='inputshippingAddresspro.jsp'">마이 페이지</button> -->
			<!-- 				<button class="btn btn-dark" onclick="location.href='mainSession.jsp?center=mbDeleteform.jsp&mb_id='">메인 페이지</button> -->



			<footer class="my-3 text-center text-small">
				<p class="mb-1">&copy; 2022</p>
			</footer>
		</div>
	</div>
</body>
</html>