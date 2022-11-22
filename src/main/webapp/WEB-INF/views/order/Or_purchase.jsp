<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>  
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<title>구매 화면</title>
<style type="text/css">
.loading{
    width:100%;
    height:100%;
    position:fixed;
    left:0px;
    top:0px;
    background:#fff;
    z-index:1000; /* 이 값으로 레이어의 위치를 조정합니다. */
}
</style>
<script>
$(window).on('load', function () {
	 $(".loading").fadeOut();
});
</script>
</head>
<body bgcolor="WHITE"> 
	<!-- 로딩 -->		
	<div class="loading"></div>
	
		
		<%-- 
		<div class="form-group">
				<div class="dv_name" width="200">받는 사람</div>
					<form:input path="dv_name" class="form-control" width="400"/>
					<form:errors path="dv_name" style="color:red"/>
		</div>
		<div class="form-group">
				<div class="dv_tel" width="200">연락처</div>
					<form:input path="dv_tel" class="form-control" width="400"/>
					<form:errors path="dv_tel" style="color:red"/>
        </div>
        <div class="form-group">
				<div class="dv_address" width="200">주소</div>
					<form:input path="dv_address" class="form-control" width="400"/>
					<form:errors path="dv_address" style="color:red"/>
        </div>
         --%>
        <div class="container">
		<div class="row">
			<div class="container">
			<h1 class="display-5">구매 목록</h1>
		</div>
		</div>
        <div style="padding-top: 50px">
 		<table class="table table-hover">  
 				<tr>
 					<td colspan="2" align="center">상품</th>
 					<td align="center">개수</th>
 					<td align="center">개당 가격</th>
 					<td align="center">구매 가격</th>
 				</tr>
 			<c:set var = "sumprice" value = "0" />
	 		<c:forEach var="caBean" items="${infoCaBean }">
	 		<c:set var = "bksum" value = "${caBean.bk_price * caBean.ca_bkcount }" />
	 		
				<tr>
					<td align="center" width="50">${caBean.bk_image }</td>
				    <td align="center" width="300">${caBean.bk_title }</td>
				    <td align="center" width="150">${caBean.ca_bkcount }개</td>
				    <td align="center" width="100">${caBean.bk_price }원</td>
				    <td align="center" width="150">${bksum }원</td>
				</tr>
	 		<c:set var= "sumprice" value="${sumprice + caBean.bk_price}"/>
	 		</c:forEach>
	 		
	 		<tr>
			 	<c:choose>
					<c:when test="${sumprice < 30000}">
						<td colspan="5" align="right">배송비: 3000원</td>
						<c:set var= "sumprice" value="${sumprice + 3000}"/>
					</c:when>
					<c:otherwise>
						<td colspan="5" align="right">배송비: 0원</td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td colspan="5" align="right">합계금액: ${sumprice }원
	 		</tr>
	 		
		</table>
		</div>
		</div>
		
	<form:form action="${root }order/Or_purchasePro" method="post" modelAttribute="updateOrPurchase">
		 
		<form:hidden path="mb_id"/>
   		<form:hidden path="or_number"/>
		<form:hidden path="mb_name"/>
		<form:hidden path="mb_tel"/>
    	<form:hidden path="or_status" value="준비중"/>
		<form:hidden path="or_date"/>
		<form:hidden path="or_delivery"/>
				<c:choose>
					<c:when test="${sumprice < 30000}">	
				<form:hidden path="or_deliveryCost" value="3000"/>
				</c:when>
					<c:otherwise>
				<form:hidden path="or_deliveryCost" value="0"/>
					</c:otherwise>
				</c:choose>
				
				<%-- <form:hidden path="or_deliveryCost" value="0"/> --%>
	
		 <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center"> 
      <tr>  
       <td  colspan="2" align="center"><font size="+1" ><b>배송지 정보</b></font></td> 
     </tr> 
     <tr>
     	
      	<td  width="200">성명</td> 
       	<td  width="400"> 
       	<form:input path="dv_name" class="form-control" width="400"/>
		<form:errors path="dv_name" style="color:red"/>
		</td>
	 </tr> 
     <tr>  
        <td  width="200">전화번호</td> 
        <td  width="400">
        <form:input path="dv_tel" class="form-control" width="400"/>
		<form:errors path="dv_tel" style="color:red"/>
		</td> 
	 </tr> 
     <tr>  
        <td  width="200">주소</td> 
        <td  width="400"> 
        <form:input path="dv_address" class="form-control" width="400"/>
		<form:errors path="dv_address" style="color:red"/>
		</td>
	 </tr>
     </table> 
     <table>
     <c:forEach var="dvBean" items="${listDvBean }" varStatus="status">
     	 <form:hidden path="mb_id"/>
	     
		 <tr>
		 <td>${dvBean.dv_nick }</td>
		 </tr> 
	     <tr>
		 <td>${dvBean.dv_name }</td>
		 </tr>
	     <tr>
		 <td>${dvBean.dv_tel }</td>
		 </tr>
	     <tr>
		 <td>${dvBean.dv_address }</td>
		 </tr>
		
	 </c:forEach>
	 </table>
	<%-- <form:button type="submit">구매</form:button> --%>
	
	<button class="form-control" type="submit">구매 확정</button>
    <button class="form-control" onclick="javascript:window.history.back();">뒤로가기</button>
    
</form:form>
</body>
</html>