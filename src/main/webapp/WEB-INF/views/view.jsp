<%--
  Created by IntelliJ IDEA.
  User: hoyeonlee
  Date: 11/21/23
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="./my.css"/>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>View</title>

  <script>
    function myFunction() {
      confirm("게시물을 삭제할까요?");
    }
  </script>
  <style>
    body {
      border: 1px solid black;
      padding-top: 50px;
      padding-right: 50px;
      padding-bottom: 50px;
      padding-left: 50px;
      text-align: center;
    }
  </style>
</head>

<body>
<div class="col-6 col-s-9">
  <h2>VIEW MENU</h2>
</div>
<br>
<div class="col-6 col-s-9">

    <p>
      <b>Category</b><br>${u.getCategory()}<br><br>
      <b>Title</b><br>${b.getTitle()}<br><br>
      <b>Writer</b><br>${b.getWriter()}<br><br>
      <b>Content</b><br>${b.getContent()}<br><br>
  <p>

</div>>

<a href="editform/${b.getSeq()}">Edit</a>
<a href="javascript:delete_ok('${b.getSeq()}')">Delete</a>

</body>
</html>
