<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mb_delete</title>
<!-- Bootstrap CDN -->
</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />
	<h2>회원정보 삭제(임시삭제 구현)</h2>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form:form action="${root}member/Mbdeletepro" method="post" modelAttribute="deleteMbBean">
							<div class="form-group">
								<form:label path="mb_id">아이디</form:label>
								<form:input path="mb_id" class="form-control" readonly="true" />
							</div>
							<div class="form-group">
								<form:label path="mb_pw2">비밀번호</form:label>
								<form:input type="password" path="mb_pw2" class="form-control" />
								<form:errors path="mb_pw2" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="mb_pw"></form:label>
								<form:input type="hidden" path="mb_pw" class="form-control" readonly="true" />
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class="btn btn-primary">삭제하기</form:button>
									<a href="${root }member/Mbinsert" class="btn btn-danger">회원가입</a>
									<a href="${root }index" class="btn btn-danger">메인화면</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

</body>
</html>
