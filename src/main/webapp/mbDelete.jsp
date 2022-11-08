<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원정보 삭제 jsp</title>
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
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <a href="#" onclick="location.href='insertBook.jsp'"><h2><i class="fa-solid fa-book"></i>Ezen Book Store</h2></a>  
        <br>
        <h4 class="mb-3">회원정보 삭제</h4>
        <form class="validation-form" novalidate>
                
          <div class="mb-3">
              <label for="name">아이디</label>
              <input type="text" class="form-control" id="id" placeholder="" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
            </div>
             <div class="mb-3">
              <label for="nickname">비밀번호</label>
              <input type="password" class="form-control" id="nickname" placeholder="" value="" required>
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
          
          <hr class="mb-4">
       
          <div class="mb-4"></div>
 			<div class="hi">
          <button class="btn btn-dark" type="submit">삭제하기</button>
          <button class="btn btn-dark" onclick="location.href='inputshippingAddress.jsp'">뒤로 가기</button>
        </div>
        </form>
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