<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>       
<c:url var='root' value='/'/>  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 리스트</title>
</head>
<body>
	<table class="table table-hover" id='dv_list'>
		<thead>
			<tr>
				<th>회원 아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>배송지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="dvl" items="${deliverylist }">
			<tr>
				<td>${dvl.dv_id }</td>
				<td>${dvl.dv_name }</td>
				<td>${dvl.dv_tel }</td>
				<td>${dvl.dv_address }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<ul>
			<li>
				<a href="${root }delivery/Dv_insert" class="btn btn-danger">추가</a>
			</li>			
			<li>
				<a href="${root }delivery/Dv_update" class="btn btn-danger">수정</a>
			</li>
			<li>
				<a href="#">삭제</a>
			</li>
			<li>
				<a href="#">뒤로가기</a>
			</li>			
		</ul>	
	</div>
</body>
</html>