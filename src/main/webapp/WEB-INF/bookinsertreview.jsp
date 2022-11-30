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
   </head>

    <body>
        <div class="container">
            <img src="https://c.pxhere.com/photos/6c/37/photo-41952.jpg!d"
                 class="img-fluid" alt="Responsive image">
            <div class="info">
                <h1>여기는 HwanE의 리뷰 공간이에요.</h1>
                <p>재밌었던 책이나! 흥미진진했던 책의 리뷰를 남겨주세요. 다른 사람들에게도 추천하고 싶은 그런 책으로요 !</p>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">제목</span>
                    </div>
                    <input type="text" class="form-control" id="title">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">저자</span>
                    </div>
                    <input type="text" class="form-control" id="author">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">리뷰</span>
                    </div>
                    <textarea class="form-control" id="bookReview"
                              cols="30"
                              rows="5" placeholder="160자까지 입력할 수 있습니다."></textarea>
                </div>
                <div class="review">
                    <button onclick="makeReview()" type="button" class="btn btn-primary">리뷰 작성완료</button>
                </div>
            </div>
            <div class="reviews">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">제목</th>
                        <th scope="col">저자</th>
                        <th scope="col">리뷰</th>
                    </tr>
                    </thead>
                    <tbody id="reviews-box">
                    <tr>
                        <td>길동이의 개발일지</td>
                        <td>홍길동</td>
                        <td>완전 열심히 하시는 모습이 보기 좋네요.</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>

</html>

















































