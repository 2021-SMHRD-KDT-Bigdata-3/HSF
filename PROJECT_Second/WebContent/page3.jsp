<%@page import="java.util.ArrayList"%>
<%@page import="DAODTO.DTO_SUPP"%>
<%@page import="DAODTO.DAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>제품 추천</title>
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
</head>
<body>
	<%
	DAO dao = new DAO();
	int model = 30;
	ArrayList<DTO_SUPP> arr_supp = dao.supplement_view(model);
	%>

	<div class="site-wrap">
		<%@ include file="header.jsp"%>

		<div class="site-section bg-light">
			<div class="container">
				<div class="row">
					<div class="title-section text-center col-12">
						<h2>
							Supplement <strong class="text-primary">Products</strong>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 block-3 products-wrap">
						<div class="nonloop-block-3 owl-carousel">

							<%
							for (int i = 0; i < arr_supp.size(); i++) {
							%>
							<div class="text-center item mb-4 item-v2">

								<h3 class="text-dark">
									<p>
										<a href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><%=arr_supp.get(i).getSp_name()%></a>
									</p>
								</h3>
							</div>
							<%
							}
							%>


						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>