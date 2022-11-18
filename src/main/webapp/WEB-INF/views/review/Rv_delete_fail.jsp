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

	<script type="text/javascript">
		alert("리뷰 삭제에 실패하였습니다.")
		location.href="${root }Review/RvDeletePro?rv_number=${rv_number }&rv_id=${rv_id }&rv_bknumber=${rv_bknumber}"
	</script>		
	
</body>
</html>