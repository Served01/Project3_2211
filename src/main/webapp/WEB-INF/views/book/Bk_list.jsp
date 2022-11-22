<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
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
<c:import url="/Main/header"></c:import>
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
	<c:forEach var="bl" items="${bkListBean}" varStatus="status">
		<c:if test="${bl.bk_deleted != 'deleted'}">
		<c:if test="${pageCountBean.firstContent <= status.count and status.count <= pageCountBean.lastContent}">
	<div class="input-group-append">
	<div class="container">
		<div class="row">
		<div class="content_inner"></div>
			<div class="col-md-3" align="center">	
				<img src="${root }upload/${bl.bk_image}" style="width: 200px; height: 230px;">	
			</div>
				<h4 style="text-align:center">
					<c:if test="${bl.avg_score != 0}">
						<c:set var = "string1" value = "${bl.avg_score}"/>
      					<c:set var = "string2" value = "${fn:substring(string1, 0, 3)}" />
					<p>평점 : ${string2}
					</c:if>
					<c:if test="${bl.avg_score == 0.0}">
					<p>등록된 평점이 없습니다.</p>
					</c:if>
				</h4>
		</div>
			<div class="col-md-7">
				<a href='${root }book/BkSelect?bk_number=${bl.bk_number}&mb_id=${mb_id}'><b>${bl.bk_title}</b></a>
				<!--  like button  -->
				<script>
					$(document).ready(function(){
						setTimeout(wish.checkWishHeart(${bl.bk_number},${status.count}), 200);
					})
				</script>
				<img src="${root }imgs/heart.svg"  id="wish${status.count }"  onclick="javascript:wish.switchWishHeart(${bl.bk_number},${status.count})"/>
				
				<p>${bl.bk_writer} | ${bl.bk_publisher} | ${bl.bk_pubdate} 출시 
				<p><b>${bl.bk_price} 원 | 재고 : ${bl.bk_quantity}권</b>
				<p style="padding-top: 20px">
				<c:set var = "string3" value = "${bl.bk_detail}"/>
      			<c:set var = "string4" value = "${fn:substring(string3, 0, 30)}" />
      			${string2}...
			</div>
			<div class="col-md-2" style="padding-top: 70px; width:230px">
				<a href='${root}book/BkUpdate?bk_number=${bl.bk_number}' class="btn btn-secondary" role="button">수정 &raquo;</a><br>
				<a href='${root}book/BkDeletePro?bk_number=${bl.bk_number}' class="btn btn-secondary" role="button">삭제 &raquo;</a>	
			</div>
		</div>
		</div>
		<hr>
		</c:if>
		</c:if>
	</c:forEach>
	</div>
	<!-- 페이지네이션 -->
    		<div class=hi>
            	<ul id="hiyo" class="pagination">
					
					<li class="page-item">
						<a href="${root}book/BkList?mb_id=${mb_id}&bk_local=${bk_local }&bk_genre=${bk_genre }&page=1" class="page-link">First</a>
					</li>					
														
				<c:forEach var="idx" begin="${pageCountBean.min }" end="${pageCountBean.max }">
					
					<li class="page-item active">
						<a href="${root}book/BkList?mb_id=${mb_id}&bk_local=${bk_local }&bk_genre=${bk_genre }&page=${idx}" class="page-link">${idx}</a>
					</li>		
												
				</c:forEach>					
					
					<li class="page-item">
						<a href="${root}book/BkList?mb_id=${mb_id}&bk_local=${bk_local }&bk_genre=${bk_genre }&page=${pageCountBean.pageCnt}" class="page-link">Last</a>
					</li>
					
				</ul>
			</div>	
<c:import url="/Main/footer"></c:import>	

</body>
</html>