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
		<c:if test="${orBean.or_status ne '0'}">
				<tr>
	            	<td>주문번호: ${orBean.or_number }</td>
	            </tr> 
	            <tr>
					<td>구매날짜: ${orBean.or_date }</td>
				</tr>
	            <tr>
					<td>송장번호: ${orBean.or_delivery }</td>
				</tr>
	            <tr>
					<td>배송지: ${orBean.dv_address }</td>
				</tr>
				<tr>
					<td>배송 상태: ${orBean.or_status }</td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-dark" onClick="location.href='${root}order/Or_select?mb_id=${orBean.mb_id }&or_number=${orBean.or_number }'">주문 보기</button>
				</tr>
					<c:if test="${orBean.or_status ne '교환'}">
					<c:if test="${orBean.or_status ne '환불'}">
					<c:if test="${orBean.or_status ne '취소'}">
					<tr>
						<td><button type="button" class="btn btn-dark" onClick="location.href='${root}order/Or_after?mb_id=${orBean.mb_id }&or_number=${orBean.or_number }'">주문 변경</button>
					</tr>
					</c:if>
					</c:if>
					</c:if>
				
			</c:if>
		</table>
	</c:forEach>
</form>

</body>
</html>