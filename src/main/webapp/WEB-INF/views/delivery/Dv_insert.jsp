<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/>  
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>배송지 추가</title>

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
    
    button{
    text-align:center;
    display:block;
    margin:auto;
    }
 h4{
 text-align:center;
 }
 .hi{
 text-align:center;
 }
  </style>
</head>

<body>

    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">배송지 추가</h4>
        <form:form action="${root}delivery/DvInsertPro" method="post" modelAttribute="InsertDvBean">          
            <form:hidden path="dv_id"/>
            <div class="form-group">
              <form:label path="dv_name">이름</form:label>
              <form:input path="dv_name" class="form-control"/>
            </div>
              <div class="invalid-feedback">
                이름을 입력해 주세요.
              </div>
            <div class="form-group">
              <form:label path="dv_tel">연락처</form:label>
              <form:input path="dv_tel" class="form-control"/>
              <div class="invalid-feedback">
                연락처를 입력해 주세요.
              </div>                      
           <div class="form-group">
              <form:label path="dv_address">배송지</form:label>
              <form:input path="dv_address" class="form-control"/>
              <div class="invalid-feedback">
                배송지를 입력해 주세요
              </div>
              
           </div>
            
            
          <div class="row">
            
            </div>
            <div class="col-md-4 mb-3">
           
            </div>
          </div>
          <hr class="mb-4">
          <div class="hi">
          <form:button class="btn btn-dark" type="submit">입력 완료</form:button>
          <form:button class="btn btn-dark" href="javascript:window.history.back();">뒤로가기</form:button>
          </div>
        </form:form>
      </div>
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
