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
	<c:out value="주문번호 : ${updateOrBean.or_number }"/><br>
	<div class="form-group">
	
    <form:hidden path="mb_id"/>
    <form:hidden path="or_number"/>
	<form:hidden path="mb_name"/>
	<form:hidden path="mb_tel"/>
    	<form:radiobutton path="or_status" value="교환" label="교환"/>
    	<form:radiobutton path="or_status" value="환불" label="환불"/>
    	<form:radiobutton path="or_status" value="취소" label="취소"/>
	<form:hidden path="or_date"/>
	<form:hidden path="or_delivery"/>
	<form:hidden path="or_deliveryCost"/>
	<form:hidden path="dv_name"/>
	<form:hidden path="dv_tel"/>
	<form:hidden path="dv_address"/>
        </div>
  
    <form:button class="form-control" type="submit">주문 변경</form:button>
    <form:button class="form-control" href="history.back();">뒤로가기</form:button>
    
</form:form>


</body>
</html>