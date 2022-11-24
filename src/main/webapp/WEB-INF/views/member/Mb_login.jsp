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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<c:import url="/Main/header"></c:import>
	<div class="container" style="margin-top: 100px">
	<h3>로그인</h3>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<c:if test="${fail == true }">
							<div class="alert alert-danger">
								<h3>로그인 실패</h3>
								<p>아이디 비밀번호를 확인해주세요</p>
							</div>
						</c:if>
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

