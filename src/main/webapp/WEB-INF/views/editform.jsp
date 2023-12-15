<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>나만의 일기장 - 수정</title>
</head>
<body>

<h1>나만의 일기장 - 수정</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>제목:</td><td><form:input path="title"/></td></tr>
		<tr><td>글쓴이:</td><td><form:input path="writer"/></td></tr>
		<tr><td>장소:</td><td><form:input path="place"/></td></tr>
		<tr><td>함께한 사람:</td><td><form:input path="with"/></td></tr>
		<tr><td>날씨:</td><td><form:input path="weather"/></td></tr>
		<tr><td>기분:</td><td><form:input path="feel"/></td></tr>
		<tr><td>내용:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
	</table>
	<input type="submit" value="수정"/>
	<input type="button" value="삭제" onclick="history.back()"/>
</form:form>

</body>
</html>