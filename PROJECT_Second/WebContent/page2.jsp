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
<style>
div#supp {
	color: black;
}
</style>
</head>
<body>

	<%
	//request.setCharacterEncoding("UTF-8");
	//String comp = request.getParameter("comp");

	//DAO dao = new DAO();
	//DTO_SUPP dto_supp= null;
	//dto_supp = dao.recom_supp(comp);
	%>


	<div class="site-wrap">
		<%@ include file="header.jsp"%>
		<%
			request.setCharacterEncoding("UTF-8");
			String comp = request.getParameter("comp");
			System.out.println(comp+"왜 안돼안이;ㅏㅁㄴ;이");
		%>
		<div align="center">
			<div class="col-lg-5">
				<div class="title-section">
					<br> <br> <br>
					<h2 class="mb-5">
						추천성분 <strong class="text-primary"><%=comp %></strong>
					</h2>
					<div class="step-number d-flex mb-4">
						<span>효능</span>
						<p>효능 : ~~~~~</p>
					</div>
					<div class="step-number d-flex mb-4">
						<span>하루권장량</span>
						<p>권장량 : ~~~~~</p>
					</div>
					<div class="step-number d-flex mb-4">
						<span>부작용</span>
						<p>몰랑~~~~~~~~~~</p>
					</div>
					<div class="step-number d-flex mb-4">
						<span>함께 복용</span>
						<p>이건아직 모름~~~~~~</p>
					</div>
				</div>
			</div>
		</div>

		<div id="supp" align="center">
			<p>위 성분이 들어가있는 제품들</p>
			<img src="images/product_01.png"> <img
				src="images/product_02.png"> <img src="images/product_03.png">
			<img src="images/product_04.png"> <br> <Strong>제품명 ~~~~~</Strong>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>