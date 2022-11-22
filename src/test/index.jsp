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
	<br>
	<hr>
	<a href="${root}wish/wish_info?wi_mbid=admin&page=1">위시인포</a>
	<a href="${root}wish/wish_test">위시추가테스트</a>
	<br>
	<hr>
	<a href="${root }book/BkInsert">BkInsert</a>
	<a href='${root }book/BkList?bk_local=해외&bk_genre=예술'>해외 인문 리스트</a>
	
	
</body>
</html>