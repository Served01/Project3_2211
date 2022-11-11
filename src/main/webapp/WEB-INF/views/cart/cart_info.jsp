<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<c:url var='root' value='/'/>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	
</head>
<style>

.basketdiv {
    width: 100%;
    border-top: 1px solid #e0e0e0;
    float: left;
    font-size: 0.9375em;
    margin-bottom: 20px;
}
    .basketdiv .row.head {
        border-bottom: 2px solid #888;
        box-sizing: border-box;
        background-color: #f4f4f4;
        font-weight: 500;
    }
    .basketdiv .data {
        border-bottom: 1px dashed #888;
        box-sizing: border-box;
        cursor: pointer;
        float: left;
        width: 100%;
    }
    .basketdiv .data .empty{
        text-align: center;
        padding: 12px 0;
    }
    .basketdiv .row.head .subdiv {
        background-color: #f4f4f4;
    }
    .basketdiv .row > .subdiv {
        display: block;
        float: left;
    }
    .basketdiv .row > .subdiv:nth-child(1) {
        width: 50%;
    }
    .basketdiv .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > .subdiv:nth-child(3) {
        width: 10%;
    }
    .basketdiv2 .row > .subdiv:nth-child(1) {
        width: 60%;
    }
    .basketdiv2 .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > div > div {
        display: block;
        float: left;
        text-align: center;
        margin: 0;
        padding: 12px 0;
    }
    .basketdiv .row.data > div > div {
        height: 60px;
        line-height: 60px;
    }
        .basketdiv .data .num .updown {
            color: #0075ff;
            font-size: 2em;
            letter-spacing: -5px;
        }
        .basketdiv .check {
            width: 10%;
        }
    .basketdiv .check input[type=checkbox] {
        transform: scale(1.5);
    }
    .basketdiv .img{
        width: 20%;
    }
    .basketdiv .pname{
        width: 70%;
    }
    .basketdiv2 .pname {
        width: 80%;
    }
    .basketdiv .basketprice {
        width: 33%;
    }
    .basketdiv .num {
        width: 33%;
      min-width: 105px;
    }
    .basketdiv .sum {
        width: 34%;
      max-width: 80px;
        color: #0000aa;
    }
    .basketdiv .point {
        width: 50%;
    }
    .basketdiv2 .basketprice {
        width: 25%;
    }

    .basketdiv2 .num {
        width: 25%;
    }

    .basketdiv2 .sum {
        width: 25%;
        color: #0000aa;
    }

    .basketdiv2 .point {
        width: 25%;
    }
    .basketdiv .basketcmd{
        width: 100%;
    }
    .basketdiv .data .pname {
        text-align: left !important;
      line-height: 1.2 !important;
    }
    .basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point {
        text-align: right;
    }
    .baseform > tbody > tr > td:first-child {
        width: 100px;
    }

.buttongroup {
    padding: 11px 0;
    margin: 50px 0;
}
.narrowbuttongroup{
    margin: 15px 0;
}
    .buttongroup.center {
        text-align: center;
    }
    .buttongroup input[type=text], .buttongroup input[type=password] {
        height: 30px;
    }
    .buttongroup button, .buttongroup a {
        margin-right: 5px;
    }
        .buttongroup button:last-child, .buttongroup a:last-child {
            margin-right: 0;
        }

    .abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button] {
        background-color: #383838;
        border: 1px solid #888888;
        color: #ffffff;
        cursor: pointer;
        letter-spacing: -1px;
        padding: 3px 5px;
        margin: 2px 3px;
        width: auto;
        word-break: keep-all;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9375em;
    }

.abutton-alt {
    background-color: #d3e2c6;
}

.red {
    color:#b00;
}
.blue {
  color: #0075ff;
}
.basketrowcmd, .sumcount, .summoney{
  text-align: right;
  margin-bottom: 10px;
}
.sumcount, .summoney{
  font-size: 1.25em;
    font-weight: bold;
}
.buttongroup{
  text-align: center;
}
.buttongroup a{
  text-decoration: none;
}
.cmd a, .cmd span {
    padding: 12px 30px;
    box-sizing: border-box;
    margin-top: 10px;
    font-size: 1.2em;
    color: #000;
    background-color: #f4f4f4;
    border: 1px solid #e0e0e0;
    text-align: center;
}
.cmd.small a, .cmd.small span {
    padding: 6px 20px;
    font-size: 0.8125em;
}

.orderform .p_num {
    text-align: right;
    width: 40px;
    font-size: 1em;
}

</style>


<script>
let basket = {
	    totalCount: 0, 
	    totalPrice: 0,
	    //체크한 장바구니 상품 비우기
	    delCheckedItem: function(){
	        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	        	var ca_bknumbers = parseInt(item.getAttribute('value'));
	        	var ca_mbid = 'admin';
	        	$.ajax({
					url: '${root}cart/cart_delete/'+ ca_mbid +'/'+ ca_bknumbers,
					type: 'get',
					dataType: 'text'
				})	        		        	
	            item.parentElement.parentElement.parentElement.remove();
	        });
	        //AJAX 서버 업데이트 전송
	    	
	        //전송 처리 결과가 성공이면
	        alert('삭제되었습니다.')
	        this.reCalc();
	        this.updateUI();
	    },
	    //장바구니 전체 비우기
	    delAllItem: function(){
	    	
	        document.querySelectorAll('.row.data').forEach(function (item) {
	            item.remove();
	          });
	          //AJAX 서버 업데이트 전송
	        // var ca_bknumbers = ca_bknumbers; id값 받아야함
	        var ca_mbid = 'admin';
	        $.ajax({
				url: '${root}cart/cart_deleteAll/' + ca_mbid,
				type: 'get',
				dataType: 'text',
				success: function(){
					alert('삭제되었습니다.')
				}			
			})
	          
	          
	          //전송 처리 결과가 성공이면
	          this.totalCount = 0;
	          this.totalPrice = 0;
	          this.reCalc();
	          this.updateUI();
	    },
	    //재계산
	    reCalc: function(){
	        this.totalCount = 0;
	        this.totalPrice = 0;
	        document.querySelectorAll(".p_num").forEach(function (item) {
	            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
	                var count = parseInt(item.getAttribute('value'));
	                this.totalCount += count;
	                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
	                this.totalPrice += count * price;
	            }
	        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
	    },
	    //화면 업데이트
	    updateUI: function () {
	        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
	        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
	    },
	    //개별 수량 변경
	    changePNum: function (pos,ca_bknumbers) {
	        var item = document.querySelector('input[name=p_num'+pos+']');
	        var p_num = parseInt(item.getAttribute('value'));
	        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
	        
	        var ca_mbid = 'admin';
	        
	        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

	        item.setAttribute('value', newval);
	        item.value = newval;

	        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
	        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
	        //AJAX 업데이트 전송

	        if (event.target.classList.contains('up') == true){
	        	$.ajax({
					url: '${root}cart/cart_plusBookCount/' + ca_mbid +'/'+ ca_bknumbers,
					type: 'get',
					dataType: 'text'
								
				})
	        }else if (event.target.classList.contains('down') == true){
	        	$.ajax({
					url: '${root}cart/cart_minusBookCount/' + ca_mbid +'/'+ ca_bknumbers,
					type: 'get',
					dataType: 'text'
		
				})
	        }
	        
	        //전송 처리 결과가 성공이면    
	        this.reCalc();
	        this.updateUI();
	    },
	    checkItem: function () {
	        this.reCalc();
	        this.updateUI();
	    },
	    delItem: function (ca_bknumbers) {
	        event.target.parentElement.parentElement.parentElement.remove();
	        var ca_bknumbers = ca_bknumbers;
	        var ca_mbid = 'admin';
			
	        $.ajax({
				url: '${root}cart/cart_delete/' + ca_mbid +'/'+ ca_bknumbers,
				type: 'get',
				dataType: 'text',
				success: function(){
					alert('삭제되었습니다.')
				}			
			})
			 
	    	
	    	
	        this.reCalc();
	        this.updateUI();
	    },
	    //콤마찍고 시작
	    orderInitiator: function(){
	    	var ca_mbid = 'admin';
	    	//주문번호 생성하고
	    	//var or_number = '연도' +'월' + 난수 6자리;
	    		
			
			var or_number = '19TES666666';
	    	
			
			
	    	$.ajax({
				url: '${root}cart/cart_createOderInfo/' + or_number +'/'+ ca_mbid,
				type: 'get',
				dataType: 'text'
				
	    	})
	    	
	    	
	    	document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	        	var ca_bknumbers = parseInt(item.getAttribute('value'));
	        	$.ajax({
					url: '${root}cart/cart_insertOderItems/'+ or_number +'/'+ ca_bknumbers + '/' + ca_mbid,
					type: 'get',
					dataType: 'text'
				})	        		        	
	           // item.parentElement.parentElement.parentElement.remove();
	        })
	    	
	    	//
	    	//this.orderCreate(or_number,ca_mbid);
	    	//
	    	//this.orderItems(or_number,ca_mbid);
	    	
	    	
	    	
	    	//로케이션~ 주문번호 넘겨줌
	    }
	    
	    
	    
	};

	// 숫자 3자리 콤마찍기
	Number.prototype.formatNumber = function(){
	    if(this==0) return 0;
	    let regex = /(^[+-]?\d+)(\d{3})/;
	    let nstr = (this + '');
	    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
	    return nstr;
	};

</script>
<body onmouseover="javascript:basket.checkItem()">
					
					          
	<form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;">
    
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
                <div class="row head">
                    <div class="subdiv">
                        <div class="check">선택</div>
                        <div class="img">이미지</div>
                        <div class="pname">상품명</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
        		<c:forEach var="str" items="${infoCa_Bean}" varStatus="status">
	                <div class="row data">
	                    <div class="subdiv">
	                        <div class="check"><input type="checkbox" name="buy" value="${str.bk_number }" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div>
	                        <div class="img"><img src="${root} + ${str.bk_image }" width="60"></div>
	                        <div class="pname">
	                            <span>제목 : ${str.bk_title }</span>
								<span>저자 : ${str.bk_writer }</span>
					        	<span>출판사 : ${str.bk_publisher }</span>
					        	<span>재고: ${str.bk_quantity }</span>
	                        </div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price" class="p_price" value="${str.bk_price }">${str.bk_price}원</div>
	                        <div class="num">
	                            <div class="updown">
	                                <input type="text" name="p_num${status.count}" id="p_num${status.count},${str.bk_number }" size="2" maxlength="4" class="p_num" value="${str.ca_bkcount} " onkeyup="javascript:basket.changePNum(${status.count},${str.bk_number });">
	                                <span onclick="javascript:basket.changePNum(${status.count},${str.bk_number });"><i class="fas fa-arrow-alt-circle-up up"></i></span>
	                                <span onclick="javascript:basket.changePNum(${status.count},${str.bk_number });"><i class="fas fa-arrow-alt-circle-down down"></i></span>
	                            </div>
	                        </div>
	                        <div class="sum">${str.bk_price*str.ca_bkcount }원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem(${str.bk_number });">삭제</a></div>
	                    </div>
	                </div>
        		</c:forEach>
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 원</div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="javascript:void(0)" onclick="javascript:basket.orderInitiator();">선택한 상품 주문</a>
                </div>
            </div>
        </form>
					
</body>
</html>
