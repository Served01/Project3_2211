<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script type="text/javascript">
		alert("배송지 수정이 정상적으로 완료되었습니다.")
		location.href="${root}member/Mbselect?mb_id=${mb_id}"
	</script>
</body>
</body>
</html>