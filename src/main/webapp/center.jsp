<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>메인 화면</title>
</head>


<jsp:include page="header.jsp" />
<body>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/11/09/46800/rangpnewbook001624x450.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/11/09/46781/newbooksejong.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://contents.kyobobook.co.kr/display/INK_01_%EC%9B%B0%EC%BB%B4_01_%EB%A9%94%EC%9D%B8%EB%B0%B0%EB%84%88_1624x450_9272abd3c4614e23b491a9d7c9be2cb8.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>