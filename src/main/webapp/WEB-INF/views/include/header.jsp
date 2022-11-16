<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css"> -->
<!-- <link href="./css/header.css" rel="stylesheet" type="text/css"> -->
<!-- <link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet"> -->
<!-- <script type="text/javascript" src="./js/header.js" ></script>  -->
</head>
<style>
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

				<c:choose>
					<c:when test="${login_mb_Bean.mblogin == true }">
						<a href="${root }member/Mblist?mb_id=admin" class="nav-link">전체회원목록</a>
						<a href='${root }member/Mbselect?mb_id=${loginMbBean.mb_id}'>마이페이지</a>
						<a href='${root }member/Mbselect?mb_id=${login_mb_Bean.mb_id}'>마이페이지</a>
						<a href="${root }member/Mbupdate" class="nav-link">정보수정</a>
						<a href="${root }member/Mblogout" class="nav-link">로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href="${root }member/Mblogin" class="nav-link">로그인</a>
						<a href="${root }member/Mbinsert" class="nav-link">회원가입</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>

</body>
</html>