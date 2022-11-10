<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${root }book/BkInsert">BkInsert</a>
<a href="${root }book/BkSelectList?bk_local='국내'&bk_genre='소설'">국내 소설 리스트</a>
</body>
</html>