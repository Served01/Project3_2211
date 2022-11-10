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

<a href='${root }Review/RvList?rv_bknumber=22020001'>Rv_list</a>
<hr>
<a href='${root }Review/RvInsert?rv_bknumber=22020001'>Rv_insert</a>
<hr>
<a href='${root }Review/RvUpdate?rv_number=3'>Rv_update</a>
<hr>
<a href='${root }Review/RvDeletePro?rv_number=3'>Rv_delete</a>


</body>
</html>