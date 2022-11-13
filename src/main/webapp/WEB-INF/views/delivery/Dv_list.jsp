<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>       
<c:url var='root' value='/'/>  <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
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
<div class="container" align="center">
<div class="input-form col-md-12 mx-auto">	
	<table class="table table-hover" id='dv_list'>
		<thead>
			<tr>
				<th class="text-center d-none d-md-table-cell">아이디</th>
				<th class="text-center d-none d-md-table-cell">이름</th>
				<th class="text-center d-none d-md-table-cell">전화번호</th>
				<th class="w-50">배송지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="dvl" items="${Deliverylist }">
			<tr>
				<td height="20" width="150">${dvl.dv_id }</td>
				<td height="20" width="150">${dvl.dv_name }</td>
				<td height="20" width="150">${dvl.dv_tel }</td>
				<td height="20" width="300">${dvl.dv_address }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="mb-4">
				<a href="${root}delivery/DvInsert?Dv_info=${Dv_info}&dv_id='hyun3'" class="btn btn-dark">배송지 추가</a>
				<a href="${root}delivery/DvUpdate?Dv_info=${Dv_info}&dv_id='hyun3'" class="btn btn-dark">배송지 수정</a>
				<a href="${root}delivery/DvDelete?Dv_info=${Dv_info}&dv_id='hyun3'" class="btn btn-dark">배송지 삭제</a>
				
	</div>					
		
<footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 </p>
    </footer>
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