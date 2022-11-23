<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<c:url var='root' value='/'/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="mbform" id="mbform" method="post" class="orderform" action="/Page" onsubmit="return false;">
    
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
                
                <c:forEach var="str" items="${infoDv_Bean}" varStatus="status">
	                <div class="row data">
	                    <div class="subdiv">
	                        <div class="pname">
	                            <span>제목 : ${str.dv_name }</span>
								<span>이메일 : ${str.dv_email }</span>
					        	<span>전화번호 : ${str.dv_tel }</span>
					        	<span>배송지 : ${str.dv_address }</span>
	                        </div>
	                    </div>
	                </div>
        		</c:forEach>
        		
        		
        		<c:forEach var="str" items="${infoDv_Bean}" varStatus="status">
	                <div class="row data">
	                    <div class="subdiv">
	                        <div class="pname">
	                            <span>제목 : ${str.dv_name }</span>
								<span>이메일 : ${str.dv_email }</span>
					        	<span>전화번호 : ${str.dv_tel }</span>
					        	<span>배송지 : ${str.dv_address }</span>
	                        </div>
	                    </div>
	                </div>
        		</c:forEach>
        		
            </div>
    
            
        </form>

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
	                        <div class="img"><img src="${str.bk_image }" width="60"></div>
	                        <div class="pname">
	                            <span>제목 : ${str.bk_title }</span>
								<span>저자 : ${str.bk_writer }</span>
					        	<span>출판사 : ${str.bk_publisher }</span>
	                        </div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price" class="p_price" value="${str.bk_price }">${str.bk_price}원</div>
	                        <div class="num">
	                            <div class="updown">
	                                <input type="text" name="p_num${status.count}" id="p_num${status.count}" size="2" maxlength="4" class="p_num" value="0" onkeyup="javascript:basket.changePNum(${status.count});">
	                                <span onclick="javascript:basket.changePNum(${status.count});"><i class="fas fa-arrow-alt-circle-up up"></i></span>
	                                <span onclick="javascript:basket.changePNum(${status.count});"><i class="fas fa-arrow-alt-circle-down down"></i></span>
	                            </div>
	                        </div>
	                        <div class="sum">${str.bk_price }원</div>
	                    </div>
	                    <div class="subdiv">
	                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem(${str.bk_number });">삭제</a></div>
	                    </div>
	                </div>
        		</c:forEach>
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