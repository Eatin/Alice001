<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
  </head>


  <body>
  <h2>文件上传实例</h2>
  <form action="upload.html" method="post" enctype="multipart/form-data">
      选择文件:<input type="file" name="uploadFile"><br>
      选择文件:<input type="file" name="uploadFile">
      <input type="submit" value="提交">
  </form>
  </body>

</html>
