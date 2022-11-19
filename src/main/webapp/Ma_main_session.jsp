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
진행도:<br>
list, select, insert, update, delete 주요 기능 완성<br>
<a href="${root }member/Mblist?mb_id=admin" class="nav-link">전체회원목록</a>
<a href='${root }member/Mbselect?mb_id=admin'>마이페이지</a>
<a href="${root }member/Mbinsert" class="nav-link">회원가입</a>
<a href="${root }member/Mbupdate?mb_id=admin" class="nav-link">[정보수정]</a>
<a href="${root }member/Mbdelete?mb_id=admin" class="nav-link">[삭제(임시삭제)]</a>

<h3>2. Delivery 기능</h3>
진행도:<br>
list, delete 주요 기능 완성<br>
<a href="${root}delivery/DvList?dv_id=hyun3">list</a>	

<h3>3. Book 기능</h3>
진행도:<br>
list, select, insert, update 주요 기능 완성<br>
<a href="${root }book/BkInsert">BkInsert</a>
<a href='${root }book/BkList?bk_local=국내&bk_genre=인문'>국내 인문 리스트</a>

<h3>4. Review 기능</h3>
진행도:<br>
list, insert, update, delete 주요 기능 완성<br>
게시판 형태 적용<br>
<a href="${root}Review/RvList?mb_id=hyun1&bk_number=20220001">list</a>

<h3>5. Order 기능</h3>
진행도:<br>
list, select 주요 기능 완성<br>
<a href="${root}order/Or_list?or_mbid=hyun1">주문 목록</a>
<a href="${root}order/Or_select?or_mbid=hyun1&or_number=22NOVABC001">주문 상세</a>

<h3>6. Cart 기능</h3>
진행도:<br>
select, insert, update, delete 주요 기능 완성<br>
<a href="${root}cart/cart_info?ca_mbid=admin">카트인포</a>
<a href="${root}cart/cart_test">카트추가테스트</a>

<h3>7. Wish 기능</h3>
진행도:<br>
Wish select, insert, delete 기능 완성 (Wish는 update 기능이 없음)<br>
게시판 형태 적용<br>
<a href="${root}wish/wish_info?wi_mbid=admin&page=1">위시인포</a>
<a href="${root}wish/wish_test">위시추가테스트</a>


</body>
</html>