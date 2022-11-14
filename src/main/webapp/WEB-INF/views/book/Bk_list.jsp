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

<c:forEach var="str1" items="${BkList}">	
		<div>
		<a href='${root }book/BkSelect?bk_local=${str1.bk_local}&bk_genre=${str1.bk_genre}'>${str1.bk_title}</a>
		<div>
						<img src="${root }upload/${str1.bk_image}" width="100%"/>						
		</div>
		<p >${str1.bk_number}</p>
		<p >${str1.bk_writer}</p>
		<p >${str1.bk_publisher}</p>
		<p >${str1.bk_pubdate}</p> 
		</div>
		<hr>
</c:forEach>
</body>
</html>