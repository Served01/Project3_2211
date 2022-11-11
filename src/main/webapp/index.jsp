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
	<a href="${root}delivery/DvList?dv_id='hyun3'">list</a>	
	<a href="${root}delivery/DvInsert?dv_id='hyun3'">insert</a>		
	<a href="${root}delivery/DvUpdate?dv_id='hyun3'">update</a>	
	<a href="${root}delivery/DvDelete?dv_id='hyun3'">delete</a>	
</body>
</html>