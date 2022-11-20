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
<script>
	function CheckDvNick(){
				
		var dv_nick = $("#dv_nick").val()
		
		if(dv_nick.length == 0){
			alert("닉네임를 입력해 주세요.")
			return;
		}
		
		$.ajax({
			url: '${root}delivery/CheckDvNick/' + dv_nick,
			type: 'get',
			dataType: 'text',
			success: function(result){
				
				if(result.trim() == 'true'){
					alert('사용 할 수 있는 아이디 입니다.')
					$("#dv_nickExist").val('true')
				}else{
					alert('사용 할 수 없는 아이디 입니다.')
					$("#dv_nickExist").val('false')
					
				}				
			}			
		})
	}
	function ResetDvNick(){
		$("#dv_nickExist").val('false')
	}
</script>
<body>

    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">배송지 추가</h4>
        <form:form action="${root}delivery/DvInsertPro" method="post" modelAttribute="InsertDvBean">          
            <form:hidden path="mb_id" value="hyun3"/>
            
            <div class="form-group">
              <form:label path="dv_nick">닉네임</form:label>
              <div class="input-group">
              <form:input path="dv_nick" class="form-control"/>             
              <div class="input-group-append">
			  	<form:button type="button" class="btn btn-dark" onclick="CheckDvNick()">중복확인</form:button>
			  </div>
			  </div>
			  <form:errors path="dv_nick" style="color:red"/>
            </div>
            <div class="form-group">
              <form:label path="dv_name">이름</form:label>
              <form:input path="dv_name" class="form-control"/>
              <form:errors path="dv_name" style="color:red"/>
            </div>
            <div class="form-group">
              <form:label path="dv_tel">연락처</form:label>
              <form:input path="dv_tel" class="form-control" placeholder="xx(x)-xxx(x)-xxxx"/> 
              <form:errors path="dv_tel" style="color:red"/>                                
           <div class="form-group">
              <form:label path="dv_address">배송지</form:label>
              <form:input path="dv_address" class="form-control"/>   
              <form:errors path="dv_address" style="color:red"/>               
           </div>         
          <div class="row">
            </div>
            <div class="col-md-4 mb-3">
           
            </div>
          </div>
          <hr class="mb-4">
          <div class="hi">
          <form:button class="btn btn-dark" type="submit">입력 완료</form:button>
          </div>
        </form:form>
      </div>
    </div>
  
 
</body>

</html>
