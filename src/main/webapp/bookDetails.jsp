<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>

</head>
<style>
body{
align:center;


}
</style>
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
	<div class="jumbotron"style="padding-top:30px; padding-bottom: 30px;">
		<div class="container" style="width:1600px">
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
				<p>김호연 작가의 장편소설 『불편한 편의점』이 누적 판매 40만부 돌파를 기념하여 벚꽃 에디션으로 새 단장 했습니다. 2021년 4월에 출간되어 전 연령층의 폭넓은 공감을 얻으며 소설 읽기 바람을 일으킨 『불편한 편의점』의 열기는 지금도 현재진행형입니다. “읽는 내내 마음이 따뜻하고 먹먹했다” “눈가에 미소와 눈물이 떠나지 않았다” “시간 가는 줄 모르고 몰입해서 읽었다” “작은 친절과 소통의 소중함을 일깨워준 책” “힘든 시기를 버티게 해준 책” 등의 독자 리뷰 하나하나가 책이 가진 힘을 말해줍니다. 청파동 골목 모퉁이의 작은 가게, 서울역 노숙인이었던 정체불명의 야간 알바가 지키는 곳, 불편한데 자꾸 가고 싶은 봄날의 편의점으로 여러분을 초대합니다.
  					</p>
				<p><b>저자</b> : 김호연
				<p><b>출판사</b> : 나무 옆 의자
				<p><b>지역</b> : 국내
				<p><b>장르</b> : 소설
				<p><b>재고수</b> : 100개	
				<form name="form" method="get">
				<b>수량</b> : <input type=hidden name="sell_price" value="15000">
				<input type="text" name="amount" value="1" size="3" onchange="change();"> 
				<input type="button" value=" + " onclick="add();" style="width:35px;"><input type="button" value=" - " onclick="del();" style="width:35px;"><br>
				<input type="hidden" name="sum" size="11" re	adonly>
				<div style="color:blue"><b>금액 :</b> <div id="my_sum">원</div>원
				</div>
				</form>
				<div style="text-align:center">
				<input class="btn btn-secondary btn-lg" type="reset" value="구매">
				<input class="btn btn-secondary btn-lg" type="reset" value="장바구니">
				<input class="btn btn-secondary btn-lg" type="reset" value="수정">
				<input class="btn btn-secondary btn-lg" type="reset" value="삭제">
				</div>
			</div>
		</div>
		<hr>
	</div>
		<hr>
	<jsp:include page="bookinsertReview.jsp" />
	<hr>
	<jsp:include page="bookinsertReviewinsert.jsp" />
	<jsp:include page="footer.jsp" />
</body>
</html>