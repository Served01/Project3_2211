<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 만료</h1>
	<script type="text/javascript">
		alert("세션이 만료되었습니다.\n다시 로그인하여 주시기 바랍니다.")
		location.href="${root}Main/center"
	</script>
</body>
</html>