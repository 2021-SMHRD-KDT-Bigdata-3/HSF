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
				<table align="center">
					<tr>
						<td align="right"><h4>나이</h4></td>
						<td colspan="5"><input type="text" name="age"
							autofocus="autofocus" placeholder="숫자만 입력"
							style="width: 150px; height: 50px"></td>
					</tr>
					<tr>
						<td rowspan="2" align="right"><h4>상태 & 증상</h4></td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상1">증상1</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상2">증상2</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상3">증상3</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상4">증상4</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상5">증상5</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상6">증상6</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상7">증상7</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상8">증상8</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상9">증상9</td>
						<td><input type="checkbox" name="chk"
							onclick="count_ck(this)" value="증상10">증상10</td>
					</tr>
				</table>
			</div>


			<p align="center">
				<br> <a href="#" class="btn btn-primary btn_comp">성분 조회</a> <br><br><br>
			</p>




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


			<p align="center">
				<br><br><a href="page3.jsp" class="btn btn-primary btn_user">제품 조회</a>
			</p>


			<%@ include file="footer.jsp"%>
		</div>
	</div>


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
		
		//let btnComp = document.getElementsByClassName('btn_comp');
		//let complist = document.getElementById('complist');
		//btnComp.onclick = function(){
		//}
		
	</script>
</body>
</html>