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
<!-- JS -->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

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
.input { margin:0 0 0 50; }

.input-form {
	max-width: 1050px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	margin-bottom:50px;	
}

table {
	border-right: none;
	border-left: none;
	border-top: none;
	border-bottom: none;
}

img {
	width: 500px;
	height: 600px;
	object-fit: fill;
}

button{
    text-align:center;
    display:block;
    margin:auto;
    }
    
.hi{
	text-align:center;
 }
.form-control {
	height: calc(1.8em + 0.75rem + 2px);
}
input::file-selector-button {
    Background: #343A40;
    color: white;
    padding: auto;
    border: thin solid grey;
    border-radius: 3px;
}
</style>
</head>
<script>
function previewImage(targetObj, View_area) {
		var preview = document.getElementById(View_area); //div id
		var ua = window.navigator.userAgent;

	  //ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(View_area); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + View_area)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + View_area;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
	  //ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for ( var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				var img = document.createElement("img"); 
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '500px'; 
				img.style.height = '600px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}
    </script>

<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto" style="margin-top:50px">
				<h4 class="mb-3" align="center">책 정보 수정</h4>
				<form:form class="validation-form" action="${root }book/BkUpdatePro" method="post" modelAttribute="updateBkBean" enctype="multipart/form-data">		
				
				<table border="1">
					<tr align="center" style="height:60; width:1150;">
						<td rowspan="9" style="width:500px; height:600px;">
							<div style="width:500px; height:600px;">
								<div id='View_area' style='position:relative; width: 100%; height: 100%; color: black; border: 0px solid black; dispaly: inline; '>
							</div>
							</div>
						</td>

					<tr align = "center">
						<td height="70" width="200">일련번호</td>
						<td height="20" width="400">
						<div class="input-group">
						<form:input class="form-control" path="bk_number" readonly="true"/>
						</div>
						<form:errors path="bk_number" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td height="70" width="200">제목</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_title"/>
						<form:errors path="bk_title" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td height="70" width="200">저자</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_writer"/>
						<form:errors path="bk_writer" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td height="70" width="200">출판사</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_publisher"/>
						<form:errors path="bk_publisher" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td height="70" width="200">출간일</td>
						<td height="20" width="400">
						<form:input class="form-control" path="bk_pubdate" placeholder="xxxx-xx-xx"/>
						<form:errors path="bk_pubdate" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td height="50" width="200">지역</td>
						<td height="20" width="400">
              			<form:select class="custom-select d-block w-100" path="bk_local">
                		<form:option value="국내">국내</form:option>
                		<form:option value="해외">해외</form:option>
              			</form:select>
              			</td>
					</tr>
					<tr align="center">
						<td height="40" width="200">장르</td>
						<td height="20" width="400">
			            <form:select class="custom-select d-block w-100" path="bk_genre">
			               <form:option value="소설">소설</form:option>
			               <form:option value="인문">인문</form:option>
			               <form:option value="취미">취미</form:option>
			               <form:option value="경제">경제</form:option>
			               <form:option value="자기계발">자기계발</form:option>
			               <form:option value="예술">예술</form:option>
			               <form:option value="기술">기술</form:option>
			               <form:option value="잡지">잡지</form:option>
			             </form:select>
						</td>
					</tr>
					<tr align="center">
						<td height="70" width="200">재고</td>
						<td height="20" width="200">
						<div class="input-group">
						<form:input class="form-control" path="bk_quantity"/>			
						<div class="input-group-append" style="text-align:center; align-items : center;">
						개
						</div>
						</div>
						<form:errors path="bk_quantity" style="color:red"></form:errors>
						</td>		
					</tr>
					<tr align="center">
						<td height="20" width="10">
						<form:input type="file" class="form-control" path="upload_file" id="ex_file" accept="image/*" onchange="previewImage(this,'View_area')"/></td>
						<form:errors path="upload_file" style="color:red"></form:errors>
						<td height="70" width="200">가격</td>
						<td height="20" width="400">
						<div class="input-group" style="text-align:center; align-items : center;">
						<form:input class="form-control" path="bk_price"/>
						<div class="input-group-append" style="text-align:center; align-items : center;">
						원
						</div>
						</div>
						<form:errors path="bk_price" style="color:red"></form:errors>
						</td>
					</tr>
					<tr align="center">
						<td colspan="4">상세내용
						</td>
					</tr>
					<tr align="center">
						<td colspan="4" height="600" width="400">
						<form:textarea class="form-control" path="bk_detail" style="width: 1000px; height: 600px; resize: none;"/>
						<form:errors path="bk_detail" style="color:red"></form:errors>
						</td>
					</tr>
				</table>
				<hr class="mb-4">
				<div class="hi">
				<form:button type="submit" class="btn btn-dark">수정완료</form:button>
				<form:button class="btn btn-dark" href="javascript:window.history.back();">뒤로가기</form:button>
				</div>
			</form:form>
			</div>
			</div>
			</div>

</body>

</html>