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

	<h2>회원정보 시스템</h2>
<%-- 	<c:choose> --%>
<%-- 		<c:when test="${loginShowBean.mblogin == true }"> --%>
			<a href="${root }member/Mblist?mb_id=admin" class="nav-link">[전체회원목록]</a>
			<a href='${root }member/Mbselect?mb_id=${loginShowBean.mb_id}'>마이페이지(원본)</a>
			<a href='${root }member/Mbselect?mb_id=admin'>[마이페이지]</a>
			<a href="${root }member/Mbupdate" class="nav-link">정보수정(원본)</a>
			<a href="${root }member/Mbupdate?mb_id=admin" class="nav-link">[정보수정]</a>
			<a href="${root }member/Mbdelete?mb_id=admin" class="nav-link">[삭제(임시삭제)]</a>
			<a href="${root }member/Mblogout" class="nav-link">[로그아웃]</a>
<%-- 		</c:when> --%>
<%-- 		<c:otherwise> --%>
			<a href="${root }member/Mblogin" class="nav-link">[로그인]</a>
			<a href="${root }member/Mbinsert" class="nav-link">[회원가입]</a>
<%-- 		</c:otherwise> --%>
<%-- 	</c:choose> --%>

</body>
</html>


























