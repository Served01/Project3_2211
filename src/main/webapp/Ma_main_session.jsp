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
Review list, insert, update, delete 기능 O
<a href='${root }Review/RvList?rv_id=hyun1&rv_bknumber=20220001'>Rv_list</a>

<h3>Book 기능</h3>
Book Insert 기능 O
<a href="${root }book/BkInsert">BkInsert</a>
<a href='${root }book/BkList?bk_local=국내&bk_genre=인문'>국내 인문 리스트</a>

<h3>Delivery 기능</h3>
Delivery list 기능 O
<a href="${root}delivery/DvList?dv_id=hyun3">list</a>	
<a href="${root}delivery/DvInsert?dv_id='hyun3'">insert</a>		
<a href="${root}delivery/DvUpdate?dv_id='hyun3'">update</a>	
<a href="${root}delivery/DvDelete?dv_id='hyun3'">delete</a>	

<h3>Cart 기능</h3>
Cart select, insert, update, delete 기능 O
<a href="${root}cart/cart_info?ca_mbid=admin">카트인포</a>
<a href="${root}cart/cart_test">카트추가테스트</a>

<h3>Wish 기능</h3>
Wish select, insert, delete 기능 O (Wish는 update 기능이 없음)
<a href="${root}wish/wish_info?wi_mbid=admin&page=1">위시인포</a>
<a href="${root}wish/wish_test">위시추가테스트</a>

<h3>Member 기능</h3>
Member list, select 기능 O
<a href="${root }member/Mblist?mb_id=admin" class="nav-link">전체회원목록</a>
<a href='${root }member/Mbselect?mb_id=admin'>마이페이지</a>
<a href="${root }member/Mbupdate?mb_id=admin" class="nav-link">정보수정</a>
<a href="${root }member/Mbinsert" class="nav-link">회원가입</a>

</body>
</html>