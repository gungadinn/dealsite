<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    .btn-secondary {
    margin-right: 5px;
    }
    #form-button {
    display : inline-block;
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
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="sell_list.do">SELL</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="buy_list.do">BUY</a>
</li>
<li class="nav-item ml-auto">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="message_list.do">My Page</a>
</li>
<li class="nav-item ml-auto tab_login">
<a class="nav-link py-3 px-0 px-lg-3 rounded" href="logout.do">Logout</a>
</li>
</ul>
</div>
</div>
</nav>

<section id="index">
<div>
<div class="row">
<div class="container">
<div class="col-sm-12">
<div class="card">
<div class="card-header" id="card-header"><h3 id="card-header">${data.item }<span class="badge badge-info">${data.state}</span></h3></div>
<div class="card-body">
<!-- 글 목록 보여주기 -->
<div>
<div class="row">
<div class="col-sm-3">가격 : ${data.price}</div>
<div class="col-sm-2">위치 : ${data.location}</div>
<div class="col-sm-3">작성일 : ${data.time}</div>
<div class="col-sm-2">조회수 : ${data.hit}</div>
<div class="col-sm-2">작성자 : ${data.uid}</div>
</div>
</div><!--row 끝남 -->
<hr/>
<div class="article">

<div class="row">
<div class="col-sm-3">이미지</div>
<div class="col-sm-9"><img src="${data.imagename}" width="300px" height="300px"></div>
</div>
<hr/>
<div class="row">
<div class="col-sm-3">세부사항</div>
<div class="col-sm-9">${data.detail}</div>
</div>

</div>

<hr/>
<div class="text-center">
<button type="submit" class="btn btn-secondary" OnClick="window.location='buy_form.jsp'">글쓰기</button>
<button type="submit" class="btn btn-secondary"  OnClick="window.location='buy_list.do'">목록으로</</button>

<form action="buy_edit.do">
	<button type="submit" class="btn btn-secondary">수정</button>
	<input type="hidden"  name="idx" value="${data.num}">
</form>
<form action="buy_delete.do" id="form-button">
	<button type="submit" class="btn btn-secondary">삭제</button>
	<input type="hidden"  name="idx" value="${data.num}">
</form>
<form action="messeage_write.do" id="form-button">
<button type="submit" class="btn btn-secondary" OnClick="window.location='message_form.jsp'">쪽지 보내기</button>
</form>
     
</div>
</div>
<!-- 글 목록 보여주기  -->
</div> <!-- card body  -->
</div> <!-- card 끝 -->
</div> <!-- col 끝 -->
</div> <!-- container 끝 -->
</div> <!-- row 끝 -->
</div> 
</section>

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