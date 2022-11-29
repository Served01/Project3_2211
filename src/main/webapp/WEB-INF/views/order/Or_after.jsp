<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>

<script>


orderItems: function(or_number){
	document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
		var ca_mbid = '${mb_id}' ;
		var or_bknumber = parseInt(item.getAttribute('value'));
    	var ca_bkcount = parseInt(item.parentElement.parentElement.nextElementSibling.firstElementChild.nextElementSibling.firstElementChild.firstElementChild.getAttribute('value'));
    	if (ca_bkcount != 0){
    		$.ajax({
				url: '${root}cart/cart_insertOderItems/'+ or_number +'/'+ ca_bknumbers + '/' + ca_mbid,
				type: 'get',
				dataType: 'text'
			})		
    	}


</script>
	
<form:form action="${root }Or_afterPro" method="post" modelAttribute="updateOrBean">
	<c:out value="주문번호 : ${updateOrBean.or_number }"/><br>
	<div class="form-group">
	
    <form:hidden path="mb_id"/>
    <form:hidden path="or_number"/>
	<form:hidden path="mb_name"/>
	<form:hidden path="mb_tel"/>
	
    	<form:radiobutton path="or_status" value="교환" label="교환"/>
    	<form:radiobutton path="or_status" value="환불" label="환불"/>
    	
	<form:hidden path="or_date"/>
	<form:hidden path="or_delivery"/>
	<form:hidden path="or_deliveryCost"/>
	<form:hidden path="dv_name"/>
	<form:hidden path="dv_tel"/>
	<form:hidden path="dv_address"/>
	<form:hidden path="bk_number"/>
        </div>
  
    <form:button class="btn btn-dark" type="submit">주문 변경</form:button>
    <a href="javascript:window.history.back();" class="btn btn-dark" role="button">뒤로가기</a> 
    
</form:form>


</body>
</html>