<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="./css/header.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/header.js" ></script> 
  </head>
 
  <body>
    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand">Ezen Book Store</a>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-primary">로그인</button>
            <button type="button" class="btn btn-primary">회원가입</button>
            <button type="button" class="btn btn-primary">장바구니</button>
            <button type="button" class="btn btn-primary">찜 목록</button>
          </div>
        </div>
      </nav>
      
      
    <div id="shopify-section-navigation-primary" class="shopify-section">
	<div class="section nav-section">
		<div class="section-inner">
			<nav class="chemical-header-nav">
				<button class="menu-toggle hide-desktop">
					<div class="menu-toggle-text noselect">
						Menu
					</div>
					<div id="nav-icon" class="noselect">
						<span></span>
						<span></span>
						<span></span>
					</div>
				</button>
				<ul  style="background-color:white"class="primary-navigation-ul horizontal-mega-menu">
					<li class="buddha-menu-item primary-navigation-li">
						<a href="https://product.kyobobook.co.kr/category/KOR/01" href="/collections/brands" aria-label="Brands" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="" style="color:black">국내도서&nbsp;<i class="fa fa-angle-down" aria-hidden="true"></i><button class="toggle-menu-btn" style="display:none;" onclick="return toggleSubmenu(this)"><i class="fa fa-plus-circle" aria-hidden="true"></i></button></a>
						<ul class="mm-submenu tree">
							<li a href="https://product.kyobobook.co.kr/category/KOR/01" aria-label="isoSPEC" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a href="https://product.kyobobook.co.kr/category/KOR/01" aria-label="isoSPEC" data-no-instant="" onclick="mmGoToPage(this, event); return false;">소설</a></li>
							<li data-href="/collections/brand-adam-equipment" href="/collections/brand-adam-equipment" aria-label="Adam Equipment" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-adam-equipment" href="/collections/brand-adam-equipment" aria-label="Adam Equipment" data-no-instant="" onclick="mmGoToPage(this, event); return false;">인문</a></li>
							<li data-href="/collections/brand-environmental-express" href="/collections/brand-environmental-express" aria-label="Environmental Express" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-environmental-express" href="/collections/brand-environmental-express" aria-label="Environmental Express" data-no-instant="" onclick="mmGoToPage(this, event); return false;">취미</a></li>
							<li data-href="/collections/brand-environmental-sampling-supply" href="/collections/brand-environmental-sampling-supply" aria-label="Environmental Sampling Supply" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-environmental-sampling-supply" href="/collections/brand-environmental-sampling-supply" aria-label="Environmental Sampling Supply" data-no-instant="" onclick="mmGoToPage(this, event); return false;">경제</a></li>
							<li data-href="/collections/brand-glass-expansion" href="/collections/brand-glass-expansion" aria-label="Glass Expansion" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-glass-expansion" href="/collections/brand-glass-expansion" aria-label="Glass Expansion" data-no-instant="" onclick="mmGoToPage(this, event); return false;">자기개발</a></li>
							<li data-href="/collections/brand-goodfellow" href="/collections/brand-goodfellow" aria-label="Goodfellow" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-goodfellow" href="/collections/brand-goodfellow" aria-label="Goodfellow" data-no-instant="" onclick="mmGoToPage(this, event); return false;">예술</a></li>
							<li data-href="/collections/brand-high-purity-standards" href="/collections/brand-high-purity-standards" aria-label="High-Purity Standards" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-high-purity-standards" href="/collections/brand-high-purity-standards" aria-label="High-Purity Standards" data-no-instant="" onclick="mmGoToPage(this, event); return false;">기술</a></li>
							<li data-href="/collections/brand-inorganic-ventures" href="/collections/brand-inorganic-ventures" aria-label="Inorganic Ventures" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-inorganic-ventures" href="/collections/brand-inorganic-ventures" aria-label="Inorganic Ventures" data-no-instant="" onclick="mmGoToPage(this, event); return false;">잡지</a></li>
							
						</ul>
					</li>
					<li class="buddha-menu-item primary-navigation-li">
						<a data-href="/collections/all" href="/collections/all" aria-label="Products" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="">해외도서&nbsp;<i class="fa fa-angle-down" aria-hidden="true"></i><button class="toggle-menu-btn" style="display:none;" onclick="return toggleSubmenu(this)"><i class="fa fa-plus-circle" aria-hidden="true"></i></button></a>
						<ul class="mm-submenu tree">
							<li data-href="/collections/brand-isospec" href="/collections/brand-isospec" aria-label="isoSPEC" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-isospec" href="/collections/brand-isospec" aria-label="isoSPEC" data-no-instant="" onclick="mmGoToPage(this, event); return false;">소설</a></li>
							<li data-href="/collections/brand-adam-equipment" href="/collections/brand-adam-equipment" aria-label="Adam Equipment" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-adam-equipment" href="/collections/brand-adam-equipment" aria-label="Adam Equipment" data-no-instant="" onclick="mmGoToPage(this, event); return false;">인문</a></li>
							<li data-href="/collections/brand-environmental-express" href="/collections/brand-environmental-express" aria-label="Environmental Express" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-environmental-express" href="/collections/brand-environmental-express" aria-label="Environmental Express" data-no-instant="" onclick="mmGoToPage(this, event); return false;">취미</a></li>
							<li data-href="/collections/brand-environmental-sampling-supply" href="/collections/brand-environmental-sampling-supply" aria-label="Environmental Sampling Supply" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-environmental-sampling-supply" href="/collections/brand-environmental-sampling-supply" aria-label="Environmental Sampling Supply" data-no-instant="" onclick="mmGoToPage(this, event); return false;">경제</a></li>
							<li data-href="/collections/brand-glass-expansion" href="/collections/brand-glass-expansion" aria-label="Glass Expansion" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-glass-expansion" href="/collections/brand-glass-expansion" aria-label="Glass Expansion" data-no-instant="" onclick="mmGoToPage(this, event); return false;">자기개발</a></li>
							<li data-href="/collections/brand-goodfellow" href="/collections/brand-goodfellow" aria-label="Goodfellow" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-goodfellow" href="/collections/brand-goodfellow" aria-label="Goodfellow" data-no-instant="" onclick="mmGoToPage(this, event); return false;">예술</a></li>
							<li data-href="/collections/brand-high-purity-standards" href="/collections/brand-high-purity-standards" aria-label="High-Purity Standards" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-high-purity-standards" href="/collections/brand-high-purity-standards" aria-label="High-Purity Standards" data-no-instant="" onclick="mmGoToPage(this, event); return false;">기술</a></li>
							<li data-href="/collections/brand-inorganic-ventures" href="/collections/brand-inorganic-ventures" aria-label="Inorganic Ventures" data-no-instant="" onclick="mmGoToPage(this, event); return false;"><a data-href="/collections/brand-inorganic-ventures" href="/collections/brand-inorganic-ventures" aria-label="Inorganic Ventures" data-no-instant="" onclick="mmGoToPage(this, event); return false;">잡지</a></li>
						</ul>
					</li>
					<li class="buddha-menu-item primary-navigation-li"><a data-href="/pages/about" href="/pages/about" aria-label="About" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="">베스트셀러</a></li>
					<li class="buddha-menu-item primary-navigation-li"><a data-href="/pages/special-offers" href="/pages/special-offers" aria-label="Special Offers" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="">신상품</a></li>
					<li class="buddha-menu-item primary-navigation-li"><a data-href="/pages/downloads" href="/pages/downloads" aria-label="Downloads" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="">이벤트</a></li>
					<li class="buddha-menu-item primary-navigation-li"><a data-href="/pages/news" href="/pages/news" aria-label="News" data-no-instant="" onclick="mmGoToPage(this, event); return false;" class="">추천도서</a></li>
					<li class="primary-navigation-li buddha-disabled">
						<a href="/" title="">Home</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</div>


      
  </body>
</html>