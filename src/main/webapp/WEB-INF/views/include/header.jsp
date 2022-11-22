<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>헤더</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="./css/header.css" rel="stylesheet" type="text/css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

<script type="text/javascript" src="./js/header.js" ></script> 
</head>
<style>
body{
  }
</style>
<body>

	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand">Ezen Book Store</a>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
			<div class="btn-group" role="group" aria-label="Basic example">
			<form>
				<c:choose>
					<c:when test="${loginShowBean.mblogin == true }">
					<input type="hidden" id="mb_pw" value="${loginShowBean.mb_pw}"/>
						<button onclick="location.href='${root }member/Mblist?mb_id=admin'" type="button" class="btn btn-primary">전체회원목록</button>
						<button onclick="location.href='${root }member/Mbselect?mb_id=${loginShowBean.mb_id}'" type="button" class="btn btn-primary">마이페이지</button>
<%-- 						<a href="${root }member/Mblist?mb_id=admin" class="nav-link">[전체회원목록]</a> --%>
<%-- 						<a href='${root }member/Mbselect?mb_id=${loginShowBean.mb_id}'>마이페이지(원본)</a> --%>
						<button onclick="location.href='${root }member/Mbupdate?mb_id=${loginShowBean.mb_id}'" type="button" class="btn btn-primary">수정</button>
						<button onclick="location.href='${root }member/Mbdelete?mb_id=${loginShowBean.mb_id}'" type="button" class="btn btn-primary">삭제</button>
						<a href="${root}delivery/DvList?mb_id=${loginShowBean.mb_id}">배송지 목록 보기</a>
<%-- 						<a href="${root }member/Mbupdate" class="nav-link">정보수정(원본)</a> --%>
<%-- 						<a href="${root }member/Mbdelete" class="nav-link">삭제(원본)</a> --%>
						<button onclick="location.href='${root }member/Mblogout'" type="button" class="btn btn-primary">로그아웃</button>
<%-- 						<a href="${root }member/Mblogout" class="nav-link">[로그아웃]</a> --%>
					</c:when>
					<c:otherwise>
					<button onclick="location.href='${root }member/Mblogin'" type="button" class="btn btn-primary">로그인</button>
					<button onclick="location.href='${root }member/Mbinsert'" type="button" class="btn btn-primary">회원가입</button>
<%-- 						<a href="${root }member/Mblogin" class="nav-link">[로그인]</a> --%>
<%-- 						<a href="${root }member/Mbinsert" class="nav-link">[회원가입]</a> --%>
					</c:otherwise>
				</c:choose>
				</form>
			</div>
		</div>
	</nav>

</body>
</html>