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
		<div class="form-group">
			<form:label path="or_dvname">받는 사람</form:label>
					<form:input path="or_dvname" class="form-control" onkeypress="resetUserIdExist()"/>
					<form:errors path="or_dvname" style="color:red"/>
		</div>
		<div class="form-group">
					<form:label path="or_dvtel">연락처</form:label>
					<form:input type="password" path="or_dvtel" class="form-control"/>
					<form:errors path="or_dvtel" style="color:red"/>
        </div>
        <div class="form-group">
					<form:label path="or_dvaddress">주소</form:label>
					<form:input type="password" path="or_dvaddress" class="form-control"/>
					<form:errors path="or_dvaddress" style="color:red"/>
        </div>
        <form:hidden path="or_status" value="준비중"/>
        
        
        
 		<table class="table">
	 		<c:forEach var="caBean" items="${infoCa_Bean }">
				<tr>
				    <td>제목 ${caBean.bk_title }</td>
				    <td>개수 ${caBean.ca_bkcount }</td>
				    <td>가격 ${caBean.bk_price }</td>
				    
				</tr>
	 	
	 		</c:forEach>
		</table>
		<form:label path="or_delivery">배송비</form:label>
		<form:input path="or_delivery" class="form-control" value="3000" disabled="disabled"/>
		<div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 원</div>
	<%-- <form:button type="submit">구매</form:button> --%>
	
	<form:button class="form-control" type="submit">구매 확정</form:button>
    <form:button class="form-control" href="javascript:window.history.back();">뒤로가기</form:button>
    
</form:form>
</body>
</html>