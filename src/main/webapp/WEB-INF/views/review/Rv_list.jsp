<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<!-- Webpage Title -->
        <title>책 리뷰공간</title>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">

        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>

        <!-- 구글폰트 -->
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
        <style>
        
		button{
		       text-align:center;
		   	   display:block;
		       margin:auto;
		      }
		    
		.hi{
		    text-align:center;
		   } 
		#hiyo {
			  width: 300px;
			  margin-left: auto;
			  margin-right: auto;
			  }
        </style>
</head>

<body>

<!--  <div class="container">
	<div class="info">-->
		<h1 style="text-align:center">리뷰 목록</h1>

		<div class="reviews">
			<table class="table">
				<thead>
					<tr>
                        <th scope="col">작성자</th>
                        <th scope="col">작성일</th>
                        <th scope="col">내용</th>
                    </tr>
				</thead>
				<tbody id="reviews-box">
					<c:forEach var="rvl" items="${reviewlist }" varStatus="status">
					<c:if test="${pageCountBean.firstContent <= status.count and status.count <= pageCountBean.lastContent }">
					<tr>
						<td>${rvl.rv_id } </td>
						<td>${rvl.rv_date } </td>
						<td>${rvl.rv_content }</td>	
						<th><button type="button" style="float:right" class="btn btn-dark" onclick="location.href='${root }Review/RvUpdate?rv_number=${rvl.rv_number }&rv_id=${rvl.rv_id }&rv_bknumber=${rvl.rv_bknumber}'">수정</button></th>
                        <th><button type="button" class="btn btn-dark" onclick="location.href='${root }Review/RvDeletePro?rv_number=${rvl.rv_number }&rv_id=${rvl.rv_id }&rv_bknumber=${rvl.rv_bknumber}'">삭제</button></th>			
					</tr>
					</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
			
			<!-- 페이지네이션 -->
    		<div class=hi>
            	<ul id="hiyo" class="pagination">
					
					<li class="page-item">
						<a href="${root}Review/RvList?rv_id=${rv_id}&rv_bknumber=${rv_bknumber }&page=1" class="page-link">First</a>
					</li>					
														
				<c:forEach var="idx" begin="${pageCountBean.min }" end="${pageCountBean.max }">
					
					<li class="page-item active">
						<a href="${root}Review/RvList?rv_id=${rv_id}&rv_bknumber=${rv_bknumber }&page=${idx}" class="page-link">${idx}</a>
					</li>		
												
				</c:forEach>					
					
					<li class="page-item">
						<a href="${root}Review/RvList?rv_id=${rv_id}&rv_bknumber=${rv_bknumber }&page=${pageCountBean.pageCnt}" class="page-link">Last</a>
					</li>
					
				</ul>
			</div>	

</body>
</html>