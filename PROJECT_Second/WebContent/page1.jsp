<%@page import="DAODTO.DTO_COMP"%>
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
<style>
.btn_comp {
	width: 100px;
	margin-left: 27%;
	float: left;
}

div.fo {
	color: black !important;
}

table {
	border-collapse: separate;
	border-spacing: 40px;
	border: 3px solid orange;
	background-color: #FAFBDF;
	background-image: url("images/r1.png");
	font-family: 'Noto Serif KR', serif;
	font-size: 16px;
}

#complist {
	font-family: 'Single Day', cursive;
	font-size: 30px;
	#
	table1
	{
	background-image
	:
	url("images/r1.png");
}

h4 {
	font-size: 30px; h4 { font-size : 30px;
	color: orange;
}
</style>
</head>
<body>

	<script src='js/jquery-3.6.0.js'></script>
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
				<form action="selectList" method="post" name="testform">
					<table align="center" id="table1">
						<tr>
							<td align="right"><h4>나이</h4></td>
							<td colspan="5"><input type="text" name="input_age"
								placeholder="나이 입력" autofocus="autofocus"> <!--  <select name="age"
								style="width: 300px; height: 60px;">
									<option value="1">10대</option>
									<option value="2">20~30대</option>
									<option value="3">40~50대</option>
									<option value="4">60~70대</option>
							</select>--></td>
						</tr>
						<tr>
							<td align="right"><h4>성별</h4></td>
							<td><input type="radio" name="gender" value="남자">남자</td>
							<td><input type="radio" name="gender" value="여자">여자</td>
						</tr>


						<tr>
							<td rowspan="3" align="right"><h4>효능</h4></td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="피로회복"> 피로회복</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="관절/뼈"> 관절/뼈</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="불면증"> 불면증</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="피부건강"> 피부건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="혈액순환개선"> 혈액순환개선</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="간건강"> 간건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="눈건강"> 눈건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="긴장완화"> 긴장완화</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="치아건강"> 치아건강</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="근력개선"> 근력개선</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="갱년기여성"> 갱년기여성</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="갱년기남성"> 갱년기남성</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="위건강/소화기능"> 위건강/소화기능</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="남성 성기능"> 남성 성기능</td>
							<td><input type="checkbox" name="chk1"
								onclick="count_ck(this)" value="여성 컨디션"> 여성 컨디션</td>
						</tr>
					</table>

					<%
					int age;
					String gender;
					if(!(session.getAttribute("age")==null)){
						age = (Integer) session.getAttribute("age");
						gender = (String) session.getAttribute("gender");
						
						System.out.println(age);
						System.out.println(gender);
					}
					else{
						age=-1;
						gender="gender";
					}
					%>
					<br> <br>
					<a href="page2.jsp?age=<%=age%>&gender=<%=gender %>"> <input type="submit"
						class="btn btn-primary btn_comp" value="성분조회"></a>
				</form>
			</div>


			<form action="http://127.0.0.1:5000/" method="post">
				<span> <a href="page3.jsp"><input type="button"
						value="제품 조회" class="btn btn-primary btn_comp btn_user"
						onclick="sum_chan()"></a>
				</span>
			</form>
			<br> <br> <br>

			<%
			ArrayList<DTO_COMP> arr = (ArrayList<DTO_COMP>) session.getAttribute("arr");
			%>

			<%
			if (arr != null) {
			%>

			<div align="center" id="complist">
				<table>
					<%
					for (int i = 0; i < arr.size(); i++) {
					%>
					<td><div align="center">
							<%
							System.out.println("=========================================");
							%>
							<span><h3><%=arr.get(i).getState()%></h3></span>
							<%
							String[] comp_list = arr.get(i).getComponent().split(",");
							for (int j = 0; j < comp_list.length; j++) {
							%>
							<span class="comp"> <a
								href="page2.jsp?age=<%=age%>&gender=<%=gender %>&comp=<%=comp_list[j]%>"><%=comp_list[j]%></a>
							</span><br>
							<%
							}
							%>
						</div></td>
					<%
					}
					%>
				</table>
			</div>
			<%
			}
			%>

			<%@ include file="footer.jsp"%>
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
				} else if (cnt == 0) {
					alert("증상을 선택해주세요");
				}
			}
			//$.ajax({
			//type : 'post',
			//url:'http://127.0.0.1:5000/',
			//data : check_dic,
			//dataType : 'json',
			//success : function(res){
			//alert('요청 성공!');
			// window.location.href = "page3.jsp?model="+res;
			// },
			//error : function(){
			//alert('요청 실패쓰');
			//}
			//})

			//function sum_chan() {
			//var val_test = $('input:checkbox[name=chk1]');
			//let check_dic = { "나이" : $("select[name=age]").val()}; 
			//for (let i = 0; i< val_test.length; i++) {
			//if ($(val_test[i]).is(':checked')) {
			//check_dic[$(val_test[i]).val()] = '1';
			//} else {
			//check_dic[$(val_test[i]).val()] = '0';
			//}
			//}

			//$.ajax({ type : 'post',
			// url : 'http://127.0.0.1:5000/',
			// data : check_dic,
			// dataType : 'json',
			//success : function(res) {
			// alert('요청 성공!');
			// window.location.href = "page3.jsp?model=" + res;
			//},
			//error : function() { alert('요청 실패쓰');}

			//})
			//}
		</script>
</body>
</html>