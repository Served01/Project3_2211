<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>장바구니</title>
</head>
<body>
	
	
	<div class="container">
		<div class="row">
			<div class="container">
			<h1 class="display-5">구매 목록</h1>
		</div>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>도서</th>
					<th>제목</th>
					<th>수량</th>
					<th>가격</th>
					<th>배송비</th>
				</tr>
				
				<tr>
					<td><img src="https://contents.kyobobook.co.kr/sih/fit-in/234x0/pdt/9791187890447.jpg" width="100px" height="120px" alt="샘플" /></td>
					<td>서점의 시대</td>
					<td>3개</td>
					<td>45000원</td>
					<td>3000원</td>
				</tr>
				
				<tr>
					<th>예상날짜:</th>
					<th>2022-11-28</th>
					<th></th>
					<th>총액:</th>
					<th>50000원</th>
				</tr>
			</table>
			<a href="./books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
			<a href="#" style='width:80px;float: right;' class="btn btn-success">주문</a>
		</div>
		<hr>
	</div>
</body>
</html>