<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body bgcolor="WHITE">
<br>
		<div class="container">
		<div class="row">
			<div class="container">
			<h1 class="display-5">주문 변경</h1>
		</div>
		</div>

<form:form action="${root }Or_afterPro" method="post" modelAttribute="updateOrBean">
	<div class="form-group">
	<table border="1" align="center" style="width:600; cellspacing:0; cellpadding:3;">
		<tr>
		<td>주문 번호</td>
		<td>${updateOrBean.or_number }</td>
		</tr>	
    <form:hidden path="mb_id"/>
    <form:hidden path="or_number"/>
	<form:hidden path="mb_name"/>
	<form:hidden path="mb_tel"/>
    	<tr>
    	<td align="center" colspan="2">
    	<form:radiobutton path="or_status" value="교환" label="교환"/>
    	<form:radiobutton path="or_status" value="환불" label="환불"/>
    	</td>
    	</tr>
    
	<form:hidden path="or_date"/>
	<form:hidden path="or_delivery"/>
	<form:hidden path="or_deliveryCost"/>
	<form:hidden path="dv_name"/>
	<form:hidden path="dv_tel"/>
	<form:hidden path="dv_address"/>
	<form:hidden path="bk_number"/>
        
  		<tr>
    	<td align="center" colspan="2">
    	<form:button class="btn btn-dark" type="submit">주문 변경</form:button>
    	<a href="javascript:window.history.back();" class="btn btn-dark" role="button">뒤로가기</a>
   		</td>
   		</tr>
   		</table>
    </div>
</form:form>
</div>

</body>
</html>