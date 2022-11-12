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

<h3>Review 기능</h3>
<a href='${root }Review/RvList?rv_id=wslim&rv_bknumber=22020001'>Rv_list</a>

<h3>Book 기능</h3>
<a href="${root }book/BkInsert">BkInsert</a>
<a href='${root }book/BkList?bk_local=해외&bk_genre=인문'>해외 인문 리스트</a>


</body>
</html>