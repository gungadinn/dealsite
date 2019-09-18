<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
a#SendNote {
color : #fff;
}
a#SendNote:hover, a#SendNote:active, a#SendNote:focus {
text-decoration : none;
}
</style>
<head>
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

<!-- 쪽지 리스트 -->
<section id="index">
<div class="container">
<div class="row">

<div class="col-sm-2">
<h3 class="text-center">My Page</h3>
<div class="list-group">
<a href="mypage.do" class="list-group-item list-group-item-action">내 글 목록</a>
<a href="message_list.do" class="list-group-item list-group-item-action">쪽지함</a>
<a href="join_edit.do" class="list-group-item list-group-item-action">회원정보수정</a>
</div>
</div>

<div class="col-sm-10">
<div class="container">
<div class="card">
<div class="card-header" id="card-header"><h4 id="card-header">내 글 목록</h4></div>
<div class="card-body">

<div>
<table class="table table-hover text-center">
<thead>
<th style="width : 10%">번호</th>
<th style="width : 48%">제목</th>
<th style="width : 15%">지역 </th>
<th style="width : 17%">날짜</th>
<th style="width : 10%">조회수</th>
</thead>
<tbody>
<c:forEach items="${list}" var="list">
<tr>
<td>${list.num}</td>
<td><a href="sell_view.do?idx=${list.num}">${list.item}</a></td>
<td>${list.location }</td>
<td>${list.time }</td>
<td>${list.hit }</td>
</tr>
</c:forEach>
<c:forEach items="${list2}" var="list2">
<tr>
<td>${list2.num}</td>
<td><a href="sell_view.do?idx=${list2.num}">${list2.item}</a></td>
<td>${list2.location }</td>
<td>${list2.time }</td>
<td>${list2.hit }</td>
</tr>
</c:forEach>

</tbody>
</table>
</div>


</div>
</div>
</div>
</div>
<!— 쪽지 리스트 끝 —>
</div>
</div>
</section>


<div class="copyright py-4 text-center text-white">
<div class="container">
<small>Copyright &copy; 고석빈 오수빈 김은경 <br> 충북대학교 소프트웨어학과 오픈소스전문프로젝트 2018</small>
</div>
</div>


<!— Bootstrap core JavaScript —>
<script src="<%=request.getContextPath() %>/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!— Plugin JavaScript —>
<script src="<%=request.getContextPath() %>/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<%=request.getContextPath() %>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!— Contact Form JavaScript —>
<script src="<%=request.getContextPath() %>/js/jqBootstrapValidation.js"></script>
<script src="<%=request.getContextPath() %>/js/contact_me.js"></script>

<!— Custom scripts for this template —>
<script src="<%=request.getContextPath() %>/js/freelancer.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
</body>
</html>