<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	
	<div class="container">
		
		<div class="row">
			<div class="col-md-3" align="center">	
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/142x0/pdt/9788959897094.jpg" style="width: 50%">
			</div>
			<div class="col-md-7">
				<p><h5><b>책 제목입니다</b></h5>
				<p style="padding-top: 20px">석숭입니다...
				<p>10000원
			</div>
			<div class="col-md-2" style="padding-top: 70px">
				<a href="https://product.kyobobook.co.kr/bestseller/total?period=002&utm_source=google&utm_medium=cpc&utm_campaign=googleSearch&gt_network=g&gt_keyword=%EC%9D%B8%ED%84%B0%EB%84%B7%EB%AC%B8%EA%B3%A0&gt_target_id=kwd-310087765320&gt_campaign_id=9979905549&gt_adgroup_id=98010719662&gclid=EAIaIQobChMIhaWB9Juj-wIVEdKWCh0q4gqVEAAYASAAEgL3rPD_BwE">
					
			</div>
			
		</div>
		
		
		<hr>
	
	</div>
	
	
	<jsp:include page="footer.jsp" />
</body>
</html>