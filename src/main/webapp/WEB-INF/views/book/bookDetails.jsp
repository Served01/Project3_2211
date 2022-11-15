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

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="${root }upload/${ReadBkBean.bk_image}" style="width: 100%" />
				<h4><p align="center"><b>평점</b> : ★★★★★</p></h4>
			</div>
			<div class="col-md-8">
				<h4><b>${ReadBkBean.bk_title}</b></h4>
				<p>${ReadBkBean.bk_detail }</p>
				<p><b>저자</b> : {ReadBkBean.bk_writer }
				<p><b>출판사</b> : ${ReadBkBean.bk_publisher }
				<p><b>지역</b> : ${ReadBkBean.bk_local }
				<p><b>장르</b> : ${ReadBkBean.bk_genre }
				<p><b>재고수</b> : ${ReadBkBean.bk_quantity }개	
				<form name="form" method="get">
				<b>수량</b> : <input type=hidden name="sell_price" value="${ReadBkBean.bk_price }">
				<input type="text" name="amount" value="1" size="3" onchange="change();"> 
				<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
				<input type="hidden" name="sum" size="11" readonly>
				<b>금액 : <div id="my_sum">원</div>원</b>
				</form>
		
				<p><a href="#" class="btn btn-info">도서주문 &raquo;</a> 
				<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
				<input class="btn btn-info" type="reset" value="찜하기">
				<input class="btn btn-info" type="reset" value="장바구니">
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>