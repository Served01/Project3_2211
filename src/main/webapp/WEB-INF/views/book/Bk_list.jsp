<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<title>책 리스트</title>
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
<script>
let wish = {
		switchWishHeart : function(bk_number,su) {
			//alert("헤이!");
			//alert(a_memberNo);
			
			var mb_id = 'admin';
			
			
			var imgsrc = $("#wish"+su).attr("src");
			var culsrc = imgsrc.split('-');
			
			if (culsrc[1] == null){
				//여기다가 찜추가
				$.ajax({
				url: '${root}wish/wish_add/' + mb_id +'/'+ bk_number,
				type: 'get',
				dataType: 'text',
				success : function(result) {
					if(result=="true") {
						$("#wish"+su).attr("src","${root }imgs/heart-fill.svg");
					}
				}
				})
				
			}else{
				//여기다가 찜삭제
				$.ajax({
					url: '${root}wish/wish_delete/' + mb_id +'/'+ bk_number,
					type: 'get',
					dataType: 'text',
					success : function(result) {
						if(result=="true") {
							$("#wish"+su).attr("src","${root }imgs/heart.svg");
						}
					}
					})
				
			}
			
			
		},
		checkWishHeart : function(bk_number,su){
			
			var mb_id = 'admin';
			
			
			$.ajax({
				url : "${root}wish/wish_checkWishHeart/" + mb_id + "/" + bk_number,
				type : "GET",
				dataType : "text",
				error : function(e) {
					alert("안됨1");
					//alert(e);
				},
				success : function(result) {
					if(result.trim()=="true") {
						$("#wish"+su).attr("src","${root }imgs/heart.svg");
					} else if(result.trim()=="false") {
						$("#wish"+su).attr("src","${root }imgs/heart-fill.svg");
					}
				}
			});
		}
	};
</script>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-5">책 리스트</h1>
			<h2 class="display-5">${bk_local} > ${bk_genre}</h2>
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
    <div class="container">
	<c:forEach var="bl" items="${bkListBean}" varStatus="status">
		<c:if test="${bl.bk_deleted != 'deleted'}">
	<div class="container">
		
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="${root }upload/${bl.bk_image}" style="width: 200px; height: 230px;">	
				<h6 style="text-align:center"><b>
					<c:if test="${bl.avg_score != 0}">
					<p>
					<p>평점 : ${bl.avg_score}
					</c:if>
					<c:if test="${bl.avg_score == 0.0}">
					<p>
					<p>등록된 평점이 없습니다.</p>
					</c:if>
				</b></h6>
			</div>
				<div class="col-md-5">
				<br>
				<a href='${root }book/BkSelect?bk_number=${bl.bk_number}'><b>${bl.bk_title}</b></a>
				<!--  like button  -->
				<script>
					$(document).ready(function(){
						setTimeout(wish.checkWishHeart(${bl.bk_number},${status.count}), 200);
					})
				</script>
				<img src="${root }imgs/heart.svg"  id="wish${status.count }"  onclick="javascript:wish.switchWishHeart(${bl.bk_number},${status.count})"/>
				<p>
				<p>${bl.bk_writer} | ${bl.bk_publisher} | ${bl.bk_pubdate} 출시 
				<p><b>${bl.bk_price} 원 | 재고 : ${bl.bk_quantity}권</b>
				<p style="padding-top: 20px">
				<c:set var = "string1" value = "${bl.bk_detail}"/>
      			<c:set var = "string2" value = "${fn:substring(string1, 0, 100	)}" />
      			${string2}...
			</div>
			<div class="col-md-2" style="padding-top:70px; width:230px;">
				<a href='${root}book/BkUpdate?bk_number=${bl.bk_number}' class="btn btn-secondary" role="button">수정 &raquo;</a><br><br>
				<a href='${root}book/BkDeletePro?bk_number=${bl.bk_number}' class="btn btn-secondary" role="button">삭제 &raquo;</a>	
			</div>
		</div>
			
			
		</div>

		<hr>
		</c:if>
	</c:forEach>
	</div>
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
<c:import url="/WEB-INF/views/include/footer.jsp"/>	
</body>
</html>