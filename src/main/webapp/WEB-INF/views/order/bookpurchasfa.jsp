<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <table border="1" width="750" cellpadding="0" cellspacing="0" align="center">  
      <tr>  
        <td align="center"  width="50">번호</td>  
        <td align="center"  width="300">책이름</td>  
        <td align="center"  width="100">판매가격</td> 
        <td align="center"  width="150">수량</td>  
        <td align="center"  width="150">금액</td> 
       </tr> 
       
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
       
       <tr> 
          <td colspan="5" align="right"><b>총 구매금액 : </b></td> 
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
      <tr >  
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

