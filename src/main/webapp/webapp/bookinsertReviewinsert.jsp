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
     	#hii{
     	 width: 800px;
  margin-left: auto;
  margin-right: auto;
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
           
        </div><h1 style="text-align:center">리뷰 작성</h1><br><br><br>
        <div  style="margin-left:400px">
            <div class="input-group mb-3">
            
                    <div class="input-group-prepend">
                        <span class="input-group-text">작성자	</span>
                    </div>
                    
                    <!--  <input type="text" class="form-control" id="title">-->
                    &nbsp;<h4>홍길동</h4>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">작성일</span>
                    </div>
                  <!--   <input type="text" class="form-control" id="author">-->
                  &nbsp;<h4>2022-11-11</h4>
                  </div>
                </div>
                <div id="hii">
                <div class="input-group mb-3" style="width:800px">
                    <div class="input-group-prepend" >
                        <span class="input-group-text">리뷰</span>
                    </div>
                    <textarea class="form-control" id="bookReview"
                              cols="30"
                              rows="5" placeholder="160자까지 입력할 수 있습니다."></textarea>
                              <button style="float:right"onclick="makeReview()" type="button" class="btn btn-dark">작성</button>
                </div>
                </div>
                <div class="hi">
                <div class="review">
                    
                    </div>
                </div>
            
        
    </body>

</html>
