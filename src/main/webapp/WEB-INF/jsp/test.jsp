<%--
  Created by IntelliJ IDEA.
  User: Eatin
  Date: 2018/5/17
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--本网页用来实现视频播放，文件下载等功能--%>

<video src="${video}" controls = "controls" >
    请用更新的浏览器进行访问
</video>

</body>
</html>
