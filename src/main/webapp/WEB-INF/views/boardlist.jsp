<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>나만의 일기장</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #E3DFD0;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #E1D6C3;
			color: white;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href = 'deleteok/' + id;
		}
	</script>
</head>
<body>
<h1>나만의 일기장</h1>
<table id="list" width="90%">
	<tr>
		<th>Id</th>
		<th>제목</th>
		<th>날짜</th>
		<th>글쓴이</th>
		<th>장소</th>
		<th>함께하는 사람</th>
		<th>날씨</th>
		<th>기분</th>
		<th>내용</th>
		<th>수정</th>
		<th>삭제</th>

	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getSeq()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getDate()}</td>
			<td>${u.getWriter()}</td>
			<td>${u.getPlace()}</td>
			<td>${u.getWith()}</td>
			<td>${u.getWeather()}</td>
			<td>${u.getFeel()}</td>
			<td><a href="view/${u.getSeq()}">${u.getContent()}</a></td>


			<td><a href="editform/${u.getSeq()}">수정</a></td>
			<td><a href="javascript:delete_ok('${u.getSeq()}')">삭제</a></td>
		</tr>
	</c:forEach>
</table>
<br/><a href="add">새로운 일기 쓰기</a>
</body>
</html>