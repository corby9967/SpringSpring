<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>나만의 일기장 - 작성</title>
</head>
<body>

<h1>나만의 일기장 - 작성</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>날짜:</td><td><input type="text" name="date"/></td></tr>
        <tr><td>글쓴이:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>장소:</td><td><input type="text" name="place"/></td></tr>
        <tr><td>함께한 사람:</td><td><input type="text" name="with"/></td></tr>
        <tr><td>날씨:</td><td><input type="text" name="weather"/></td></tr>
        <tr><td>기분:</td><td><input type="text" name="feel"/></td></tr>
        <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td><a href="list">메인으로</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>