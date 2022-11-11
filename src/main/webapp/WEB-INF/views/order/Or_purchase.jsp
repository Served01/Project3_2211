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
</head>
<body>
<form:form action="${root }order/Or_purchasePro" method="post" modelAttribute="OrInsert">
	<select id="orDelivery" name="orDelivery">
		<option value="">배송지</option>
			<c:forEach var="dvBean" items="${Deliverylist }">
				<option value="${dvBean.dv_id }, ${dvBean.dv_name }, ${dvBean.dv_tel }, ${dvBean.dv_address }">${dvBean.dv_id }, ${dvBean.dv_name }, ${dvBean.dv_tel }, ${dvBean.dv_address }</option>
			</c:forEach>
	</select>

 		<table class="table">
	 		<c:forEach var="caBean" items="${infoCa_Bean }">
				<tr>
				    <td>제목 ${caBean.bk_title }</td>
					<td>저자 ${caBean.bk_writer }</td>
					<td>출판사 ${caBean.bk_publisher }</td>
					<td>재고 ${caBean.bk_quantity }</td>
				</tr>
	 	
	 		</c:forEach>
		</table>
	<%-- <form:button type="submit">구매</form:button> --%>
</form:form>
</body>
</html>