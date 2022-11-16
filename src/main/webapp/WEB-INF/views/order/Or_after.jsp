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


<form name="orderdetail" id="orderdetail" method="post" class="orderdetail">
	<c:forEach var="orBean" items="${infoOrBean}" varStatus="status">
	        
	        
	        <table>
		<tr>
			<td>주문 번호 : ${orBean.or_number }</td>
		</tr>
		<tr>
			<td>아이디 : ${orBean.or_mbid }</td>
		</tr>
		<tr>	
			<td>구매자 이름 : ${orBean.or_mbname }</td>
		</tr>
		<tr>
			<td>구매자 연락처: ${orBean.or_mbtel }</td>
		</tr>
		<tr>
			<td>배송 상태: ${orBean.or_status }</td>
		</tr>
		<tr>
			<td>구매날짜: ${orBean.or_date }</td>
		</tr>
		<tr>
			<td>송장번호: ${orBean.or_delivery }</td>
		</tr>
		<tr>
			<td>배송비: ${orBean.or_deliveryCost }</td>
		</tr>
		<tr>
			<td>받는 사람: ${orBean.or_dvname }</td>
		</tr>
		<tr>
			<td>받는 사람 연락처: ${orBean.or_dvtel }</td>
		</tr>
		<tr>
			<td>배송지: ${orBean.or_dvaddress }</td>
		</tr>
	           	 </table>                 	
    </c:forEach>
    <hr>
    <c:forEach var="oriBean" items="${itemsOrBean }" varStatus="status">
    <table>
    	<tr>
    		<td>주문 번호: ${oriBean.ori_number }</td>
    	</tr>
		<tr>
    		<td>책 번호: ${oriBean.ori_bknumber }</td>
    	</tr>
		<tr>
    		<td>구매 가격: ${oriBean.ori_bkprice }</td>
    	</tr>
		<tr>
    		<td>할인율: ${oriBean.ori_bkdiscount }</td>
    	</tr>
		<tr>
    		<td>구매 개수: ${oriBean.ori_bkcount }</td>
    	</tr>
    </table>
    </c:forEach>
    
    <form:form action="${root }order/Or_afterPro" method="post" modelAttribute="OrInsert">
		
        <div class="form-group">
        			<form:select path="or_status">
        				<form:option value="교환" label="교환"/>
        				<form:option value="환불" label="환불"/>
        				<form:option value="취소" label="취소"/>
        			</form:select>
        </div>
        
        
        
        
            <form:button class="form-control" type="submit">구매 확정</form:button>
    <form:button class="form-control" href="javascript:window.history.back();">뒤로가기</form:button>
    
</form:form>
</form>

</body>
</html>