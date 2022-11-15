<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
        <!-- Webpage Title -->
        <title>책 리뷰공간</title>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">

        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>

        <!-- 구글폰트 -->
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
        <style>
        td{
        padding-top:18px;
        }
    button{
    text-align:center;
    display:block;
    margin:auto;
    }
    
      .hi{
   text-align:center;
   } 
  #hiyo {
  width: 300px;
  margin-left: auto;
  margin-right: auto;
}
        </style>
   </head>
    <body>
        <div class="container">
            <div class="info">
                <h1 style="text-align:center">리뷰 목록</h1>
               <div class="reviews">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">작성자</th>
                        <th scope="col">작성일</th>
                        <th scope="col">내용</th>
                        <th></th>
                        <th></th>
                        </tr>
                    </thead>
                    <tbody id="reviews-box">
                    <tr>
                        <td style="padding-top:18px; height:15px; align-items : center;">석숭이</td>
                        <td style="padding-top:18px; height:15px;align-items : center; ">2022-11-11</td>
                        <td style="padding-top:18px; height:15px;align-items : center;">완전 열심히 하시는 모습이 보기 좋네요.</td>
                        <th><button style="float:right"; class="btn btn-dark" type="submit">수정</button></th>
                        <th><button class="btn btn-dark" type="submit">삭제</button></th>
                        			
                    </tr>
                    </tbody>
                   </table>
                <hr style="margin-top: -1em">
            </div>
            <div class=hi">
            	<ul id="hiyo" class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>	
					</div>
       
    </body>

</html>
