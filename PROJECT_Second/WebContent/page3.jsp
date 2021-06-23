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
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap"
	rel="stylesheet">
</head>
<style>
#pname {
	font-family: 'Poor Story', cursive;
	font-size: 20px;
	color: black;
}

img {
	width: 200px;
	height: 200px;
	object-fit: contain;
}

#supp_list {
	border: 3px;
	border-collapse: separate;
	border-spacing: 0 40px;
}
</style>
<body>
	<%
	System.out.println("======================================================================");
	int model = Integer.parseInt(request.getParameter("model"));
	//int model = 10;
	DAO dao = new DAO();
	ArrayList<DTO_SUPP> arr_supp = dao.supplement_view(model);
	%>

	<div>
		class="site-wrap"
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
					<table id="supp_list" border=1
						style="border-color: lightgrey; border-collapse: separate; border-spacing: 0 40px;">
						<%
						System.out.println(arr_supp.size());
						for (int i = 0; i < arr_supp.size(); i += 4) {
						%>
						<%
						if (i + 3 >= arr_supp.size()) {
							break;
						}
						%>
						<tr>
							<td
								style="border-top: none; border-left: none; border-right: none; border-bottom: none;"
								width=285px height=203><a
								href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><img
									src="img/<%=arr_supp.get(i).getImg()%>.jpg"></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none; border-bottom: none;"
								width=285px height=203><a
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 1).getSp_name()%>"><img
									src="img/<%=arr_supp.get(i + 1).getImg()%>.jpg"></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none; border-bottom: none;"
								width=285px height=203><a
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 2).getSp_name()%>"><img
									src="img/<%=arr_supp.get(i + 2).getImg()%>.jpg"></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none; border-bottom: none;"
								width=285px height=203><a
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 3).getSp_name()%>"><img
									src="img/<%=arr_supp.get(i + 3).getImg()%>.jpg"></a></td>
						</tr>
						<tr>
							<td
								style="border-top: none; border-left: none; border-right: none;"><a
								id="pname"
								href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><%=arr_supp.get(i).getSp_name()%></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none;"><a
								id="pname"
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 1).getSp_name()%>"><%=arr_supp.get(i + 1).getSp_name()%></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none;"><a
								id="pname"
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 2).getSp_name()%>"><%=arr_supp.get(i + 2).getSp_name()%></a></td>
							<td
								style="border-top: none; border-left: none; border-right: none;"><a
								id="pname"
								href="page4.jsp?sp_name=<%=arr_supp.get(i + 3).getSp_name()%>"><%=arr_supp.get(i + 3).getSp_name()%></a></td>
						</tr>
						<%
						}
						%>
					</table>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</div>

	<script type="text/javascript">
		
	</script>


</body>
</html>