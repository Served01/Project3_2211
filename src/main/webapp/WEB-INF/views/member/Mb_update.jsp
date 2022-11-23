<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mb_update</title>
<!-- Bootstrap CDN -->
</head>
<body>
<c:import url="/Main/header"></c:import>
<h2>회원정보 수정</h2>
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root}member/Mbupdatepro" method="post" modelAttribute="updateMbBean">
					<div class="form-group">
						<form:label path="mb_id">아이디</form:label>
						<form:input path="mb_id" class="form-control" readonly="true"/>
					</div>
					<div class="form-group">
						<form:label path="mb_name">이름</form:label>
						<form:input type="text" path="mb_name" class="form-control"/>
						<form:errors path="mb_name" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="mb_pw">변경할 비밀번호</form:label>
						<form:input type="password" path="mb_pw" class="form-control"/>
						<form:errors path="mb_pw" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="mb_pw2">변경할 비밀번호 확인</form:label>
						<form:input type="password" path="mb_pw2" class="form-control"/>
						<form:errors path="mb_pw2" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="mb_email">변경할 이메일</form:label>
						<form:input type="email" path="mb_email" class="form-control"/>
						<form:errors path="mb_email" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="mb_tel">변경할 연락처</form:label>
						<form:input type="tel" path="mb_tel" class="form-control"/>
						<form:errors path="mb_tel" style="color:red"/>
					</div>
					<div class="form-group">
						<div class="text-right">
							<form:button class="btn btn-primary">수정하기</form:button>
							<a href="${root }member/Mbinsert" class="btn btn-danger">회원가입</a>
						</div>
					</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<c:import url="/Main/footer"></c:import>
</body>
</html>
