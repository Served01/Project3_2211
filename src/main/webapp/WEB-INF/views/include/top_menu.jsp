<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<c:url var='root' value='/'/>  
<!-- 세션에 대한 문자열이 없이(따라붙지 않고) 사용 합니다. 
<c:set var='root' value="${pageContext.request.contextPath }/"/>
  -->
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top.jsp</title>
</head>
<body>

<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="${root }index">Ezen Academy</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		<ul class="navbar-nav">
			<c:forEach var="obj" items="${topMenuList }"> 
				<li class="nav-item">
					<a href="${root }board/main?board_info_idx=${obj.board_info_idx}" 
									class="nav-link">${obj.board_info_name}</a>
				</li>			
			</c:forEach>
		</ul>
		
		<ul class="navbar-nav ml-auto">
			<c:choose>
				<c:when test="${login_mb_Bean.mblogin == true }">
					<li class="nav-item">
							<a href='${root }member/list?mb_idx=1'>전체회원목록</a>
<%-- 						<a href="${root }member/Mb_list" class="nav-link">전체회원목록</a> --%>
					</li>				
					<li class="nav-item">
						<a href="${root }member/Mb_select" class="nav-link">마이페이지</a>
					</li>				
					<li class="nav-item">
						<a href="${root }member/Mb_update" class="nav-link">정보수정</a>
					</li>
					<li class="nav-item">
						<a href="${root }member/Mb_logout" class="nav-link">로그아웃</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item">
						<a href="${root }member/Mb_login" class="nav-link">로그인</a>
					</li>
					<li class="nav-item">
						<a href="${root }member/Mb_insert" class="nav-link">회원가입</a>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</nav>
</body>
</html>