<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML>

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
    
    <style>
    body {
    background : url('<%=request.getContextPath() %>/img/bg1.jpeg') no-repeat center center fixed;
    -webkit-background-size : cover;
    -moz-background-size : cover;
    -o-bacground-size : cover;
    background-size : cover;
    }
    .card{
    opacity : 0.9;
    margin-top : 30px;
    word-wrap : normal;
    }
    .card-body {
    padding : 1em 0em;
    }
    .form-group.last {
    margin-bottom : 0px;
    }
    .modal-body {
    display : inline-block;
    margin-left : 0;
    margin-right : 0;
    
    }
    </style>
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
<div class="container">
<div class="row">
<div class="col-md-5 offset-md-7">
<div class="card">
<div class="card-header">
<strong>login</strong>
</div>

<div class="card-body">
<form class="form-horizontal" role="form">

<div class="form-group">
<div class="row">
<label class="col-sm-3 control-label text-right">ID</label>
<div class="col-sm-9 main-form"><input type="text" class="form-control" placeholder="ID"></div>
</div>
</div>

<div class="form-group">
<div class="row">
<label class="col-sm-3 control-label text-right">Password</label>
<div class="col-sm-9 main-form"><input type="password" class="form-control" placeholder="password"></div>
</div>
</div>

<div class="form-group last">
<div class="offset-sm-4 col-sm-8">
<button type="submit" class="btn btn-outline-dark btn-sm">Sign in</button>&nbsp;&nbsp;
<button type="reset" class="btn btn-outline-dark btn-sm">Reset</button>
</div>
</div>

</form>
</div>

<div class="card-footer text-center">
Not Registered?&nbsp;&nbsp;&nbsp;<a href="JoinForm.jsp"><button type="button" class="btn btn-outline-dark" ><b>Sign Up</b></button></a>
</div>
</div> <!-- 카드 끝남 -->
</div>
</div>
</div>
</section>

<!-- Bootstrap core JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="<%=request.getContextPath() %>/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="<%=request.getContextPath() %>/js/jqBootstrapValidation.js"></script>
<script src="<%=request.getContextPath() %>/js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="<%=request.getContextPath() %>/js/freelancer.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
</body>
</html>