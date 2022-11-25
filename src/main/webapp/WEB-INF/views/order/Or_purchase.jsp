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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- 검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
<script>

function check(n, count) {
	
    if (n.checked) {
        document.getElementById("dv_name").value =
            document.getElementById('name'+count).value;
        document.getElementById("dv_tel").value =
            document.getElementById('phone'+count).value;
        document.getElementById("dv_address").value =
            document.getElementById('address'+count).value;
    } else {
    	document.getElementById("dv_name").value = "";
        document.getElementById("dv_tel").value = "";
        document.getElementById("dv_address").value = "";
    }
}

</script>
<body bgcolor="WHITE">  
		
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
					<td align="center" width="50"><img src="${pageContext.request.contextPath}/upload/${caBean.bk_image}" style="width:120px; height:145px;"></td>			
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
						<td colspan="5" align="right">배송비: 3,000원
						<p style="color:red">*30,000원 이상 구매시 배송비 무료
						</td>
						<c:set var= "sumprice" value="${sumprice + 3000}"/>
					</c:when>
					<c:otherwise>
						<td colspan="5" align="right">배송비: 0원
						<p style="color:red">*30,000원 이상 구매시 배송비 무료
						</td>
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
    	<form:hidden path="or_status" value="구매 확정"/>
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
	<br>
    
	
		 <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center">
		 <tr>
		 <td align="center" colspan="2">받는 사람 정보</td>
		 </tr>
		 <tr>
		 <td align="center" colspan="2"> 
    <label><input type="radio" id="chk" name="chk" onclick="check(false, 0)" checked/>직접 입력</label>
	<c:forEach var="dvBean" items="${listDvBean }" varStatus="status">
	<label><input type="radio" id="chk" name="chk" onclick="check(this, ${status.count })">${dvBean.dv_nick }</label>
    <input type="hidden" name="name${status.count }" id="name${status.count }" value="${dvBean.dv_name }"/>
    <input type="hidden" name="phone${status.count }" id="phone${status.count }" value="${dvBean.dv_tel }"/>
    <input type="hidden" name="address${status.count }" id="address${status.count }" value="${dvBean.dv_address }"/>
    </c:forEach>
    </td>
    </tr>
     <tr>
      	<td  width="200">성명</td> 
       	<td  width="400"> 
       	<form:input id="dv_name" name="dv_name" path="dv_name" class="form-control" width="400"/>
		<form:errors path="dv_name" style="color:red"/>
		</td>
	 </tr> 
     <tr>  
        <td  width="200">전화번호</td> 
        <td  width="400">
        <form:input id="dv_tel" name="dv_tel" path="dv_tel" class="form-control" width="400"/>
		<form:errors path="dv_tel" style="color:red"/>
		</td> 
	 </tr> 
     <tr>  
        <td  width="200">주소</td> 
        <td  width="400">
        <div class="input-group">
        <form:input id="dv_address" name="dv_address" path="dv_address" class="form-control postcodify_address" width="400"/>
		<form:errors path="dv_address" style="color:red"/>
		<div class="input-group-append">
		<button type='button' class="btn btn-dark"  id="postcodify_search_button">검색</button>
		</div>
		</div> 
		</td>
	 </tr>
     </table>
     <button type="submit" class="btn btn-dark" >구매 확정</button>
    <a href="javascript:window.history.back();" class="btn btn-dark" role="button">뒤로가기</a> 
</form:form>
	
</body>
</html>