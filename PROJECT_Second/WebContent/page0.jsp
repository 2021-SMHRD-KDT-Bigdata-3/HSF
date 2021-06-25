<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>메인</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&family=Sunflower:wght@300&display=swap" rel="stylesheet">

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
<style>
.mb-0,.text-primary {
	font-family: 'Poor Story', cursive;
}

.ment {
	font-family: 'Noto Serif KR', serif;
}
#face{
color: orange;
font-size:20px;
}
</style>
</head>

<body>

	<div class="site-wrap">
		<%@ include file="header.jsp"%>


		<div class="owl-carousel owl-single px-0">

       <div class="site-blocks-cover overlay" style="background-image: url('images/purple4.jpg');">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 mx-auto align-self-center">
            <br><br><br><br>
              <div style="position:absolute; width:200px; height:200px; top:-70px; left:470px;"><img src="images/unbi_image.jpg" style= "width: '200px'; height: '200px'; object-fit: contain;">
              </div><br><br>
              <div class="site-block-cover-content text-center">
               <h1 class="mb-0"> 운비는 <strong class="text-primary"> 피곤해>.<</strong></h1>
                
                <div class="row justify-content-center mb-5">
                  <div class="col-lg-6 text-center"><br>
                    <p class="ment">연령대나 성별, 증상에 따라 결핍되어있거나 필요로 하는 영양소를 섭취할 수 있도록 건강보조식품을 추천해주는 서비스를 제공합니다.</p>
                  </div>
                </div>
                <p><a href="page1.jsp" class="btn btn-primary px-5 py-3" style="font-size: 20px">엔터 빵!</a></p>
              </div>
            </div>
          </div>
        </div>
      </div> 

		</div>
		<%@ include file="footer.jsp"%>
	</div>
	
	<script src='js/jquery-3.6.0.js'></script>
    <script src='js/jquery-ui.js'></script>
	<script >
	//$(function ccc(){
	//$('h1').css('font-size','25px').animate({'font-size':'50px'}
	//,1000, function(){
	//$('h1').css('font-size','25px').animate({'font-size':'50px'},1000,ccc);
	//});
	//});
	</script>
	
	
</body>

</html>