<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Mb_select</title>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원 정보 보기 화면 - 마이페이지</title>
  <script src="https://kit.fontawesome.com/ece1cdce53.js" crossorigin="anonymous"></script>
  <!-- Bootstrap CSS -->
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
  </style>
</head>
<body>
<c:import url="/Main/header"></c:import>
<div class="container" align="center">
	<div class="input-form col-md-12 mx-auto">	
        <a href="#" onclick="location.href='insertBook.jsp'">
        <i class="fa-solid fa-book"> </i>Ezen Book Store</a>  
        <br>
        <h4 class="mb-3">회원 정보 보기 화면 - 마이 페이지</h4>
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
						<div class="mb-4"></div>
         				 <button class="btn btn-dark" onclick="location.href='Mbupdate?mb_id=${mb_id }'">수정</button>
         				 <button class="btn btn-dark" onclick="location.href='Mbdelete?mb_id=${mb_id }'">삭제</button>
         				 <a href="${root }index" class="btn btn-danger">메인화면</a>
					
						<c:import url="/delivery/DvList">
							
						</c:import>
					</div>	
						
          
</div>
<c:import url="/Main/footer"></c:import>
</body>
</html>