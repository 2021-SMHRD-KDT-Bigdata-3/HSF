<%@page import="DAODTO.DTO_SUPP"%>
<%@page import="DAODTO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<style>
	#board{
		width: 530px;
		hight: 830px;
		margin-top:10%;
		margin-left:35%; 
		}
	#dat1{
		color: orange;
		font-size:32px;
		font-family: 'Noto Serif KR', serif;
		}
	#dat2{
		color: black;
		font-size:30px;
		}
	#btn1:hover{
		border-color:white;
		}
</style>
</head>
<body>


	<%
	String sp_name = request.getParameter("sp_name");
	%>
	
	<form action="comment" method="post" >
	
		<div id="board" align="center">
		<strong id="dat1">댓글</strong><strong id="dat2">  작성하기</strong><br><br><br>
			<table id="list" style="margin-left: auto; margin-right: auto;">
				<tr>
					<td width="30%" align ="right">제품명</td>
					<td width="70%" align ="center"><input type="text" name="title" value="<%=sp_name%>"></td>
				</tr>
				<tr>
					<td width="30%" align ="right">작성자</td>
					<td width="70" align ="center"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td width="30%" align ="right">비밀번호</td>
					<td width="70%" align ="center"><input type="password" name="pw"></td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="2" align="center">내용</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="content" rows="20" cols="70px"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td  id="write" colspan="2" align="center"><input id="btn1" style="border:1px solid orange; color: white; font-size=18px; background-color: orange; width:120px; height:40px;" type="submit" value="작성하기"></td>
				</tr>
			</table>
		</div>
		
</body>
</html>