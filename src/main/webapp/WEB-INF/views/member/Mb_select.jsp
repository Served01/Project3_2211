<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Mb_select</title>
<head>
</head>
<body>

<!--         <h4 class="mb-3">회원 정보 보기 화면 - 마이 페이지</h4> -->
<!-- 			<table border="1"> -->
			<h2>회원정보 상세보기</h2>
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
<!-- 		</table> -->
          <div class="mb-4"></div>
          <button class="btn btn-dark" onclick="location.href='Mbupdate'">수정</button>
          <button class="btn btn-dark" onclick="location.href='Mbdelete'">삭제</button>
          <a href="${root }index" class="btn btn-danger">메인화면</a>

</body>
</html>