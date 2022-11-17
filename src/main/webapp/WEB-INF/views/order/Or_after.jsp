<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	
<form:form action="${root }Or_afterPro" method="post" modelAttribute="updateOrBean">
    
    <div class="form-group">
    
    
    <form:hidden path="or_mbid"/>
    <form:hidden path="or_number"/>
	<form:hidden path="or_mbname"/>
	<form:hidden path="or_mbtel"/>
    	<form:radiobutton path="or_status" value="교환" label="교환"/>
    	<form:radiobutton path="or_status" value="환불" label="환불"/>
    	<form:radiobutton path="or_status" value="취소" label="취소"/>
	<form:hidden path="or_date"/>
	<form:hidden path="or_delivery"/>
	<form:hidden path="or_deliveryCost"/>
	<form:hidden path="or_dvname"/>
	<form:hidden path="or_dvtel"/>
	<form:hidden path="or_dvaddress"/>
        </div>
  
    <form:button class="form-control" type="submit">주문 변경</form:button>
    <form:button class="form-control" href="history.back();">뒤로가기</form:button>
    
</form:form>

</body>
</html>