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
<title>책 정보 입력 - Bootstrap</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
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

table {
	border-right: none;
	border-left: none;
	border-top: none;
	border-bottom: none;
}

img {
	width: 300px;
	height: 300px;
	object-fit: fill;
}
</style>
</head>
<script>
      function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }
    </script>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">책 정보 입력</h4>	
				<form:form class="validation-form" action="${root }book/Bk_insert_pro" method="post" modelAttribute="insert_bk_Bean" enctype="multipart/form-data">		
				<table border="1">
					<tr align="center" style="height:60; width:1150;">
						<td rowspan="8" style="width:600px">
							<div style="height=100%; weight=100%">
								<div id="image_container" style="height: 100%; width: 100%;">
							</div>
						</td>

					<tr align = "center">
						<td height="20" width="200">일련번호</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_number"/>
						</td>
	</tr>
					<tr align="center">
						<td height="20" width="200">제목</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_title"/>
						</td>
					</tr>
					<tr align="center">
						<td height="20" width="200">저자</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_writer"/>
						</td>
					</tr>
					<tr align="center">
						<td height="20" width="200">출판사</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_publisher"/>
						</td>
					</tr>
					<tr align="center">
						<td height="20" width="200">지역</td>
						<td height="20" width="400">
              			<form:select class="custom-select d-block w-100" path="bk_local">
                		<form:option value="1">국내</form:option>
                		<form:option value="2">해외</form:option>
              			</form:select>
              			</td>
					</tr>
					<tr align="center">
						<td height="20" width="200">장르</td>
						<td height="20" width="400">
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
						</td>
					</tr>
					<tr align="center">
						<td height="20" width="200">수량</td>
						<td height="20" width="200">
						<form:input class="form-control" path="bk_quantity"/>
						</td>
						<td height="20" width="50">개</td>
					</tr>
					<tr align="center">
						<td height="20" width="10">
						<form:input type="file" class="form-control" path="upload_file" accept="image/*" onchange="setThumbnail(event);" /></td>
						<td height="20" width="200">가격</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_price"/>원
						</td>
					</tr>

					<tr align="center">

						</td>
					</tr>
					<!-- 작성일 sysdate 처리 -->
					<tr align="center">
						<td colspan="3" height="200" width="400">
						<form:textarea class="form-control" path="bk_detail" style="width: 620px; height: 200px; resize: none;"/>
						</td>
					</tr>
				</table>
				<hr class="mb-4">
				<form:button class="btn btn-primary btn-lg btn-block">입력완료</form:button>
				<form:button class="btn btn-primary btn-lg btn-block" href="javascript:window.history.back();">뒤로가기</form:button>
			</form:form>
			</div>
			</div>
			</div>

</body>

</html>