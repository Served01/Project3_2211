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
</head>
<body>

	<form:form action="${root }review/update_pro" method="post" modelAttribute="updateRvBean">
		<!-- enctype은 post방식일때만 쓰는 것으로 기본값인 application/x-www-form-urlencoded,
			 파일이나 이미지를 이용할 때 쓰는 multipart/form-data, 그리고 text/plain 방식이 있다.-->
		<!-- multipart/form-data는 함부로 쓰면 안된다. 전송할때 인코딩을 하여 보내는 방식이 아니고 이 인코딩 방식을
			  MultipartFile 기능이 관리를 해주기 때문에 같이 쓰는 경우가 아니면 그냥 enctype을 지워야 된다.-->
		
		<form:hidden path="rv_number"/>
			<div>
				<form:label path="rv_id">작성자</form:label>
				<form:input path="rv_id" readonly="true"/>
			</div>
			<div>
				<form:label path="rv_score">리뷰 평점</form:label>
				<form:input path="rv_score"></form:input>
				<form:errors path="rv_score" style="color:red"></form:errors>
			</div>
			<div>
				<form:label path="rv_content">리뷰 내용</form:label>
				<form:textarea path="rv_content" rows="10" style="resize:none" value="${rv_content }"></form:textarea>
				<form:errors path="rv_content" style="color:red"></form:errors>
			</div>
			<div>
				<form:button>수정하기</form:button>
			</div>					
		</form:form>
</body>
</html>