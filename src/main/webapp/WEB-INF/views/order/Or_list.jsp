<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<form name="orderlist" id="orderlist" method="post" class="orderlist">
	<c:forEach var="orBean" items="${infoOrBean}" varStatus="status">
		<table class="table">
				<tr>
	            	<td>주문번호 ${orBean.or_number }</td>
	            </tr>
	            <tr>
	            	<td>주문번호 <a href="${root}order/Or_select?or_mbid=${orBean.or_mbid }&or_number=${orBean.or_number }">${orBean.or_number }</a></td>
				</tr>
	            <tr>
					<td>구매날짜 ${orBean.or_date }</td>
				</tr>
	            <tr>
					<td>송장번호 ${orBean.or_delivery }</td>
				</tr>
	            <tr>
					<td>배송지 ${orBean.or_dvaddress }</td>
				</tr>
			<c:forEach var="oriBean" items="${itemsOrBean}" varStatus="status">
				<table class="table">
				<tr>
					<td>주문번호 ${oriBean.ori_number }</td>
				</tr>
				<tr>
					<td>책번호 ${oriBean.ori_bknumber }</td>
				</tr>
	            <tr>
					<td>책번호<a href="${root}book/Bk_select?bknumber=${oori_bknumberiBean.r }">${oriBean.ori_bknumber }</a></td>
				</tr>
	            <tr>
					<td>구매가격 ${oriBean.ori_bkprice }</td>
				</tr>
	            <tr>
					<td>할인율 ${oriBean.ori_bkdiscount }
				</tr>
	            <tr>
					<td>구매개수 ${oriBean.ori_bkcount }</td>
				</tr>
				</table>
				</c:forEach>
		</table>
	</c:forEach>
</form>

</body>
</html>