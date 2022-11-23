<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>       
<c:url var='root' value='/'/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<script>
	function addwish(wi_mbid,wi_bknumbers){
		
		//var ca_mbid = $("#ca_mbid").val()
		//var ca_bknumbers = $("#ca_bknumbers").val()
		
		$.ajax({
			url: '${root}wish/wish_add/' + wi_mbid +'/'+ wi_bknumbers,
			type: 'get',
			dataType: 'text',
		})
		alert('찜목록 추가성공')
	}
</script>
<body>
	<form action="#" method="get">
		<input type="hidden" name="wi_mbid" id="wi_mbid" value='admin'>
		<input type="hidden" name="wi_bknumbers" id="wi_bknumbers" value='20220001'>
		<button type="button" onclick="javascript:addwish('admin','20220001')">1번추가</button>
	</form>
	
	<form action="#" method="get">
		<input type="hidden" name="wi_mbid" id="wi_mbid" value='admin'>
		<input type="hidden" name="wi_bknumbers" id="wi_bknumbers" value='20220002'>
		<button type="button" onclick="javascript:addwish('admin','20220002')">2번추가</button>
	</form>
		
	<form action="#" method="get">
		<input type="hidden" name="wi_mbid" id="wi_mbid" value='admin'>
		<input type="hidden" name="wi_bknumbers" id="wi_bknumbers" value='20220003'>
		<button type=button onclick="javascript:addwish('admin','20220003')">3번추가</button>
	</form>
</body>
</html>