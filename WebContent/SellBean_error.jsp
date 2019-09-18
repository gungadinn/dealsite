<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Garage Sale</title>

    <link href="<%=request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath() %>/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>

<body id="page-top">
<nav class="navbar navbar-expand-lg bg-white fixed-top text-uppercase" id="mainNav">
<div class="container">
<a class="navbar-brand js-scroll-trigger" href="main.jsp"><img src="img/logo.png"></a>
<button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" 
data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
Menu<i class="fa fa-bars"></i></button>
<div class="collapse navbar-collapse" id="navbarResponsive">
<ul class="navbar-nav ml-auto">
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="sell_list.jsp">SELL</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="buy_list.jsp">BUY</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="message_list.jsp">My Page</a>
</li>
</ul>
</div>
</div>
</nav>

<section id="goodslist">
<div>
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">
<div class="card text-center">
<div class="card-header" id="card-header"><h3 id="card-header">글 작성 에러 </h3></div>
<div class="card-body">
<p class="card-text">글 작성 중 에러가 발생했습니다.<br>
관리자에게 문의해주세요.<br>
빠른 시일 내 복구하겠습니다.</p>
<HR>
에러내용 : <%= exception%>
</div>
</div>
</div>
</div>
</div>
<section>

<div class="copyright py-4 text-center text-white">
<div class="container">
<small>Copyright &copy; 고석빈 오수빈 김은경 <br> 충북대학교 소프트웨어학과 오픈소스전문프로젝트 2018</small>
</div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="<%=request.getContextPath() %>/js/jqBootstrapValidation.js"></script>
<script src="<%=request.getContextPath() %>/js/contact_me.js"></script>

<!— Custom scripts for this template —>
<script src="<%=request.getContextPath() %>/js/freelancer.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
    
</body>
</html>