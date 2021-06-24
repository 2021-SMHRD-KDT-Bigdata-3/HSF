		<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>댓글 작성하기</title>
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
#board {
	width: 530px;
	hight: 830px;
	margin-top: 10%;
	margin-left: 30%;
}

#dat1 {
	color: orange;
	font-size: 32px;
	font-family: 'Noto Serif KR', serif;
	
}

#dat2 {
	color: black;
	font-size: 30px;
	font-family: 'Noto Serif KR', serif;
}

.index1 {
	color:black;
	font-size: 18px;
}
#btn1{
	cursor: pointer;
    border-radius: 0.25rem
    
}
</style>
</head>
<body>
	<div class="site-wrap">
		<%@ include file="header.jsp"%>

		<%
		String sp_name = request.getParameter("sp_name");
		%>

		<form action="comment" method="post">

			<div id="board" align="center">
				<strong id="dat1">댓글</strong><strong id="dat2"> 작성하기</strong>
				<div style="position:absolute; width:200px; height:200px; top:295px; right:300px;"><img src="images/unbi_image_white.jpg" style= "width: 200px; height: 200px; object-fit: contain;">
              </div>
				<br>
				<br> <br>
				<table id="list" style="margin-left: auto; margin-right: auto;">
					<tr>
						<td class="index1" width="30%" align="left"><image src="images/pill.png"
									width="40px" height="40px" style="float: left; padding: 10px"> 제품명</td>
						<td width="70%" align="left"><input type="text"
							name="title" style="width: 260px;" value="<%=sp_name%>"></td>
					</tr>
					<tr>
						<td class="index1" width="30%" align="left"><image src="images/pill.png"
									width="40px" height="40px" style="float: left; padding: 10px"> 작성자</td>
						<td width="70" align="left"><input type="text" style="width: 260px;" name="id"></td>
					</tr>
					<tr>
						<td class="index1" width="30%" align="left"><image src="images/pill.png"
									width="40px" height="40px" style="float: left; padding: 10px"> 비밀번호</td>
						<td width="70%" align="left"><input type="password"
							style="width: 260px;" name="pw"></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td colspan="2" align="center">내용</td>
					</tr>
					<tr>
						<td colspan="2"><textarea name="content" rows="20"
								cols="70px" style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td id="write" colspan="2" align="center"><input id="btn1"
							style="border: 1px solid orange; color: white; font-size =18px; background-color: orange; "
							type="submit" value="작성하기"></td>
					</tr>
				</table>
			</div>
		</form>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>