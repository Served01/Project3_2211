<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mb_login_fail</title>
</head>
<body>
	<script type="text/javascript">
		alert("탈퇴한 회원이거나 아이디와 비밀번호를 확인해주세요.")
		location.href="${root}member/Mblogin?fail=true"
	</script>
</body>
</html>