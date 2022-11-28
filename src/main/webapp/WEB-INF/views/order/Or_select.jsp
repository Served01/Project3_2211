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

<form name="orderdetail" id="orderdetail" method="post" class="orderdetail">
	<c:forEach var="orBean" items="${infoOrBean}" varStatus="status">
	        
	        
	        <table>
		<tr>
			<td>주문 번호 : ${orBean.or_number }</td>
		</tr>
		<tr>
			<td>아이디 : ${orBean.mb_id }</td>
		</tr>
		<tr>	
			<td>구매자 이름 : ${orBean.mb_name }</td>
		</tr>
		<tr>
			<td>구매자 연락처: ${orBean.mb_tel }</td>
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
			<td>받는 사람: ${orBean.dv_name }</td>
		</tr>
		<tr>
			<td>받는 사람 연락처: ${orBean.dv_tel }</td>
		</tr>
		<tr>
			<td>배송지: ${orBean.dv_address }</td>
		</tr>
		<tr>
			<td><button type="button" class="btn btn-dark" onClick="location.href='${root}order/Or_list?mb_id=${orBean.mb_id }'">주문 목록</button>      
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
    		
			
	           	 </table>                 	
    </c:forEach>
    <hr>
    <h3>주문 품목</h3>
    <c:forEach var="oriBean" items="${itemsOrBean }" varStatus="status">
    <table>
    	<tr>
    		<td>주문 번호: ${oriBean.or_number }</td>
    	</tr>
		<tr>
    		<td>책 번호: ${oriBean.bk_number }</td>
		</tr>
		<tr>
    		<td>책 제목: <a href="${root}book/Bk_select?bk_number=${oriBean.bk_number }">${oriBean.bk_title }</a></td>
    	</tr>
		<tr>
			<td>${oriBean.bk_image }</td>
    	</tr>
		<tr>
    		<td>구매 가격: ${oriBean.bk_price }</td>
    	</tr>
		<tr>
    		<td>할인율: ${oriBean.ori_bkdiscount }</td>
    	</tr>
		<tr>
    		<td>구매 개수: ${oriBean.ori_bkcount }</td>
    	</tr>
    	
    </table>
    </c:forEach>
		</form>
</body>
</html>