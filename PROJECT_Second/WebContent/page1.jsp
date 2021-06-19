<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>성분 추천</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;700&family=Single+Day&display=swap" rel="stylesheet">
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
.btn_comp {
	width: 100px;
	margin-left:27%;
	float : left;
}

div.fo {
	color: black !important;
}

table {
	border-collapse: separate;
	border-spacing: 40px;
	border: 3px solid orange;
	background-color:#FAFBDF;
	background-image:url("images/r1.png");
	
	

}


</style>
</head>
<body>

	<div class="site-wrap">
		<%@ include file="header.jsp"%>

		<div class="fo">

			<div class="title-section" align="center">
				<br> <br> <br>
				<h2>
					Item <strong class="text-primary">Selection</strong>
				</h2>

				<br> <br> <br>
			</div>


			<div >
				<form action="selectList" method="post">
					<table align="center" id="table">
						<tr>
							<td align="right"><h4>나이</h4></td>
							<td colspan="5"><select name="age"
								style="width: 300px; height: 60px;">
									<option value="1">10대</option>
									<option value="2">20~30대</option>
									<option value="3">40~50대</option>
									<option value="4">60~70대</option>
							</select></td>
						</tr>

						<tr>
							<td rowspan="3" align="right"><h4>효능</h4></td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="피로회복">피로회복</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="관절/뼈">관절/뼈</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="불면증">불면증</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="피부건강">피부건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="혈액순환개선">혈액순환개선</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="간건강">간건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="눈건강">눈건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="긴장완화">긴장완화</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="치아건강">치아건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="근력개선">근력개선</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="갱년기여성">갱년기여성</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="갱년기남성">갱년기남성</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="위건강/소화기능">위건강/소화기능</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="남성 성기능">남성 성기능</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="여성 컨디션">여성 컨디션</td>
						</tr>
					</table>
					<br><br> <input type="submit" class="btn btn-primary btn_comp"
						value="성분조회">
				</form>
			</div>

			<span> <a href="page3.jsp"
				class="btn btn-primary btn_comp btn_user">제품 조회</a> <br> <br>
			</span>
			
			
			
			<%
			ArrayList<String> arr = (ArrayList<String>) session.getAttribute("arr");
			%>

			<%
			if (arr != null) {
			%>
			<div align="center" id="complist">
				<%
				for (int i = 0; i < arr.size(); i++) {
				%>
				<p class="comp">
					<a href="page2.jsp?comp=<%=arr.get(i)%>"><%=arr.get(i)%></a>
				</p>
				<%
				}
				%>
			</div>

			<%
			}
			%>

			<%@ include file="footer.jsp"%>
		</div>
	</div>


	<script src='js/jquery-3.6.0.js'></script>
	<script>
		var maxChk = 3;
		var cnt = 0;

		function count_ck(field) {
			if (field.checked) {
				cnt++;
			} else {
				cnt--;
			}

			if (cnt > maxChk) {
				alert("3개까지만 선택할 수 있습니다.");
				field.checked = false;
				cnt--;
			}
		}
	</script>


</body>
</html>