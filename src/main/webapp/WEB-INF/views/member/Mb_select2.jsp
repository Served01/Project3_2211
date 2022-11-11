<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<c:url var='root' value='/'/>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:import url="/WEB-INF/views/include/header.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
<!-- 					<div class="form-group"> -->
<!-- 						<label for="mb_idx">회원번호</label> -->
<%-- 						<input type="text" id="mb_idx" name="mb_idx" class="form-control" value="${mbBean.mb_idx }" disabled="disabled"/> --%>
<!-- 					</div> -->
					<div class="form-group">
						<label for="mb_id">아이디</label>
						<input type="text" id="mb_id" name="mb_id" class="form-control" value="${mbBean.mb_id }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="mb_name">이름</label>
						<input type="text" id="mb_name" name="mb_name" class="form-control" value="${mbBean.mb_name }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="mb_email">이메일</label>
						<input type="text" id="mb_email" name="mb_email" class="form-control" value="${mbBean.mb_email }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="mb_tel">연락처</label>
						<input type="text" id="mb_tel" name="mb_tel" class="form-control" value="${mbBean.mb_tel }" disabled="disabled"/>
					</div>
					
					
					<div class="form-group">
						<div class="text-right">
							<a href="${root }member/Mb_update" class="btn btn-info">수정하기</a>
							<a href="${root }member/Mb_delete" class="btn btn-danger">탈퇴하기</a>
							<a href="${root }index" class="btn">메인으로</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
