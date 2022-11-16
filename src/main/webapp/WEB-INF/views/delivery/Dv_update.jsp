<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<c:url var='root' value='/'/>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 수정</title>
</head>
<body>
	<form:form action="${root }delivery/DvUpdatePro" method="post" modelAttribute="UpdateDvBean">
		<form:hidden path="dv_id"/>
		<form:hidden path="dv_pk"/>
		<div>
			<form:label path="dv_nick">닉네임</form:label>
			<form:input path="dv_nick" class="form-control"/>
		</div>
		<div>
			<form:label path="dv_name">이름</form:label>
			<form:input path="dv_name" class="form-control"/>
		</div>	
		<div>
			<form:label path="dv_tel">연락처</form:label>
			<form:input path="dv_tel" class="form-control"/>
		</div>	
		<div>
			<form:label path="dv_address">배송지</form:label>
			<form:input path="dv_address" class="form-control"/>
		</div>
			<div>
				<form:button type="submit">수정하기</form:button>
			</div>
	</form:form>
</body>
</html>