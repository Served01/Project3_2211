<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>책 구매 화면</title>
</head>

 

<body bgcolor="WHITE"> 

 




    <form name="inform" method="post" action="updateCart.jsp"> 
<c:set var = "sumprice" value = "0" />
    <table border="1" width="750" cellpadding="0" cellspacing="0" align="center">  
<c:forEach var="caBean" items="${infoCaBean }">
      <c:set var = "bksum" value = "${caBean.bk_price * caBean.ca_bkcount }" />
      <tr>  
        <td align="center"  width="50">번호 ${caBean.bk_image }</td>  
        <td align="center"  width="300">책이름 ${caBean.bk_title }</td>  
        <td align="center"  width="100">판매가격 ${caBean.bk_price }</td> 
        <td align="center"  width="150">수량 ${caBean.ca_bkcount }</td>  
        <td align="center"  width="150">금액 ${bksum }</td> 
       </tr> 
       
<c:set var= "sumprice" value="${sumprice + caBean.bk_price}"/>

       <tr>  
          <td align="center"  width="50"></td>  
          <td  width="300"> 
             <img src="../images/" border="0" width="30" height="50" align="middle"> 
             
          </td>  
          <td align="center"  width="100">\</td> 
          <td width="150" align="center"></td>  
          <td align="center"  width="150" align="center"> 
            
            
		  </td> 
       </tr> 
</c:forEach>

<c:choose>
			<c:when test="${sumprice <= 30000}">
				<hidden path="or_deliveryCost" value="3000"/>
				<c:out value="3000"/>원
				<c:set var= "sumprice" value="${sumprice + 3000}"/>
			</c:when>
			<c:otherwise>
				<input type="hidden" path="or_deliveryCost" value="0"/>
				<c:out value="0"/>원
			</c:otherwise>
		</c:choose>

       <tr> 
          <td colspan="5" align="right"><b>총 구매금액 : ${sumprice }</b></td> 
      </tr> 
   </table> 
   </form> 
   </center> 

   <br> 
   <form method="post" action="buyPro.jsp" name="buyinput"> 
   <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center"> 
      <tr >  
       <td  colspan="2" align="center"><font size="+1" ><b>주문자 정보</b></font></td> 
     </tr> 
     <tr>  
       <td  width="200">성명</td> 
       <td  width="400"></td> 
     </tr> 
     <tr>  
       <td  width="200">전화번호</td> 
       <td  width="400"></td> 
     </tr> 
     <tr>  
       <td  width="200">주소</td> 
       <td  width="400"></td> 
     </tr> 
     <tr>  
       <td  width="200">결제계좌</td> 
       <td  width="400"> 
         <select name="account"> 

         </select> 
       </td> 
    </tr> 
  </table> 
  <br> 
    
   <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center"> 
      <tr>  
       <td  colspan="2" align="center"><font size="+1" ><b>배송지 정보</b></font></td> 
     </tr> 
     <tr>  
       <td  width="200">성명</td> 
       <td  width="400"> 
          <input type="text" name="deliveryName" value=""> 
       </td> 
     </tr> 
     <tr>  
       <td  width="200">전화번호</td> 
       <td  width="400"> 
         <input type="text" name="deliveryTel" value=""> 
       </td> 
     </tr> 
     <tr>  
       <td  width="200">주소</td> 
       <td  width="400"> 
         <input type="text" name="deliveryAddess" value=""> 
       </td> 
     </tr> 
     <tr>  
       <td colspan="2" align="center" bgcolor=""> 
         <input type="submit" value="확인" > 
         <input type="button" value="취소" onclick="javascript:window.location='../shopMain.jsp'">       
       </td> 
    </tr> 
  </table> 
  </form> 
</body> 
</html> 


