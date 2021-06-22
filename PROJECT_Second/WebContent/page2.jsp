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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
div#supp {
	color: black;
}
p.list1{
	font-family: 'Gamja Flower', cursive;
}
#index {
	font-family: 'Noto Serif KR', serif;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String comp = request.getParameter("comp");
	comp = new String(comp.getBytes("8859_1"),"UTF-8");
	DAO_component dao_comp = new DAO_component();
	ArrayList<DTO_component> arr_comp = dao_comp.component_view(comp);
	DAO dao_sup = new DAO();
	ArrayList<DTO_SUPP> arr_supp = dao_sup.suppleimg_view(comp);
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
					<table width = "500" style="margin-right: 70px;">
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span"><p class="list1">효능</p></span></td><td><p><%=arr_comp.get(0).getEffect()%></p></td></tr>
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span><p class="list1">부작용</p></span></td><td><p><%=arr_comp.get(0).getSide_effect()%></p></td></tr>
					<tr><td width="150"><image src="images/list_logo.png" width="40px" height="40px" style= "float: left;"><span><p class="list1">함께 복용</p></span></td><td><p><%=arr_comp.get(0).getTogether_eat()%></p></td></tr>
				<!--<div class="step-number d-flex mb-4">  </div> -->	
					<!--<div class="step-number d-flex mb-4">  </div> -->		
						<!--<div class="step-number d-flex mb-4">  </div> -->	
					
					</table>
				</div>
			</div>
		</div>
	<br>
	<br>
		<div id="supp" align="center" width="1500px">
			<h4>관련 제품</h4>
			<table>
			<tr>
			<%int cnt=0;for(int i=0;i<arr_supp.size();i++){%>
			<%if(cnt==5){ cnt=0;%>
			</tr><tr>
			<%}cnt+=1;%>
			<td><a href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><img width="200px" height="200px" src="img/<%=arr_supp.get(i).getImg() %>.jpg"></a></td>
			<%} %>
			</tr></table>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>