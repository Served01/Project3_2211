<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 목록 보기 며며며 - 마이페이지(관리자)</title>
<script src="https://kit.fontawesome.com/ece1cdce53.js"
	crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	u background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

h4 {
	text-align: center;
}

h2 {
	text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시글 리스트 -->
	<div class="container" align="center">
		<div class="input-form col-md-12 mx-auto">
			<a href="#" onclick="location.href='insertBook.jsp'"><h2>
					<i class="fa-solid fa-book"></i>Ezen Book Store
				</h2></a> <br>
			<h4 class="mb-3">회원 목록 보기 화면 - 마이 페이지(관리자)</h4>
			<table border="1">
				<tr align="center">
					<td id=title>회원번호</td>
					<td id=title>아이디</td>
					<td id=title>이름</td>
					<td id=title>이메일</td>
					<td id=title>연락처</td>
					<td id=title>가입날짜</td>
				</tr>


				<tbody>
					<c:forEach var="m" items="${memberlist }">
						<tr>
							<td>${m.mb_idx }</td>
							<td>${m.mb_id }</td>
							<td>${m.mb_name }"</td>
							<td>${m.mb_email }"</td>
							<td>${m.mb_tel }"</td>
							<td>${m.mb_date }"</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="mb-4"></div>
				<button class="btn btn-dark" onclick="location.href='inputshippingAddresspro.jsp'">마이 페이지</button>
				<button class="btn btn-dark" onclick="location.href='mainSession.jsp?center=mbDeleteform.jsp&mb_id='">메인 페이지</button>
				
		
		
<footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 </p>
    </footer>
</div>

</div>
		<div>
			<ul>
				<li><a href="#">이전</a></li>
				<li><a href="#">다음</a></li>
			</ul>
		</div>

		<div>
			<a href="#">글쓰기</a>
		</div>

</body>
</html>