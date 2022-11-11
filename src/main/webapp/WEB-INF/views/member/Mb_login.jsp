<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <!------ Include the above in your HEAD tag ---------->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
</head>

<body>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!-- 	<div class="wrapper fadeInDown"> -->
<!-- 		<div id="formContent"> -->
			<!-- Tabs Titles -->
<!-- 			<div class="fadeIn first"> -->
<!-- 				<img -->
<!-- 					src="data:image/png;base64,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" -->
<!-- 					id="icon" alt="User Icon" /> -->
				<h1>로그인</h1>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="container" style="margin-top: 100px">
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
									<form:input path="mb_pw" class="form-control" />
									<form:errors path="mb_id" style="color:red"></form:errors>
								</div>
								<div class="form-group text-right">
									<form:button type="submit" class="btn btn-primary">로그인</form:button>
									<a href="${root }member/Mbinsert" class="btn btn-danger">회원가입</a>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

