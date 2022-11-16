<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>책 리스트(관리자)</title>
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
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
	<c:forEach var="bl" items="${BkList}">
	<div class="container">
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="${root }upload/${bl.bk_image}" style="width: 50%">	
			</div>
				<h4 style="text-align:center">
					<c:if test="${bl.avg_score != null}">
					<p>평점 : ${bl.avg_score}
					</c:if>
					<c:if test="${bl.avg_score == 0.0}">
					<p>등록된 평점이 없습니다.</p>
					</c:if>
				</h4>
		</div>
			<div class="input-group-append">
			<div class="col-md-7">
				<a href='${root }book/BkSelect?bk_number=${bl.bk_number}'><b>${bl.bk_title}</b></a>
				<p>${bl.bk_writer} | ${bl.bk_publisher} | ${bl.bk_pubdate} 출시 
				<p><b>${bl.bk_price} 원 | 재고 : ${bl.bk_quantity}권</b>
				<p style="padding-top: 20px">출간 후 1년이 넘도록 독자의 사랑을 받으며 베스트셀러 상위권을 지키고 있는 소설,
			</div>
			<div class="col-md-2" style="padding-top: 70px; width:230px">
				<a href='${root }book/bkUpdate?bk_number=${bk_number}' class="btn btn-secondary" role="button">수정 &raquo;</a><br>
				<a href='${root }book/bkDeletePro?bk_number=${bk_number}' role="button">삭제 &raquo;</a>
					
			</div>
		</div>
		</div>
		<hr>
	</c:forEach>	
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
</body>
</html>