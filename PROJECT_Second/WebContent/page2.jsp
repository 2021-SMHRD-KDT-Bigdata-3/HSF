<%@page import="DAODTO.DAO_component"%>
<%@page import="DAODTO.DTO_component"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="DAODTO.DAO"%>
<%@page import="DAODTO.DTO_SUPP"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>추천성분 상세</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;700&family=Single+Day&display=swap"
	rel="stylesheet">
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

#index {
	font-family: 'Noto Serif KR', serif;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("EUC-KR");
	String comp = request.getParameter("comp");
	DAO_component dao_comp = new DAO_component();
	ArrayList<DTO_component> arr_comp = dao_comp.component_view(comp);
	%>

	<div class="site-wrap">
		<%@ include file="header.jsp"%>
		<div id="index" align="center">

			<div class="col-lg-5">
				<div class="title-section">
					<br> <br> <br>
					<h2 class="mb-5">
						추천성분 <strong class="text-primary"><%=comp%></strong>
					</h2>
					<div class="step-number d-flex mb-4">
						<span>효능</span>

						<p><%=arr_comp.get(0).getEffect()%></p>
					</div>
					<div class="step-number d-flex mb-4">
						<span>부작용</span>

						<p><%=arr_comp.get(0).getSide_effect()%></p>
					</div>
					<div class="step-number d-flex mb-4">
						<span>함께 복용</span>

						<p><%=arr_comp.get(0).getTogether_eat()%></p>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>