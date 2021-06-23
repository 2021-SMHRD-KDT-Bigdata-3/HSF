<%@page import="DAODTO.DTO_MEMBER"%>
<%@page import="DAODTO.DTO_SUPP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAODTO.DAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>추천제품 상세</title>
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
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;700&family=Single+Day&display=swap"
	rel="stylesheet">
<style>
.pg4_data {
	font-family: 'Noto Serif KR', serif;
	color: #BDBDBD;
}

.pg4 {
	font-family: 'Poor Story', cursive;
	font-size: 20px;
	color: orange;
}

#buy {
	color: black;
	font-family: 'Poor Story', cursive;
	font-size: 25px;
	font-weight: bold;
}

#buy:hover {
	color: orange;
}

#product_img {
	width: 300px;
	height: 300px;
	object-fit: contain;
}
</style>
</head>
<body>
	<%
	String sp_name = request.getParameter("sp_name");
	String model = request.getParameter("model");
	if (sp_name == null) {
		sp_name = (String) request.getAttribute("sp_name");
	}
	DAO dao = new DAO();
	DTO_SUPP dto_supp = dao.supp_view_one(sp_name);
	%>


	<div class="site-wrap">
		<%@ include file="header.jsp"%>
		<div align="center">
			<div class="title-section">

				<br>
				<a href="page3.jsp?model=<%=model%>"><button>TEST입니당</button></a> <br>
				<br>
				<h2>
					Product <strong class="text-primary">Details</strong>
				</h2>
			</div>
		</div>

		<br> <br> <br>
		<div class="step-number" align="center">
			<p>
				<img id="product_img" src="img/<%=dto_supp.getImg()%>.jpg">
			</p>
			<table width=800>
				<tr>
					<td class="pg4" width="150"><image src="images/list_logo.png"
							width="40px" height="40px" style="float: left;">제품명: </td>
					<td><p class="pg4_data"><%=dto_supp.getSp_name()%></p></td>
				<tr>
					<td class="pg4"><image src="images/list_logo.png" width="40px"
							height="40px" style="float: left;">유통기한: </td>
					<td><p class="pg4_data"><%=dto_supp.getRda()%></p></td>
				</tr>
				<tr>
					<td class="pg4"><image src="images/list_logo.png" width="40px"
							height="40px" style="float: left;">제조회사: </td>
					<td><p class="pg4_data"><%=dto_supp.getBrand()%></p></td>
				<tr>
					<td class="pg4"><image src="images/list_logo.png" width="40px"
							height="40px" style="float: left;">성분: </td>
					<td><p class="pg4_data"><%=dto_supp.getComponent()%></p></td>
				<tr>
					<td class="pg4"><image src="images/list_logo.png" width="40px"
							height="40px" style="float: left;">효능: </td>
					<td><p class="pg4_data"><%=dto_supp.getEffect()%></p></td>
				</tr>
				<tr>
					<td class="pg4"><image src="images/list_logo.png" width="40px"
							height="40px" style="float: left;">복용법: </td>
					<td><p class="pg4_data"><%=dto_supp.getInstruction()%></p></td>
				<tr>
					<td class="pg4" colspan="2" style="text-align: center;"><p
							class="pg4_data">
							<a id="buy"
								href="https://www.google.com/search?q=<%=dto_supp.getSp_name()%>&hl=ko&tbm=shop"
								target="_blank">구입하러가기</a>
						</p></td>
			</table>
		</div>

		<%
		ArrayList<DTO_MEMBER> arr_comment = dao.comment_view(sp_name);
		%>
		<div id="board" align="center" color="black">
			<table id="list">
				<tr>
					<td>번호</td>
					<td>제품명</td>
					<td>아이디</td>
					<td>댓글</td>
				</tr>
				<%
				for (int i = 0; i < arr_comment.size(); i++) {
				%>
				<tr>
					<td><%=i + 1%></td>
					<td><%=arr_comment.get(i).getSupp_name()%></td>
					<td><%=arr_comment.get(i).getMemb_id()%></td>
					<td><%=arr_comment.get(i).getComments()%></td>
				</tr>

				<%
				}
				%>
			</table>
			<a href="writerBoard.jsp?sp_name=<%=dto_supp.getSp_name()%>"><button
					id="writer">작성하러가기</button></a>
		</div>


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>