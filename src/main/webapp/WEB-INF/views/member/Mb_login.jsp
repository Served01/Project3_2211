<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<title>Mb_login</title>
<!-- Bootstrap CDN -->
</head>
<body>
<c:import url="/Main/header"></c:import>
<hr>
	<h3>로그인</h3>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						
						<form:form action="${root }member/Mbloginpro" method="post"
							modelAttribute="tempMbBean">
							<div class="form-group">
								<form:label path="mb_id">아이디</form:label>
								<form:input path="mb_id" class="form-control" />
								<form:errors path="mb_id" style="color:red"></form:errors>
							</div>
							<div class="form-group">
								<form:label path="mb_pw">비밀번호</form:label>
								<form:input type="password" path="mb_pw" class="form-control" />
								<form:errors path="mb_pw" style="color:red"></form:errors>
							</div>
							<div class="form-group text-right">
								<form:button type="submit" class="btn btn-primary">로그인</form:button>
								<a href="${root }member/Mbinsert" class="btn btn-primary">회원가입</a>
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

