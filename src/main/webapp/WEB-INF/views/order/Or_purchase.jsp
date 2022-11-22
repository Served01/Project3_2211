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
	
	<form:form action="${root }order/Or_purchasePro" method="post" modelAttribute="updateOrPurchase">
		 
		<form:hidden path="mb_id"/>
   		<form:hidden path="or_number"/>
		<form:hidden path="mb_name"/>
		<form:hidden path="mb_tel"/>
    	<form:hidden path="or_status" value="준비중"/>
		<form:hidden path="or_date"/>
		<form:hidden path="or_delivery"/>
		 
		<div class="form-group">
				<div class="dv_name">받는 사람</div>
					<form:input path="dv_name" class="form-control"/>
					<form:errors path="dv_name" style="color:red"/>
		</div>
		<div class="form-group">
				<div class="dv_tel">연락처</div>
					<form:input path="dv_tel" class="form-control"/>
					<form:errors path="dv_tel" style="color:red"/>
        </div>
        <div class="form-group">
				<div class="dv_address">주소</div>
					<form:input path="dv_address" class="form-control"/>
					<form:errors path="dv_address" style="color:red"/>
        </div>
        
        
        
 		<table class="table">
 		
 		<c:set var = "sumprice" value = "0" />
	 		<c:forEach var="caBean" items="${infoCaBean }">
				<tr>
					<td>${caBean.bk_image }</td>
				    <td>제목 ${caBean.bk_title }</td>
				    <td>개수 ${caBean.ca_bkcount }</td>
				    <td>개당 가격 ${caBean.bk_price }</td>
				    
				</tr>
	 	<c:set var= "sumprice" value="${sumprice + caBean.bk_price}"/>
	 		</c:forEach>
	 	
		</table>
		<div>
		<div class="dv_deliveryCost">배송비</div>
		
		<c:choose>
			<c:when test="${sumprice <= 30000}">
				<form:hidden path="or_deliveryCost" value="3000"/>
				<c:out value="3000"/>원
				<c:set var= "sumprice" value="${sumprice + 3000}"/>
			</c:when>
			<c:otherwise>
				<form:hidden path="or_deliveryCost" value="0"/>
				<c:out value="0"/>원
			</c:otherwise>
		</c:choose>
		
		<div class="sum_p_price" id="sum_p_price">합계금액:
		<c:out value="${sumprice }"/>원</div>
	<%-- <form:button type="submit">구매</form:button> --%>
	
	<button class="form-control" type="submit">구매 확정</button>
    <button class="form-control" href="javascript:window.history.back();">뒤로가기</button>
    </div>
</form:form>
</body>
</html>