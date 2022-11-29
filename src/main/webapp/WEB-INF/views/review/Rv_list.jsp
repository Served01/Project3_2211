<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<script>
    
     	
     
     </script>
<body>
<div class="container">
            <div class="info" style="margin-left:150px;width:900px">
                <h1 style="text-align:center">리뷰 목록</h1>
		<div class="reviews">
			<table class="table">
				<thead>
					<tr>
                        <th scope="col">작성자</th>
                        <th scope="col">작성일</th>
                        <th scope="col">내용</th>
                        <th></th>
	                    <th></th>
                    </tr>
				</thead>
				<tbody id="reviews-box">
					<c:forEach var="rvl" items="${reviewlist }" varStatus="status">
					<c:if test="${pageCountBean.firstContent <= status.count and status.count <= pageCountBean.lastContent}">
					
					<tr>
						<td style="padding-top:18px; height:15px; align-items : center;">${rvl.mb_id }</td>
						<td style="padding-top:18px; height:15px; align-items : center;">${rvl.rv_date }</td>
						<td style="padding-top:18px; height:15px; align-items : center;">${rvl.rv_content }</td>	
					<c:if test="${mb_id==rvl.mb_id or mb_id=='admin'}">
						<th><button type="button" style="float:right" class="btn btn-dark" onclick="location.href='${root }Review/RvUpdate?rv_number=${rvl.rv_number }&mb_id=${rvl.mb_id }&bk_number=${rvl.bk_number}'">수정</button></th>
                        <th><button type="button" class="btn btn-dark" onclick="location.href='${root }Review/RvDeletePro?rv_number=${rvl.rv_number }&mb_id=${rvl.mb_id }&bk_number=${rvl.bk_number}'">삭제</button></th>			
					</c:if>
					</tr>
					
					</c:if>
					</c:forEach>
				</tbody>
			</table>
			<hr style="margin-top: -1em">
            </div>
			
			<!-- 페이지네이션 -->
    		<div class=hi>
            	<ul id="hiyo" class="pagination">
					
					<li class="page-item">
						<a href="${root}book/BkSelect?mb_id=${mb_id}&bk_number=${bk_number }&page=1" class="page-link">First</a>
					</li>					
														
				<c:forEach var="idx" begin="${pageCountBean.min }" end="${pageCountBean.max }">
					
					<li class="page-item active">
						<a href="${root}book/BkSelect?mb_id=${mb_id}&bk_number=${bk_number }&page=${idx}" class="page-link">${idx}</a>
					</li>		
												
				</c:forEach>					
					
					<li class="page-item">
						<a href="${root}book/BkSelect?mb_id=${mb_id}&bk_number=${bk_number }&page=${pageCountBean.pageCnt}" class="page-link">Last</a>
					</li>
					
				</ul>
			</div>	
		</div>
	</div>
</body>
</html>