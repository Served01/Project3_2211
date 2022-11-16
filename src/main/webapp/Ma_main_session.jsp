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

<h3>Review 기능</h3>
Review list, insert, update, delete 기능 O<br>
<a href='${root }Review/RvList?rv_id=hyun1&rv_bknumber=20220001'>Rv_list</a>

<h3>Book 기능</h3>
Book insert, update, list, select 기능 O<br>
<a href="${root }book/BkInsert">BkInsert</a>
<a href='${root }book/BkList?bk_local=국내&bk_genre=인문'>국내 인문 리스트</a>

<h3>Delivery 기능</h3>
Delivery list 기능 O<br>
<a href="${root}delivery/DvList?dv_id=hyun3">list</a>	

<h3>Cart 기능</h3>
Cart select, insert, update, delete 기능 O<br>
<a href="${root}cart/cart_info?ca_mbid=admin">카트인포</a>
<a href="${root}cart/cart_test">카트추가테스트</a>

<h3>Wish 기능</h3>
Wish select, insert, delete 기능 O (Wish는 update 기능이 없음)<br>
<a href="${root}wish/wish_info?wi_mbid=admin&page=1">위시인포</a>
<a href="${root}wish/wish_test">위시추가테스트</a>

<h3>Member 기능</h3>
Member list, select, insert 기능 O<br>
<a href="${root }member/Mblist?mb_id=admin" class="nav-link">전체회원목록</a>
<a href='${root }member/Mbselect?mb_id=admin'>마이페이지</a>
<a href="${root }member/Mbinsert" class="nav-link">회원가입</a>
<a href="${root }member/Mbupdate?mb_id=admin" class="nav-link">[정보수정]</a>
<a href="${root }member/Mbdelete?mb_id=admin" class="nav-link">[삭제(임시삭제)]</a>

<h3>Order 기능</h3>
Order list, select 기능 O<br>
<a href="${root}order/Or_list?or_mbid=hyun1">주문 목록</a>
<a href="${root}order/Or_select?or_mbid=hyun1&or_number=22NOVABC001">주문 상세</a>
</body>
</html>