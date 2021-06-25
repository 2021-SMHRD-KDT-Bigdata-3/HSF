<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <!DOCTYPE html>
<html lang="en">
<!--<head>
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
</head>-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<style>
	#head_title{
		font-family: 'Poor Story', cursive;
	}
	.form-control{
		display: inline;
	}
	#select_2 {
		margin-top: 2%;
	}
</style>
<body> 

	
		<div class="site-navbar py-2">

			<div class="search-wrap">
				<div class="container">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="Search" method="post">
						<select name="select" id="select_2">
							<option value = "one" >성분</option>
							<option value = "two" >제품명</option>
						</select>
						<input type="text" class="form-control" name="form"
							placeholder="검색" width="500px">
					</form>
				</div>
			</div>

			<div class="container">
				<div class="d-flex align-items-center justify-content-between">
					<div class="logo">
						<div class="site-logo">
							<a href="page0.jsp" class="js-logo-clone">
							<strong id= "head_title" class="text-primary"><image src="images/pill.png"
									width="40px" height="40px" style="float: left;">운비는 피곤해</strong></a>
						</div>
					</div>
					<div class="main-nav d-none d-lg-block">
						<nav class="site-navigation text-right text-md-center"
							role="navigation">
							<ul class="site-menu js-clone-nav d-none d-lg-block">
								<li class="active"><a href="page0.jsp">Home</a></li>
								<li><a href="page1.jsp">Item Selection</a></li>
								<li><a href="page5.jsp">Guide</a></li>
								<li><a href="#" >Member</a></li>
							</ul>
						</nav>
					</div>
					<div class="icons">
						<a href="#" class="icons-btn d-inline-block js-search-open"><span
							class="icon-search"></span></a> <a href="cart.html"
							class="icons-btn d-inline-block bag"> <span
							class="icon-shopping-bag"></span> <span class="number">2</span>
						</a> <a href="#"
							class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
							class="icon-menu"></span></a>
					</div>
				</div>
			</div>
		</div>
	

</body>
<script src='js/jquery-3.6.0.js'></script>
<script src='js/jquery-ui.js'></script>
<script>
	$(function ccc(){
	$('#head_title').css('font-size','1px').animate({'font-size':'25px'}
	, 500)
	//$('#head_title').css('font-size','25px').animate({'font-size':'1px'}, 500,ccc);
	//});
	});
</script>
</html> 