<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
<h2>${bk_local } -> ${bk_genre }</h2>
<c:forEach var="bl" items="${bkListBean}">	
		<div>
		<a href='${root }book/BkSelect?bk_number=${bl.bk_number}'>${bl.bk_title}</a>
		<div>
			<img src="${root }upload/${bl.bk_image}" width="100%"/>						
		</div>
		<p>평점 : ${bl.avg_score}
		<p>저자 : ${bl.bk_writer}</p>
		<p>출판사 : ${bl.bk_publisher}</p>
		<p>출간일 : ${bl.bk_pubdate}</p> 
		<p>가격 : ${bl.bk_price}
		<p>재고 : ${bl.bk_quantity}
		</div>
		<hr>
</c:forEach>
</body>
</html>