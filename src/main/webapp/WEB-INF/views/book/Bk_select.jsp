<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>
<style>
.star-ratings {
  color: #aaa9a9; 
  position: relative;
  unicode-bidi: bidi-override;
  width: max-content;
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 1.3px;
  -webkit-text-stroke-color: #2b2a29;
}
 
.star-ratings-fill {
  color: #fff58c;
  padding: 0;
  position: absolute;
  z-index: 1;
  display: flex;
  top: 0;
  left: 0;
  overflow: hidden;
  -webkit-text-fill-color: gold;
}
 
.star-ratings-base {
  z-index: 0;
  padding: 0;
}
</style>
</head>
<body onload="init();">
<script>

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
	<div class="jumbotron" style="padding-top:30px; padding-bottom: 30px;">
		<div class="container">
			<h1 class="display-4">도서 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img style="width: 320px; height: 360px; padding-right: 0px; margin-right: 0px;" src="${root }upload/${ReadBkBean.bk_image}"/>
				<div style="left: 75px; width: 150px; top: 10px;" class="input-group">
					<h5><b>평점</b></h5>&nbsp;:&nbsp;<div class="input-group-append">${ReadScore}/5.0 점</div>
				</div>
			</div>
			<div class="col-md-8">
				<h3><b>${ReadBkBean.bk_title}</b></h3>
				<p>${ReadBkBean.bk_detail }
				<p><b>저자</b> : ${ReadBkBean.bk_writer }
				<p><b>출판사</b> : ${ReadBkBean.bk_publisher }
				<p><b>출간일</b> : ${ReadBkBean.bk_pubdate }
				<p><b>지역</b> : ${ReadBkBean.bk_local }
				<p><b>장르</b> : ${ReadBkBean.bk_genre }
				<p><b>재고수</b> : ${ReadBkBean.bk_quantity }개	
				<form name="form" method="get">
				<b>수량</b> : <input type=hidden name="sell_price" value="${ReadBkBean.bk_price }">
				<input type="text" name="amount" value="1" size="3" onchange="change();"> 
				<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
				<input type="hidden" name="sum" size="11" readonly>
				<p>
				<div class="input-group"><b>금액</b>&nbsp;:&nbsp;<span class="input-group-append" id="my_sum">원</span><b>원</b></div>
				</form>
				<p>
				<p><a href="#" class="btn btn-info">도서주문 &raquo;</a> 
				<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
				<p><a href='${root }book/BkUpdate?bk_number=${ReadBkBean.bk_number}' class="btn btn-info">책정보수정 &raquo;</a> 
				<input class="btn btn-info" type="reset" value="찜하기">
				<input class="btn btn-info" type="reset" value="장바구니">
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>