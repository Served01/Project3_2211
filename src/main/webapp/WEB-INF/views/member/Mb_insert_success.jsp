<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mb_insert_success</title>
</head>
<body>
	<h2>회원가입 완료</h2>
	<script type="text/javascript">
		alert("회원 가입이 완료되었습니다. 로그인 해주세요!")
		location.href="${root}member/Mblogin"
	</script>
</body>
</html>