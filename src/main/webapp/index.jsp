<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<c:url var='root' value='/'/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<body>
	<h1>test</h1>
	<a href="${root}cart/cart_info?ca_mbid=admin">카트인포</a>
	<a href="${root}cart/cart_test">카트추가테스트</a>
	<form action="${root}cart/cart_info" method="get">
		<input type="hidden" name="ca_mbid" id="ca_mbid" value='admin'>
		<button type="submit">카트인포</button>
	</form>
	<br>
	<hr>
	<a href="${root}wish/wish_info?wi_mbid=admin">위시인포</a>
	<a href="${root}wish/wish_test">위시추가테스트</a>
	
</body>
</html>