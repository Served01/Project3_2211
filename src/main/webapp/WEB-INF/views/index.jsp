<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index.jsp</title>
<!-- Bootstrap CDN -->
</head>
<body>
	<hr>
	<h1>인덱스 페이지[단위 테스트용]</h1>
	<div class="btn-group" role="group" aria-label="Basic example">
		<a href="${root }member/Mbinsert" class="nav-link">[회원가입]</a> <a
			href="${root }member/Mblist?mb_id=admin" class="nav-link">[전체회원목록]</a>
		<a href='${root }member/Mbselect?mb_id=admin'>[마이페이지]</a> <a
			href="${root }member/Mbupdate?mb_id=admin" class="nav-link">[정보수정]</a>
		<a href="${root }member/Mbdelete?mb_id=admin" class="nav-link">[삭제]</a>
		<a href="${root }member/Mblogin" class="nav-link">[로그인]</a> <a
			href="${root }member/Mblogout" class="nav-link">[로그아웃]</a>
	</div>
</body>
</html>


























