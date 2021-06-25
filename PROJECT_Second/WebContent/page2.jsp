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
	font-size: 20px;
	color: rgb(255, 127, 0, .8);
}

#index {
	font-family: 'Noto Serif KR', serif;
}

#related_pd{
	font-family: 'Noto Serif KR', serif;
	font-weight: bolder;
	font-size: 30px;
	color: orange;
}

p.list2{
	color: black;
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
	%>
	<%
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	ArrayList<DTO_GEN_COMP> arr_gen_comp = dao_sup.gen_comp_view();
	%>

	<%
	int i = 0;
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
	<%
	String result = "";
	if (comp.equals("단백질")) {
		result= "권장섭취량(g) : "+arr_gen_comp.get(i).getDanbek();
	}else if(comp.equals("식이섬유")){
		result= "충분섭취량(g) : "+arr_gen_comp.get(i).getSigi();
	}else if(comp.equals("수분")){
		result= "충분섭취량(ml) : "+arr_gen_comp.get(i).getSubun();
	}
	else if(comp.equals("비타민C")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getBc();
	}
	else if(comp.equals("티아민")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getTiamin();
	}
	else if(comp.equals("리보플라민")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getLibopla();
	}
	else if(comp.equals("니아신")){
		result= "권장섭취량(mg NE) : "+arr_gen_comp.get(i).getNiasin();
	}
	else if(comp.equals("비타민B6")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getB6();
	}
	else if(comp.equals("엽산")){
		result= "권장섭취량(μg DFE) : "+arr_gen_comp.get(i).getYapsan();
	}
	else if(comp.equals("비타민B12")){
		result= "권장섭취량(μg) : "+arr_gen_comp.get(i).getB12();
	}
	else if(comp.equals("판토텐산")){
		result= "충분섭취량(mg) : "+arr_gen_comp.get(i).getPanto();
	}
	else if(comp.equals("비오틴")){
		result= "충분섭취량(μg) : "+arr_gen_comp.get(i).getBiotin();
		
	}else if(comp.equals("비타민A")){
		result= "권장섭취량(μg RAE) : " +arr_gen_comp.get(i).getBa();
	}
	else if(comp.equals("비타민D")){
		result= "충분섭취량(μg) : "+arr_gen_comp.get(i).getBd();
	}
	else if(comp.equals("비타민E")){
		result= "충분섭취량(mg α-TE) : "+arr_gen_comp.get(i).getBe();
	}
	else if(comp.equals("비타민K")){
		result= "충분섭취량(μg) : "+arr_gen_comp.get(i).getBk();
	}
	else if(comp.equals("칼슘")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getCalsum();
	}
	else if(comp.equals("인")){
		result= "권장섭취량(mg) : "+arr_gen_comp.get(i).getInin();
	}
	else if(comp.equals("나트륨")){
		result= "충분섭취량(g) : "+arr_gen_comp.get(i).getNatrume();
	}else{
		result="섭취량 : - ";
	}
	
	%>

	<div class="site-wrap">
		<%@ include file="header.jsp"%>
		<div id="index" align="center" ">

			<div class="col-lg-5" >
				<div class="title-section">
					<br> <br> <br>
					<h2 class="mb-5">
						추천성분 <strong class="text-primary"><%=comp%></strong>
					</h2>
					<span style="position:absolute; max-width:100%;height:auto; margin-top:-85px; margin-left:10px;"><img src="images/unbi_image_white.jpg" style= "width: 200px; height: 200px; object-fit: contain;">
              </span>
					<!-- <div style="position: absolute; width:200px; height:200px; top:-5px; right:-80px;"><img src="images/unbi_image_white.jpg" style= "width: 200px; height: 200px; object-fit: contain;">
              </div>-->
					<table width="500" style="margin-right: 70px; border-bottom: solid 3px rgb(255, 127, 0, .3); border-top: solid 3px rgb(255, 127, 0, .3);">
						<tr style="border-bottom: dashed 1px rgb(255, 127, 0, .3);">
							<td width="150" ><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">효능</p></span></td>
							<td><p class="list2">
							<%
							String[] effect_list = arr_comp.get(0).getEffect().split("\\.");
							for(int j = 0; j<effect_list.length; j++){
								//System.out.println(effect_list[j]);
							%>
							<%=effect_list[j] %><br>
							<%} %>
							</p></td>
						</tr>
						<tr style="border-bottom: dashed 1px rgb(255, 127, 0, .3);">
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">부작용</p></span></td>
							<td><p class="list2"><%=arr_comp.get(0).getSide_effect()%></p></td>
						</tr>
						<tr style="border-bottom: dashed 1px rgb(255, 127, 0, .3);">
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">함께 복용</p></span></td>
							<td><p class="list2"><%=arr_comp.get(0).getTogether_eat()%></p></td>
						</tr>
						<tr style="border-bottom: dashed 1px rgb(255, 127, 0, .3);">
							<td width="150"><image src="images/list_logo.png"
									width="40px" height="40px" style="float: left;"> <span><p
										class="list1">섭취량</p></span></td>
							<td><p class="list2">나이 : <%=age%> <br>
								   성별 : <%=gender%> <br>
								   <%=result%></p></td>
						</tr>
						<!--<div class="step-number d-flex mb-4">  </div> -->
						<!--<div class="step-number d-flex mb-4">  </div> -->
						<!--<div class="step-number d-flex mb-4">  </div> -->

					</table>
				</div>
			</div>
		</div>


		<br> <br><br><br>
		<div id="supp" align="center" width="1500px">
			<p id="related_pd" style="font-weight: bolder;">관련<strong class="text-primary">제품</strong></p>
			<table>
				<tr>
					<%
					int cnt = 0;
					for (i = 0; i < arr_supp.size(); i++) {
						if (cnt == 4) {
							cnt = 0;%>
						</tr>
						<tr height=50px style="border-bottom: dashed 1px rgb(255, 127, 0, .4)">
							<%for(int j=i-4;j<i;j++){%>
							<td width=225px><a style="color: black; font-family: 'Noto Serif KR', serif;"
							href="page4.jsp?sp_name=<%=arr_supp.get(j).getSp_name()%>"><%=arr_supp.get(j).getSp_name()%></a></td><%} %>
						</tr>
						<tr>
						<%}
						cnt += 1;%>
						<td width=225px><a
							href="page4.jsp?sp_name=<%=arr_supp.get(i).getSp_name()%>"><img
								width="150px" height="150px" style="object-fit: contain;"
								src="img/<%=arr_supp.get(i).getImg()%>.jpg"></a></td>
						
					<%}%>
					</tr>
			</table>
		</div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>