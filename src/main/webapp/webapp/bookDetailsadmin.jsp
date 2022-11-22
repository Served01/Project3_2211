<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>

</head>
<body onload="init();">
<script language="JavaScript">

var sell_price;
var amount;

function init () {
    sell_price = document.form.sell_price.value;
    amount = document.form.amount.value;
    document.form.sum.value = sell_price;
    change();
}

function add () {
    hm = document.form.amount;
    hm.value ++ ;

    var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;
}

function del () {
    hm = document.form.amount;
        if (hm.value > 1) {
            hm.value -- ;
            var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;	
        }
}

function change () {
    hm = document.form.amount;

        if (hm.value < 0) {	
            hm.value = 0;
        }
    var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;
} 

</script>
	<jsp:include page="header.jsp" />
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-5">도서 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791161571188.jpg" style="width: 100%" />
				<h4><p align="center"><b>평점</b> : ★★★★★</p></h4>
			</div>
			<div class="col-md-8">
				<h4><b>불편한 편의점</b></h4>
				<p>
  					dfdfasdfsadfasdfasdfsadfasdasdfasfsadfsadfasdfdsafasdfasdfasdfasdfsadfasdfsadfsadfsdafsadfasdfsdfsafasdfsadfsadfsadfasdfsafsadfsadasdfasdfasdfasdfasdfasfasfasfafasf</p>
				<p><b>저자</b> : 김호연
				<p><b>출판사</b> : 나무 옆 의자
				<p><b>지역</b> : 국내
				<p><b>장르</b> : 소설
				<p><b>재고수</b> : 100개	
				<form name="form" method="get">
				<b>수량</b> : <input type=hidden name="sell_price" value="15000">
				<input type="text" name="amount" value="1" size="3" onchange="change();"> 
				<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
				<input type="hidden" name="sum" size="11" re	adonly>
				<div style="color:blue"><b>금액 :</b> <div id="my_sum">원</div>원
				</div>
				</form>
				<div style="text-align:center">
				<br><br><br>
				<input class="btn btn-secondary btn-lg" type="reset" value="수정">
				<input class="btn btn-secondary btn-lg" type="reset" value="삭제">
				</div>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="bookinsertReview.jsp" />
	<hr>
	<jsp:include page="bookinsertReviewinsert.jsp" />
</body>
</html>