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

<h3>1. Member 기능</h3>
<a href="${root }member/Mbinsert" class="nav-link">[회원가입]</a> 
<a href="${root }member/Mblist?mb_id=admin" class="nav-link">[전체회원목록]</a>
<a href='${root }member/Mbselect?mb_id=admin'>[마이페이지]</a> 
<a href="${root }member/Mbupdate?mb_id=admin" class="nav-link">[정보수정]</a>
<a href="${root }member/Mbdelete?mb_id=admin" class="nav-link">[삭제]</a>
<a href="${root }member/Mblogin" class="nav-link">[로그인]</a> 
<a href="${root }member/Mblogout" class="nav-link">[로그아웃]</a>

<h3>2. Delivery 기능</h3>
<a href="${root}delivery/DvList?mb_id=hyun3">list</a>	


<h3>3. Book 기능</h3>
<a href="${root }book/BkInsert">BkInsert</a>
<a href='${root }book/BkList?bk_local=국내&bk_genre=인문&mb_id=hyun1'>국내 인문 리스트</a>

<h3>4. Review 기능</h3>
게시판 형태 적용<br>
<a href="${root}Review/RvList?mb_id=hyun1&bk_number=20220002">list</a>

<h3>5. Order 기능</h3>
<a href="${root}order/Or_list?mb_id=hyun1">주문 목록</a>
<a href="${root}order/Or_purchase?mb_id=admin">결제</a>
<a href="${root}order/Or_select?mb_id=hyun1&or_number=22NOVABC001">주문 상세</a>
<button onclick="location.href='Or_purchase.jsp?mb_id=admin'">결제?</button>

<h3>6. Cart 기능</h3>
<a href="${root}cart/cart_info?ca_mbid=admin">카트인포</a>
<a href="${root}cart/cart_test">카트추가테스트</a>

<h3>7. Wish 기능</h3>
게시판 형태 적용<br>
<a href="${root}wish/wish_info?wi_mbid=admin&page=1">위시인포</a>
<a href="${root}wish/wish_test">위시추가테스트</a>


</body>
</html>