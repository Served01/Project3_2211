<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>책 리스트</title>
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
body{
 width:1800px;
}
.content_inner{
display:flex;	
}

.title{
font-size:30px;
}
aside{
margin-right:-50px;
display:block;
}
.list{
  list-style:none;
  padding-left:0;
  font-size:20px;
  font-family: 'Black Han Sans', sans-serif;
}
.aside_wrap{
width: 600px;
height:1000px;
padding-left:300px;
}
    .hi{
   text-align:center;
  width: 300px;
  margin-left: auto;
  margin-right: auto;
    display:block;
    margin:auto;
   } 

</style>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-5">책 리스트</h1>
		</div>
	</div>
<div class="input-group">
<aside class="aside_wrap">
       <h4><b>국내/해외도서</b></h4><br>
           <ul class="list">
            <li>소설</li>
            <li>시/에세이</li>
            <li>인문</li>
            <li>가정/육아</li>
            <li>요리</li>
            <li>건강</li>
            <li>취미/실용/스포츠</li>
        </ul>
    </aside>


	<div class="container" >
		
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791161571379.jpg" style="width: 50%">
				<h4 style="text-align:center"><p><b>평점</b> : ★★★★★</p></h4>
			</div>
			<div class="input-group-append">
			<div class="col-md-7">
				<p><h5><b>[소설] 불편한 편의점</b></h5>
				<p>김호연 | 나무옆의자 |  2022-10 출시 
				<p><b>14500 원 | 수량 : 50권</b>
				<p style="padding-top: 20px">출간 후 1년이 넘도록 독자의 사랑을 받으며 베스트셀러 상위권을 지키고 있는 소설,
			</div>
			<div class="col-md-2" style="padding-top: 70px; width:230px">
				<p href="#"
					class="btn btn-secondary" role="button">찜 하기 &raquo;</p><br>
					<p href="#"
					class="btn btn-secondary" role="button">장바구니 &raquo;</p>
					
			</div>
		</div>
		</div>
		<hr>
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791161571379.jpg" style="width: 50%">
				<h4 style="text-align:center"><p><b>평점</b> : ★★★★★</p></h4>
			</div>
			<div class="input-group-append">
			<div class="col-md-7">
				<p><h5><b>[소설] 불편한 편의점</b></h5>
				<p>김호연 | 나무옆의자 |  2022-10 출시 
				<p><b>14500 원 | 수량 : 50권</b>
				<p style="padding-top: 20px">출간 후 1년이 넘도록 독자의 사랑을 받으며 베스트셀러 상위권을 지키고 있는 소설,
			</div>
			<div class="col-md-2" style="padding-top: 70px; width:230px">
				<p href="#"
					class="btn btn-secondary" role="button">찜하기 &raquo;</p><br>
					<p href="#"
					class="btn btn-secondary" role="button">장바구니 &raquo;</p>
					
			</div>
		</div>
		</div>
		</div>
		<hr>
		
	</div>
	<div class="hi">
            	<ul id="hiyo" class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>	
					</div>
	<jsp:include page="footer.jsp" />
</body>
</html>