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
      max-width: 730px;

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
    table{
 border-right:none;

border-left:none;

border-top:none;

border-bottom:none;
}
img {
  width: 280px;
  height: 280px;
  object-fit: fill;
}

Width:100;
}
.id{
display : inline;
}
#id{
display : inline;
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
				img.style.width = '100%'; 
				img.style.height = '290px';
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

<body style="overflow-y: hidden"></body>
  
    <div class="input-form-backgroud row" >
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">책 정보 입력</h4>
        <table border="1">
	<tr align = "center" height="50" width="1500">
		<td rowspan="7"><div id='View_area' style='position:relative; width: 100%; height: 100%; color: black; border: 0px solid black; dispaly: inline; '></div></td>
		<td height="20" width="200">일련번호</td>
		<td height="20" width="200">
		<div class="input-group">
                  <input type="text" class="form-control" path="bk_number" onkeypress="resetBk_numExist()"/>
                  <div class="input-group-append">
                  <button type="button" class="btn btn-primary" onclick="checkBk_numExist()">중복확인</button>
                  </div>
                  </div>
		</td>
	</tr>
	<tr align = "center">
		<td height="20" width="200">제목</td>
		<td height="20" width="400"><input type="text" class="form-control" id="title" placeholder="" value="" required></td>
	</tr>
	<tr align = "center">
		<!-- <td> rowspan=6 -->
		<td height="20" width="200">저자</td>
		<td height="20" width="400"><input type="text" class="form-control" id="writer" placeholder="" value="" required></td>
	</tr>
	<tr align = "center">
		<!-- <td> rowspan=6 -->
		<td height="20" width="200">출판사</td>
		<td height="20" width="400"><input type="text" class="form-control" id="publisher" placeholder="" value="" required></td>
	</tr>

	<tr align = "center">
		<!-- <td> rowspan=6 -->
		<td height="20" width="200">지역</td>
		<td height="20" width="400">
		 <select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>국내</option>
                <option>해외</option>
              </select>
	
		</td>
	</tr>
	<tr align = "center">
		<!-- <td> rowspan=6 -->
		
		<td height="20" width="200">장르</td>
		<td height="20" width="400">
		<select class="custom-select d-block w-100" id="root">
                <option value=""></option>
                <option>소설</option>
                <option>인문</option>
                <option>취미</option>
                <option>경제</option>
                <option>자기개발</option>
                <option>예술</option>
                <option>기술</option>
                <option>잡지</option>
              </select>
		 <div class="invalid-feedback">
                책의 장르를 입력해 주세요.
            </div>
		</td>
	</tr>
	<tr align = "center">
		<!-- <td> rowspan=6 -->
		<td height="20" width="200">수량</td>
		<td height="20" width="400"><input type="text" onBlur="parseelement(this)" class="form-control" id="publisher" placeholder="" value="" required></td>
	</tr>
	<tr align="center">
		<td  height="20" width="10">
		  <input type="file" name="profile_pt" id="profile_pt" onchange="previewImage(this,'View_area')">
		</td>
		<td height="20" width="200">가격</td>
		<td height="20" width="400"><input type="text" class="form-control" id="gold" placeholder="" value="" required></td>
	</tr>
	
	<tr align="center">
		<!-- <td> rowspan=2 -->
		
		
		</td>
	</tr>
	<!-- 작성일 sysdate 처리 -->
	<tr align="center">
		<td colspan="3" height="200" width="400">
			<textarea id="detail" class="form-control" id="detail" placeholder="" value="" required style="width:670px;height:200px; resize:none;" ></textarea>
		</td>
	</tr>
	</table>
	  <hr class="mb-4">
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">입력 완료</button>
          <button class="btn btn-primary btn-lg btn-block" type="submit">뒤로 가기</button>
	</div>
	
     
 
</body>

</html>