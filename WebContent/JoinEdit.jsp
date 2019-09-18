<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8">
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
    
    <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
        }
    </script>
    
    <style>
    #card-footer {
    background-color : #fff;
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
</ul>
</div>
</div>
</nav>

<section id="goodslist">
<div>
<div class="row">
<div class="container">
<div class="col-sm-8 offset-sm-2">
<form method="post" action="join_edit2.do" name="userInfo" onsubmit="return checkValue()">
 <input type=hidden name="action" value="insert">
<div class="card">
<div class="card-header text-center" id="card-header"><h3 id="card-header">회원정보 수정 </h3></div>
<div class="card-body">

<!-- 회원가입 시작 -->
<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->

<div class="form-group row">
<label for="userid" class="col-sm-2">아이디</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="id" value="${data.id}">
</div>
</div>

<div class="form-group row">
<label for="userpw" class="col-sm-2">비밀번호</label>
<div class="col-sm-10">
<input type="password" class="form-control" name="password">
</div>
</div>

<div class="form-group row">
<label for="userpwagain" class="col-sm-2">비밀번호 확인</label>
<div class="col-sm-10">
<input type="password" class="form-control" name="passwordcheck">
</div>
</div>

<div class="form-group row">
<label for="username" class="col-sm-2">이름</label>
<div class="col-sm-10">
<input type="text" class="form-control"  name="name" value="${data.name}">
</div>
</div>

<div class="form-group row">
<label for="username" class="col-sm-2">성별</label>
<div class="col-sm-10">
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio"name="gender" value="여 " checked>
  <label class="form-check-label" for="radiofemale"  >
    여
  </label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="gender"value="남 ">
  <label class="form-check-label" for="radiomale"  >
    남
  </label>
</div>
</div>
</div>

</div>

<!--  <input type="email" class="form-control" id="inputEmail" placeholder="">  -->


<div class="form-group row">
  <label for="inputEmail" class="col-sm-2">휴대전화</label>
  <div class="col-sm-10">
  <input type="text" class="form-control" name="phone" value="${data.phone }">
</div>
</div>

<div class="form-group row">
  <label for="inputAddress2" class="col-sm-2">주소</label>
  <div class="col-sm-10">
  <input type="text" class="form-control" name="address" value="${data.address }">
</div>
</div>
</div> <!-- card body 끝 -->

<div class="card-footer text-center" id="card-footer">
<button type="submit" class="btn btn-primary">수정하기 </button>
</div>

</div> <!-- card 끝남 -->
</form>
<!-- 회원가입 끝 -->
</div> <!-- col 끝남 -->
</div> <!--container 끝남 -->
</div> <!-- row 끝남 -->
</div>
</section>

<!-- 풋터 -->
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

<!— Contact Form JavaScript —>
<script src="<%=request.getContextPath() %>/js/jqBootstrapValidation.js"></script>
<script src="<%=request.getContextPath() %>/js/contact_me.js"></script>

<!— Custom scripts for this template —>
<script src="<%=request.getContextPath() %>/js/freelancer.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
</body>
</html>