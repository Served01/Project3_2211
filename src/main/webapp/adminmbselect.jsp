<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원 정보 보기 화면 - 마이페이지(관리자)</title>
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
<div class="container" align="center">
	<div class="input-form col-md-12 mx-auto">	
        <a href="#" onclick="location.href='insertBook.jsp'"><h2><i class="fa-solid fa-book"></i>Ezen Book Store</h2></a>  
        <br>
        <h4 class="mb-3">회원 정보 보기 화면 - 마이 페이지(관리자)</h4>
	<table border="1">
		<tr align="center">
			<td height="20" width="150">아이디</td>
			<td height="20" width="300">123123</td>
		</tr>
		<tr align="center">
			<td height="20" width="150">이름</td>
			<td height="20" width="300">123123</td>
		</tr>

		<tr align="center">
			<td height="20" width="150">이메일</td>
			<td height="20" width="300">123123</td>
		</tr>
		<tr align="center">
			<td height="20" width="150">전화번호</td>
			<td height="20" width="300">123123</td>
		</tr>
		
		<tr align="center">
			<td height="20" width="150">성별</td>
			<td height="20" width="300">
			남성
			</td>
		</tr>
		<tr align="center">
			<td height="20" width="150">가입일자</td>
			<td height="20" width="300">123123123</td>
		</tr>
		</table>
		 
          <div class="mb-4"></div>
          <button class="btn btn-dark" onclick="location.href='mbmodify.jsp'">수정</button>
          <button class="btn btn-dark" type="submit">삭제</button>
          <button class="btn btn-dark" type="submit">메인 화면</button>
          <hr class="mb-4">
          <table border="1">
		<tr align="center">
			<td height="20" width="150">배송지</td>
			<td height="20" width="300">서울특별시 성북구 안암동 35-35</td>
		</tr>
	   </table>
	   <div class="mb-4"></div>
				<button class="btn btn-dark" onclick="location.href='inputshippingAddresspro.jsp'">배송지 추가</button>
				<button class="btn btn-dark" onclick="location.href='mainSession.jsp?center=mbDeleteform.jsp&mb_id='">배송지 삭제</button>
				
		
		
<footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 </p>
    </footer>
</div>

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