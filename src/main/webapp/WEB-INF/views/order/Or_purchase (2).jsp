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
<title>구매 화면</title>
</head>

<script>

let order{
 
deliverySelect: function selectDv(mb_id) {
	document.querySelectorAll("")
	
    $.ajax({
        url: '${root}delivery/DvList/' + mb_id,		// 데이터를 가져올 경로 설정
        type: 'get',		// 데이터를 가져오는 방식
        dataType: 'text' 
        success: function(){
        	
        	}
        })
},

deliveryList: function listDv
	
  
  
  
  
  
}

</script>
<body bgcolor="WHITE"> 
	
	
		
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
			<h1 class="display-5">구매 화면</h1>
		</div>
		</div>
        <div style="padding-top: 50px">
 		<table class="table table-hover">  
 				<tr>
 					<td colspan="2" align="center">상품</td>
 					<td align="center">개당 가격</td>
 					<td align="center">개수</td>
 					<td align="center">구매 가격</td>
 				</tr>
 			<c:set var = "sumprice" value = "0" />
	 		<c:forEach var="caBean" items="${infoCaBean }">
	 		<c:set var = "bksum" value = "${caBean.bk_price * caBean.ca_bkcount }" />
	 		
				<tr>
					<td align="center" width="50">${caBean.bk_image }</td>
				    <td align="center" width="300"><a href="${root}book/Bk_select?bk_number=${caBean.bk_number }">${caBean.bk_title }</a></td>
					<td align="center" width="100">${caBean.bk_price }원</td>				    
					<td align="center" width="150">${caBean.ca_bkcount }개</td>
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
		<form:hidden path="mb_name" name="mb_name"/>
		<form:hidden path="mb_tel" name="mb_tel"/>
    	<form:hidden path="or_status" value="준비중"/>
		<form:hidden path="or_date"/>
		<% int ran = 0;
		 ran = (int)(Math.random() * 2147483647);
		 //int 최대값 = 2147483647 %>
		<form:hidden path="or_delivery" value="<%=ran %>"/>
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
       <td  colspan="2" align="center"><font size="+1" ><b>받는 사람 정보</b></font></td> 
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
     <button class="form-control" type="submit">구매 확정</button>
    <button class="form-control" onclick="javascript:window.history.back();">뒤로가기</button> 
</form:form>
	<br>
<%--      <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center">
     <c:forEach var="dvBean" items="${listDvBean }" varStatus="status">
     	 	     
		 <tr>
		 <div>
		 <form:radiobutton path="dv_nick"/>
		 <p>${dvBean.dv_nick }
		 </div>
		 </tr> 
	     <tr>
	      <form:input path="dv_name" class="form-control" value="${dvBean.dv_name }" readonly="true"/>
		 </tr>
	     <tr>
	     <form:input path="dv_tel" class="form-control" value="${dvBean.dv_tel }" readonly="true"/>
		 </tr>
	     <tr>
	     <form:input path="dv_address" class="form-control" value="${dvBean.dv_address }" readonly="true"/>
		 </tr>
		 <form:radiobutton path="dv_nick"/>
		
	 </c:forEach>
	 </table> --%>
	<%-- <form:button type="submit">구매</form:button> --%>
	
	
    

</body>
</html>