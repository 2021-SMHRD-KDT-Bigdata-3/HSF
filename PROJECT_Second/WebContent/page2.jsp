<%@page import="DAODTO.DTO_GEN_COMP"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap"
	rel="stylesheet">
<style>
div#supp {
	color: black;
}

p.list1 {
	font-family: 'Poor Story', cursive;
	font-size: 30px;
	color: orange;
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
	//comp = new String(comp.getBytes("8859_1"),"UTF-8");
	DAO_component dao_comp = new DAO_component();
	ArrayList<DTO_component> arr_comp = dao_comp.component_view(comp);
	DAO dao_sup = new DAO();
	ArrayList<DTO_SUPP> arr_supp = dao_sup.suppleimg_view(comp);
	ArrayList<DTO_GEN_COMP> arr_gen_comp = dao_sup.gen_comp_view();
	%>

	<%
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
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
					<table width="500" style="margin-right: 70px;">
						<tr>
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span"><p
										class="list1">효능</p></span></td>
							<td><p><%=arr_comp.get(0).getEffect()%></p></td>
						</tr>
						<tr>
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">부작용</p></span></td>
							<td><p><%=arr_comp.get(0).getSide_effect()%></p></td>
						</tr>
						<tr>
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">함께 복용</p></span></td>
							<td><p><%=arr_comp.get(0).getTogether_eat()%></p></td>
						</tr>
						<!--<div class="step-number d-flex mb-4">  </div> -->
						<!--<div class="step-number d-flex mb-4">  </div> -->
						<!--<div class="step-number d-flex mb-4">  </div> -->

					</table>
				</div>
			</div>
		</div>
		<br> <br>

		<div align="center">
			<h3>하루 영양 섭취 기준</h3>
			<h6>
				나이 :
				<%=age%></h6>
			<h6>
				성별 :
				<%=gender%></h6>
			<br>

			<table>
				<tr>
					<td>단백질</td>
					<td>식이섬유</td>
					<td>수분</td>
					<td>비타민C</td>
					<td>티아민</td>
					<td>리보플라민</td>
					<td>니아신</td>
					<td>비타민B6</td>
					<td>엽산</td>
					<td>비타민B12</td>
				</tr>
				<tr>
					<br>
				</tr>
				<tr>
					<td>권장섭취량(g)</td>
					<td>충분섭취량(g)</td>
					<td>충분섭취량(ml)</td>
					<td>권장섭취량(mg)</td>
					<td>권장섭취량(mg)</td>
					<td>권장섭취량(mg)</td>
					<td>권장섭취량(mg NE)</td>
					<td>권장섭취량(mg)</td>
					<td>권장섭취량(μg DFE)</td>
					<td>권장섭취량(μg)</td>
				</tr>

				<%
				int i = 0;
				%>
				<%
				if (gender.equals("남자")) {
					if (age <= 8) {
						i = 0;
					} else if (age <= 11) {
						i = 1;
					} else if (age <= 14) {
						i = 2;
					} else if (age <= 18) {
						i = 3;
					} else if (age <= 29) {
						i = 4;
					} else if (age <= 49) {
						i = 5;
					} else if (age <= 64) {
						i = 6;
					} else if (age <= 74) {
						i = 7;
					} else if (age <= 1000) {
						i = 8;
					}

				} else if (gender.equals("여자")) {
					if (age <= 8) {
						i = 9;
					} else if (age <= 11) {
						i = 10;
					} else if (age <= 14) {
						i = 11;
					} else if (age <= 18) {
						i = 12;
					} else if (age <= 29) {
						i = 13;
					} else if (age <= 49) {
						i = 14;
					} else if (age <= 64) {
						i = 15;
					} else if (age <= 74) {
						i = 16;
					} else if (age <= 1000) {
						i = 17;
					}
				}
				%>
				<tr>
					<br>
				</tr>
				<tr>
					<td><%=arr_gen_comp.get(i).getDanbek()%></td>
					<td><%=arr_gen_comp.get(i).getSubun()%></td>
					<td><%=arr_gen_comp.get(i).getSigi()%></td>
					<td><%=arr_gen_comp.get(i).getBc()%></td>
					<td><%=arr_gen_comp.get(i).getTiamin()%></td>
					<td><%=arr_gen_comp.get(i).getLibopla()%></td>
					<td><%=arr_gen_comp.get(i).getNiasin()%></td>
					<td><%=arr_gen_comp.get(i).getB6()%></td>
					<td><%=arr_gen_comp.get(i).getYapsan()%></td>
					<td><%=arr_gen_comp.get(i).getB12()%></td>
				</tr>
				<tr>
					<td>판토텐산</td>
					<td>비오틴</td>
					<td>비타민A</td>
					<td>비타민D</td>
					<td>비타민E</td>
					<td>비타민K</td>
					<td>칼슘</td>
					<td>인</td>
					<td>나트륨</td>
				</tr>
				<tr>
					<br>
				</tr>
				<tr>
					<td>충분섭취량(mg)</td>
					<td>충분섭취량(μg)</td>
					<td>권장섭취량(μg RAE)</td>
					<td>충분섭취량(μg)</td>
					<td>충분섭취량(mg α-TE)</td>
					<td>충분섭취량(μg)</td>
					<td>권장섭취량(mg)</td>
					<td>권장섭취량(mg)</td>
					<td>충분섭취량(g)</td>
				</tr>
				<tr>
					<br>
				</tr>
				<tr>
					<td><%=arr_gen_comp.get(i).getPanto()%></td>
					<td><%=arr_gen_comp.get(i).getBiotin()%></td>
					<td><%=arr_gen_comp.get(i).getBa()%></td>
					<td><%=arr_gen_comp.get(i).getBd()%></td>
					<td><%=arr_gen_comp.get(i).getBe()%></td>
					<td><%=arr_gen_comp.get(i).getBk()%></td>
					<td><%=arr_gen_comp.get(i).getCalsum()%></td>
					<td><%=arr_gen_comp.get(i).getInin()%></td>
					<td><%=arr_gen_comp.get(i).getNatrume()%></td>
				</tr>
			</table>
		</div>
		
		
		<br> <br>
		<div id="supp" align="center" width="1500px">
			<h4>관련 제품</h4>
			<table>
				<tr>
					<%
					int cnt = 0;
					for (i = 0; i < arr_supp.size(); i++) {
					%>
					<%
					if (cnt == 5) {
						cnt = 0;
					%>
				</tr>
				<tr>
					<%
					}
					cnt += 1;
					%>
					<td><a
						href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><img
							width="200px" height="200px"
							src="img/<%=arr_supp.get(i).getImg()%>.jpg"></a></td>
					<%
					}
					%>
				</tr>
			</table>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>