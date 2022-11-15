<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>배송 정보</title>
</head>
<style>

</style>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-5">주문자 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal"
			method="post">
			<input type="hidden" name="cartId"
				value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />
				</div>
			</div>
		
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a style='width:80px;float: right;margin-left:10px' href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
						class="btn btn-secondary" role="button">이전</a>
					<input type="button" style='width:80px;float: right;margin-left:10px' class="btn btn-primary" value="수정"/>
					<input type="submit" style='width:80px;float: right;margin-left:10px' class="btn btn-primary" value="등록" />
					
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="bookbuyorder2.jsp" />
	<jsp:include page="footer.jsp" />
</body>
</html>