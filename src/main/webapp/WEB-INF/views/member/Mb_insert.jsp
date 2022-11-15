<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>회원가입 화면 샘플 - Bootstrap</title>
<!-- <script src="https://kit.fontawesome.com/ece1cdce53.js" crossorigin="anonymous"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" -->
<!-- 	crossorigin="anonymous"> -->
<style>
</style>
<!-- Bootstrap CSS -->
</head>
<!-- 아아디 중복체크하는 스크립트 부분 -->
<script>
	function checkUserIdExist() {

		var mb_id = $("#mb_id").val()

		if (mb_id.length == 0) {
			alert("아이디를 입력해 주세요.")
			return;
		}

		$.ajax({
			url : '${root}member/checkUserIdExist/' + mb_id,
			type : 'get',
			dataType : 'text',
			success : function(result) {

				if (result.trim() == 'true') {
					alert('사용 할 수 있는 아이디 입니다.')
					$("#mbIdExist").val('true')
				} else {
					alert('사용 할 수 없는 아이디 입니다.')
					$("#mbIdExist").val('false')
				}
			}
		})
	}
	function resetUserIdExist() {
		$("#mbIdExist").val('false')
	}
</script>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<a href="#" onclick="location.href='index.jsp'">
					<i class="fa-solid fa-book"></i>Ezen Book Store
				</a><br>
				<h4 class="mb-3">회원가입</h4>
				<form:form action="${root }member/Mbinsertpro" method="post"
					modelAttribute="insertMbBean">
					<form:hidden path="mbIdExist" />
					<div class="col-md-6 mb-3">
						<div class="row"></div>
					</div>
					<div class="form-group">
						<form:label path="mb_id">아이디</form:label>
						<div class="input-group">
							<form:input path="mb_id" class="form-control"
								onkeypress="resetUserIdExist()" />
							<form:errors path="mb_id" style="color:red" />
							<div class="input-group-append">
								<form:button type="button" class="btn btn-primary"
									onclick="checkUserIdExist()">중복확인</form:button>
							</div>
						</div>
					</div>
					<div class="form-group">
						<form:label path="mb_pw">비밀번호</form:label>
						<form:input type="password" path="mb_pw" class="form-control" />
						<form:errors path="mb_pw" style="color:red" />
					</div>
					<div class="form-group">
						<form:label path="mb_pw2">비밀번호 확인</form:label>
						<form:input type="password" path="mb_pw2" class="form-control" />
						<form:errors path="mb_pw2" style="color:red" />
					</div>
					<div class="form-group">
						<form:label path="mb_name">이름</form:label>
						<form:input path="mb_name" class="form-control" />
						<form:errors path="mb_name" style="color:red" />
					</div>
					<div class="invalid-feedback">이름을 입력해주세요.</div>
					<div class="mb-3">
						<div class="form-group">
							<form:label path="mb_email">이메일</form:label>
							<form:input type="email" path="mb_email" class="form-control" />
							<form:errors path="mb_email" style="color:red" />
						</div>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
						<div class="mb-3">
							<div class="form-group">
								<form:label path="mb_tel">연락처</form:label>
								<form:input type="tel" placeholder="010-1234-5678 형식으로 입력해주세요."
									path="mb_tel" class="form-control" />
								<form:errors path="mb_tel" style="color:red" />
							</div>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>
						</div>
						<div class="row"></div>
						<div class="col-md-4 mb-3"></div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>