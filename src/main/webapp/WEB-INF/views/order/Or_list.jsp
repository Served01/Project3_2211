<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<form name="orderlist" id="orderlist" method="post" class="orderlist" action="/Page" onsubmit="return false;">
    
            <input type="hidden" name="cmd" value="order">
            <div class="orderdiv" id="order">
                <div class="row head">
                    
                    <div class="split"></div>
                </div>
        		<c:forEach var="str" items="${infoOr_Bean}" varStatus="status">
	                <div class="row data">
	                    <div class="subdiv">
	                        <!-- <div class="check"><input type="checkbox" name="buy" value="260" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div> -->
	                        <%-- <div class="img"><img src="${str.bk_image }" width="60"></div> --%>
	                        <div class="pname">
	                            <span>주문번호 : ${str.or_number }</span>
								<span>아이디 : ${str.or_mbid }</span>
					        	<span>책번호 : ${str.or_bknumber }</span>
					        	<span>구매가격: ${str.or_bkprice }</span>
					        	<span>구매개수: ${str.or_cacount }</span>
					        	<span>구매날짜: ${str.or_date }</span>
					        	<span>송장번호: ${str.or_delivery }</span>
					        	<span>배송지: ${str.or_address }</span>
	                        </div>
	                   	</div>
	                    <%-- <div class="subdiv">
	                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price" class="p_price" value="${str.bk_price }">${str.bk_price}원</div>
	                        <div class="num">
	                            <div class="updown">
	                            </div>
	                        </div>
	                        <div class="sum">${str.bk_price }원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem(${str.bk_number });">삭제</a></div>
	                    </div> --%>
	                </div>
        		</c:forEach>
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제(삭제예정)</a>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 원</div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="javascript:void(0);">선택한 상품 주문</a>
                </div>
            </div>
        </form>
</body>
</html>