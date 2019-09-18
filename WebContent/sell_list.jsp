<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
    .card-footer {
    background-color : #fff;
    }
    
    .page-link {
    color : #000;
    }
    .btn-outline-dark:hover, .btn-outline-dark:focus, .btn-outline-dark:active {
	background-color : #000;
	color : #fff;
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


<section id="goodslist">
<div>
<div class="row">
<div class="container">
 <p>${id}님 환영합니다!</p>
<div class="col-sm-12">
<div class="card">
<div class="card-header" id="card-header"><h3 id="card-header">판매글 목록</h3></div>
<div class="card-body">

<!-- 글 목록 -->
<div>
<table class="table table-hover text-center">
<thead>
<th style="width : 10%">번호</th>
<th style="width : 48%">제목</th>
<th style="width : 15%">지역 </th>
<th style="width : 17%">날짜</th>
<th style="width : 10%">조회수</th>
</thead>
<c:forEach items="${list}" var="list">
<tbody>
<tr>
<td>${list.num }</td>
<td><a href="sell_view.do?idx=${list.num}">${list.item}</a></td>
<td>${list.location }</td>
<td>${list.time }</td>
<td>${list.hit }</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<!-- 글 목록 끝 -->

<div class="card-footer">
<button type="button" class="btn btn-outline-dark pull-right" onclick="window.location='sell_form.jsp'">글쓰기</button>
<ul class="pagination justify-content-center">
<li class="page-item">
<a class="page-link" href="#" aria-label="Previous">
<span aria-hidden="true">&laquo;</span>
<span class="sr-only">Previous</span>
</a>
</li>
<li class="page-item"><a class="page-link" href="sell_list.do">1</a></li>
<li class="page-item">
<a class="page-link" href="#" aria-label="Next">
<span aria-hidden="true">&raquo;</span>
<span class="sr-only">Next</span>
</a>
</li>
</ul>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</section>

<!-- footer-->
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

    <!-- Custom scripts for this template -->
    <script src="<%=request.getContextPath() %>/js/freelancer.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
    
    <!— 페이지 자동 이동 —>
    <script src="<%=request.getContextPath() %>/js/jquery.twbsPagination.js"></script>
    
    <script type="text/javascript">
//https://esimakin.github.io/twbs-pagination/#page-18
 
 
    $('#pagination').twbsPagination({
        totalPages: 5,    //총 페이지 갯수
        visiblePages: 5,    //보여줄 페이지
        onPageClick: function (event, page) {
            console.log(event);
console.log(page);
        }
    });
 
</script>
</body>
</html>