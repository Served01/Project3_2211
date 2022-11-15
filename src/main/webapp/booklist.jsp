<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>책 리스트(관리자)</title>
</head>
<style>
.content_inner{
display:flex;	
}

.title{
font-size:30px;
}

</style>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-5">책 리스트(관리자)</h1>
		</div>
	</div>
<aside>
<div class="title">
국내/해외도서
</div>
<ul >
    <li><a href="https://product.kyobobook.co.kr/category/KOR/01">소설</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/03">시/에세이</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/05">인문</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/07">가정/육아</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/08">요리</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/09">건강</a></li>
    <li><a href="https://product.kyobobook.co.kr/category/KOR/11">취미/실용/스포츠</a></li>
    </ul>
</aside>
	<div class="container">
		
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791161571379.jpg" style="width: 50%">
				<h4><p align="center"><b>평점</b> : ★★★★★</p></h4>
			</div>
			<div class="col-md-7">
				<p><h5><b>[소설] 불편한 편의점</b></h5>
				<p>김호연 | 나무옆의자 |  2022-10 출시 
				<p><b>14500 원 | 수량 : 50권
				<p style="padding-top: 20px">출간 후 1년이 넘도록 독자의 사랑을 받으며 베스트셀러 상위권을 지키고 있는 소설,
			</div>
			<div class="col-md-2" style="padding-top: 70px";>
				<p href="#"
					class="btn btn-secondary" role="button">수정 &raquo;</p><br>
					<p href="#"
					class="btn btn-secondary" role="button">삭제 &raquo;</p>
			</div>
		</div>
		<hr>
		
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>