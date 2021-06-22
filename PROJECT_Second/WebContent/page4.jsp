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
</head>
<body>
	<%
	String sp_name = request.getParameter("sp_name");
	DAO dao = new DAO();
	System.out.println(sp_name);
	DTO_SUPP dto_supp = dao.supp_view_one(sp_name);
	%>


	<div class="site-wrap">
		<%@ include file="header.jsp"%>
		<div align="center">
			<div class="title-section">
				<br> <br> <br>
				<h2>
					Product <strong class="text-primary">Details</strong>
				</h2>
			</div>
		</div>

		<br> <br> <br>

		<div class="step-number" align="center">
			<p>
				<img src="img/<%=dto_supp.getImg()%>.jpg">
			</p>
			<p><%=dto_supp.getSp_name()%></p>
			<p><%=dto_supp.getRda()%></p>
			<p><%=dto_supp.getBrand()%></p>
			<p><%=dto_supp.getComponent()%></p>
			<p><%=dto_supp.getEffect()%></p>
			<p><%=dto_supp.getInstruction()%></p>
		</div>

		<%
		ArrayList<DTO_MEMBER> arr_comment = dao.comment_view();
		%>
		<div id="board" align ="center" color="black">
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
					<td><%=arr_comment.get(i).getSupp_name() %></td>
					<td><%=arr_comment.get(i).getMemb_id()%></td>
					<td><%=arr_comment.get(i).getComments()%></td>
				</tr>

				<%
				}
				%>
			</table>
				<a href="writerBoard.jsp?sp_name=<%=dto_supp.getSp_name()%>"><button id="writer">작성하러가기</button></a>
		</div>


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>