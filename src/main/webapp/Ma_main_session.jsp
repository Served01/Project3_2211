<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<!-- Bootstrap CDN -->
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보 시스템</h2>
			<a href="${root }member/Mbinsert" class="nav-link">회원가입</a>
			<a href="${root }member/Mblogin" class="nav-link">로그인</a>
			<a href="${root }member/Mblist?mb_id=admin" class="nav-link">전체회원목록</a>
			<a href='${root }member/Mbselect?mb_id=${loginShowBean.mb_id}'>마이페이지</a>
			<a href="${root }member/Mbupdate" class="nav-link">정보수정</a>
			<a href="${root }member/Mbdelete" class="nav-link">삭제(임시삭제)</a>
			<a href="${root }member/Mblogout" class="nav-link">로그아웃</a>
</body>
</html>