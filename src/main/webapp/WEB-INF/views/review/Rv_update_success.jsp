<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		alert("리뷰 수정에 성공하였습니다.")
		location.replace("${root}Review/RvList?mb_id=${updateRvBean.mb_id}&bk_number=${updateRvBean.bk_number}")
	</script>
	
</body>
</html>