<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="DAODTO.DAO"%>
<%@page import="DAODTO.DTO_SUPP"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>추천성분 상세</title>
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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
div#supp {
	color: black;
}
p.list1{
	font-family: 'Gamja Flower', cursive;
}
</style>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String comp = request.getParameter("comp");

//	DAO dao = new DAO();
//	DTO_SUPP dto_supp= null;
//	dto_supp = dao.recom_supp(comp);
	%>


	<div class="site-wrap">
		<%@ include file="header.jsp"%>

		<div align="center">
			<div class="col-lg-5">
				<div class="title-section">
					<br> <br> <br>
					<h2 class="mb-5">
						추천성분 <strong class="text-primary"><%=comp%></strong>
					</h2>
					<table width = "500" style="margin-right: 70px;">
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span"><p class="list1">효능</p></span></td><td><p><%//=dto_supp.getEffect()%></p></td></tr>
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span><p class="list1">부작용</p></span></td><td><p>몰랑</p></td></tr>
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span><p class="list1">함께 복용</p></span></td><td><p>이건아직 모름</p></td></tr>
				<!--<div class="step-number d-flex mb-4">  </div> -->	
					<!--<div class="step-number d-flex mb-4">  </div> -->		
						<!--<div class="step-number d-flex mb-4">  </div> -->	
					
					</table>
				</div>
			</div>
		</div>
	<br>
	<br>
		<div id="supp" align="center">
			<h4>위 성분이 들어가있는 제품들</h4>
			<img src="images/product_01.png"> <img
				src="images/product_02.png"> <img src="images/product_03.png">
			<img src="images/product_04.png"> <br> <Strong><%//=dto_supp.getSp_name()%></Strong>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>