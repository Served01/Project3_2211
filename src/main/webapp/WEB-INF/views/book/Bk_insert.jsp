<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <form class="validation-form" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">책 일련번호</label>
              <input type="number" class="form-control" id="number" placeholder="xxxxxxxxxx" value="" required>
              <div class="invalid-feedback">
                일련번호를 입력해 주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">책 제목</label>
              <input type="text" class="form-control" id="title" placeholder="" value="" required>
              <div class="invalid-feedback">
                책의 제목을 입력해 주세요.
              </div>
            </div>
          </div>
          
          <div class="mb-3">
              <label for="name">책 저자</label>
              <input type="text" class="form-control" id="writer" placeholder="" value="" required>
              <div class="invalid-feedback">
                책의 저자를 입력해 주세요
            </div>
            <div class="mb-3">
              <label for="name">책 출판사</label>
              <input type="text" class="form-control" id="publisher" placeholder="" value="" required>
              <div class="invalid-feedback">
                책 출판사를 입력해 주세요
            </div>
            
             <div class="mb-3">
              <label for="name">책 출간일</label>
              <input type="text" class="form-control" id="pubdate" placeholder="" value="" required>
              <div class="invalid-feedback">
                책 출간일을 입력해 주세요
            </div>
         <div class="mb-3">
              <label for="name">책 이미지</label>
              <input type="file" class="form-control" id="image" placeholder="" value="" required>
              <div class="invalid-feedback">
                책 이미지를 선택해주세요
            </div>
          

            <div class="mb-3">
              <label for="root">책 지역</label>
              <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>국내</option>
                <option>해외</option>
              </select>
              <div class="invalid-feedback">
                책의 지역을 선택해주세요.
              </div>
            </div>
          
           <div class="mb-3">
              <label for="name">책 장르</label>
              <input type="text" class="form-control" id="genre" placeholder="" value="" required size="10px">
              <div class="invalid-feedback">
                책의 장르를 입력해 주세요.
            </div>

			 <div class="mb-3">
              <label for="name">책 상세내용</label>
              <input type="textarea" class="form-control" id="detail" placeholder="" value="" required style="width:620px;height:200px;" >
              <div class="invalid-feedback">
                책 상세내용을 입력해 주세요.
            </div>
            
             <div class="mb-3">
              <label for="name">책 보유 재고</label>
              <input type="number" class="form-control" id="quantity" placeholder="" value="" required>
              <div class="invalid-feedback">
                책의 재고를 입력해 주세요.
                
            </div>
             <div class="mb-3">
              <label for="name">책 가격</label>
              <input type="number" class="form-control" id="price" placeholder="" value="" required>
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
          <button class="btn btn-primary btn-lg btn-block" type="submit">입력 완료</button>
          <button class="btn btn-primary btn-lg btn-block" type="submit">뒤로 가기</button>
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