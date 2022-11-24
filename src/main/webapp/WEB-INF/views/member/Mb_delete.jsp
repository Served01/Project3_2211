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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    h4{
    text-align :center;
    }
     h2{
    text-align :center;
    }
    
     .hi{
 text-align:center;
 }
   button{
    text-align:center;
    display:block;
    margin:auto;
    }
   .hi{
   text-align:center;
   } 
    
</style>
</head>
<body>
<%-- 	<c:import url="/Main/header"></c:import> --%>
	<h2>회원정보 삭제</h2>
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
									<a href="${root }Main/center" class="btn btn-dark">메인화면</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
<%-- <c:import url="/Main/footer"></c:import> --%>
</body>
</html>
