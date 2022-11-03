<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>책 정보 입력 - Bootstrap</title>

  <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!-- JS -->	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

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

      margin-top: 50px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
<!-- JS -->
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">책 정보 입력</h4>
        <form:form class="validation-form" novalidate action="${root }book/Bk_insertPro" method="post" modelAttribute="Bk_Bean" enctype="multipart/form-data">
          <div class="row">
            <div class="col-md-6 mb-3">
              <form:label path="bk_number">책 일련번호</form:label>
              <form:input type="number" class="form-control" path="bk_number" placeholder="xxxxxxxx" required/>
              <div class="invalid-feedback">
                일련번호를 입력해 주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <form:label path="bk_title">책 제목</form:label>
              <form:input type="text" class="form-control" path="bk_title" required/>
              <div class="invalid-feedback">
                책의 제목을 입력해 주세요.
              </div>
            </div>
          </div>
          
          <div class="mb-3">
              <form:label path="name">책 저자</form:label>
              <form:input type="text" class="form-control" path="bk_writer" required/>
              <div class="invalid-feedback">
                책의 저자를 입력해 주세요
            </div>
            </div>
            
            <div class="mb-3">
              <form:label path="bk_publisher">책 출판사</form:label>
              <form:input type="text" class="form-control" path="bk_publisher" required/>
              <div class="invalid-feedback">
                책 출판사를 입력해 주세요
            </div>
            </div>
            
             <div class="mb-3">
              <form:label path="name">책 출간일</form:label>
              <form:input type="text" class="form-control" path="bk_pubdate" required/>
              <div class="invalid-feedback">
                책 출간일을 입력해 주세요
            </div>
            </div>
            
         <div class="mb-3">
              <form:label path="bk_image">책 이미지</form:label>
              <form:input type="file" class="form-control" path="bk_image" accept="image/*" required/>
              <div class="invalid-feedback">
                책 이미지를 선택해주세요
              </div>
         </div>      

            <div class="mb-3">
              <form:label path="bk_local">책 지역</form:label>
              <form:select class="custom-select d-block w-100" path="bk_local">
                <form:option value="1">국내</form:option>
                <form:option value="2">해외</form:option>
              </form:select>
              <div class="invalid-feedback">
                책의 지역을 선택해주세요.
              </div>
            </div>
          
           <div class="mb-3">
              <form:label path="bk_genre">책 장르</form:label>
              <form:select class="custom-select d-block w-100" path="bk_genre">
                <form:option value="1">소설</form:option>
                <form:option value="2">인문</form:option>
                <form:option value="3">취미</form:option>
                <form:option value="4">경제</form:option>
                <form:option value="5">자기계발</form:option>
                <form:option value="6">예술</form:option>
                <form:option value="7">기술</form:option>
                <form:option value="8">잡지</form:option>
              </form:select>
              <div class="invalid-feedback">
                책의 장르를 입력해 주세요.
              </div>
            </div>

			 <div class="mb-3">
              <form:label path="bk_detail">책 상세내용</form:label>
              <form:textarea class="form-control" path="bk_detail" style="width:620px;height:200px;resize:none;" required/>
              <div class="invalid-feedback">
                책 상세내용을 입력해 주세요.
              </div>
             </div>
            
             <div class="mb-3">
              <form:label path="bk_quantity">책 보유 재고</form:label>
              <form:input type="number" class="form-control" path="bk_quantity" required/> 개
              <div class="invalid-feedback">
                책의 재고를 입력해 주세요.            
              </div>
             </div>
             
             <div class="mb-3">
              <form:label path="bk_price">책 가격</form:label>
              <form:input type="number" class="form-control" path="bk_price" required/> 원
              <div class="invalid-feedback">
                책의 가격을 입력해 주세요.
            </div>
            
          <div class="row">
            
            </div>
            <div class="col-md-4 mb-3">
           
            </div>
          </div>
          <hr class="mb-4">
          <div class="mb-4"></div>
          <form:button class="btn btn-primary btn-lg btn-block" type="submit">입력 완료</form:button>
          <form:button class="btn btn-primary btn-lg btn-block" a href="javascript:window.history.back();">뒤로 가기</form:button>
        </form:form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 </p>
    </footer>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>

</html>