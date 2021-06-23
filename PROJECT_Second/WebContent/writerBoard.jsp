<%@page import="DAODTO.DTO_SUPP"%>
<%@page import="DAODTO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sp_name = request.getParameter("sp_name");
	%>

	<form action="comment" method="post">
		<div id="board">
			<table id="list">
				<tr>
					<td>제품명</td>
					<td><input type="text" name="title" value="<%=sp_name%>"> </td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="content" rows="10"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="작성하기"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>