<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DAODTO.DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>성분 추천</title>
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
}

div.fo {
	color: black !important;
}

table {
	border-collapse: separate;
	border-spacing: 40px;
	border: 2px solid green;
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


			<div>
				<form action="http://localhost:9000" method="get">
					<table align="center">
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
							<td rowspan="2" align="right"><h4>상태 & 증상</h4></td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="5">증상1</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="6">증상2</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="7">증상3</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="8">증상4</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="9">증상5</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="10">증상6</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="11">증상7</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="12">증상8</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="13">증상9</td>
							<td><input type="checkbox" name="chk"
								onclick="count_ck(this)" value="14">증상10</td>
						</tr>
					</table>
					<input type="submit" value="조회">
				</form>
			</div>

			<br> <span style="margin-left: 40%"> <a href="#"
				class="btn btn-primary btn_comp">성분 조회</a>
			</span> <span style="margin-left: 50%"> <a href="page3.jsp"
				class="btn btn-primary btn_user">제품 조회</a> <br> <br>
			</span>


			<%
			//추천받은 성분들 예시라고 하면
			String[] str = {"비타민b1", "비타민b2", "비타민b3", "비타민c", "칼슘", "철분", "마그네슘"};
			%>

			<div align="center" id="complist">

				<%
				for (int i = 0; i < str.length; i++) {
				%>
				<%
				String s = str[i];
				%>
				<p class="comp">
					<a href="page2.jsp?comp=<%=s%>"><%=s%></a>
				</p>
				<%
				}
				%>
			</div>





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

		//for (let i = 0; i < 10; i++) {
			if($("input[type=checkbox][name=chk]").is(":checked") ==  true){
				$("input[type=checkbox][name=chk]").attr("value","1");
			}else if($("input[type=checkbox][name=chk]").is(":checked") ==  false){
				$("input[type=checkbox][name=chk]").attr("value","0");
			}
		//}
	</script>



</body>
</html>