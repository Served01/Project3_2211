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
		<input type="text" id="or_mbid" name="or_mbid" class="form-control" value="${orBean.or_mbid }" disabled="disabled"/>
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
            
</form>
        
<%-- <div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="form-group">
						<label for="or_number">주문번호</label>
						<input type="text" id="or_number" name="or_number" class="form-control" value="${detailOrBean.or_number }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_mbid">아이디</label>
						<input type="text" id="or_mbid" name="or_mbid" class="form-control" value="${detailOrBean.or_mbid }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_bknumber">책번호</label>
						<input type="text" id="or_bknumber" name="or_bknumber" class="form-control" value="${detailOrBean.or_bknumber }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_bkprice">책가격</label>
						<input type="text" id="or_bkprice" name="or_bkprice" class="form-control" value="${detailOrBean.or_bkprice }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_cacount">책갯수</label>
						<input type="text" id="or_cacount" name="or_cacount" class="form-control" value="${detailOrBean.or_cacount }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_status">주문상태</label>
						<input type="text" id="or_status" name="or_status" class="form-control" value="${detailOrBean.or_status }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_date">주문날짜</label>
						<input type="text" id="or_date" name="or_date" class="form-control" value="${detailOrBean.or_date }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_delivery">송장번호</label>
						<input type="text" id="or_delivery" name="or_delivery" class="form-control" value="${detailOrBean.or_delivery }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="or_address">배송주소</label>
						<input type="text" id="or_address" name="or_address" class="form-control" value="${detailOrBean.or_address }" disabled="disabled"/>
					</div>
					
					<div class="form-group">
						<div class="text-right">
							<a href="${root }order/Or_list?or_mbid=admin" class="btn btn-primary">목록보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div> --%>

</body>
</html>