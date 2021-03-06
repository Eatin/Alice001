<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page pageEncoding="UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet"> -->
    <link rel="stylesheet" href="static/css/1styles-merged.css">
    <link rel="stylesheet" href="static/css/1style.min.css">
    <link rel="stylesheet" href="static/css/1custom.css">

    <!--[if lt IE 9]>
      <script src="/static/js/vendor/html5shiv.min.js"></script>
      <script src="/static/js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  <div class="container">
  <!-- START: header -->
  <nav class="navbar navbar-default col-md-12 col-lg-12" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="/main.html">GALLERY</a>
      </div>
    </div>
  </nav>



    <div class="row">
      <div class="col-lg-6 col-md-6">
      <%--<div class="probootstrap-image probootstrap-animate " data-animate-effect="fadeIn" style="background-image: url(../../static/img/index/image_1.jpg)"></div>--%>
        <div>
          <video src="../../static/video/1.mp4 " width="100%" height="100%" controls = controls >你的浏览器不支持，请使用谷歌浏览器</video>
          <br>
        </div>

        <div>
          <h1>Mark<small> 一等奖 </small></h1>
          <h2>System Required</h2>
          <br>
        </div>

        <div>
          <p>这是一段介绍</p>
        </div>
      </div>
      <div class="probootstrap-text col-lg-6 col-md-6">
        <%--<div>--%>
          <%--<video src="../../static/video/1.mp4 " width="100%" height="100%" controls = controls >你的浏览器不支持，请使用谷歌浏览器</video>--%>
        <%--</div>--%>

        <div class="probootstrap-inner probootstrap-animate">
 <%--         //六张图片--%>
<%--          <c:forEach var="ii" begin="1" end="6" >
          <div class="col-lg-4 col-md-4 ">
            <img class="img-thumbnail" src="../../static/img/index1.jpg" height="100%" width="100%" />
          </div>
            </c:forEach>--%>
   <div id="myCarousel" class="carousel slide">
     <!-- 轮播（Carousel）指标 -->
     <ol class="carousel-indicators">
       <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
       <li data-target="#myCarousel" data-slide-to="1"></li>
       <li data-target="#myCarousel" data-slide-to="2"></li>
     </ol>
     <!-- 轮播（Carousel）项目 -->
     <div class="carousel-inner">
       <div class="item active">
         <img src="../../static/img/index1.jpg" alt="First slide">
       </div>

       <c:forEach var="i" begin="2" end="6">

         <div class="item">
           <img src="../../static/img/index1.jpg" alt="Second slide">
         </div>

       </c:forEach>



     </div>
     <!-- 轮播（Carousel）导航 -->
     <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
       <span class="sr-only">Previous</span>
     </a>
     <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
       <span class="sr-only">Next</span>
     </a>
   </div>

<%--          <div class="col-lg-12 col-md-12">
            <h1 class="heading" >Pouring Milk In Hand</h1>
          </div>

          <div class="col-md-12 col-lg12">
            <p >Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
          </div>--%>

          <div class="col-md-12 col-lg12">
            <br>
            <p><a href="/download.html?downloadFile=Lantern.apk" class="btn btn-primary">DOWNLOAD</a></p>
          </div>



        </div>
      </div>
    </div>
    <!-- END section -->
  <footer class="probootstrap-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p>Copyright &copy; 2018.汕头大学移动编程 All rights reserved.</p>
        </div>
      </div>
    </div>
  </footer>
  </div>
  

  <div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-chevron-thin-up"></i></a>
  </div>
  

  <script src="static/js/1scripts.min.js"></script>
  <script src="static/js/1main.min.js"></script>
  <script src="static/js/1custom.js"></script>

  </body>
</html>