<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language = "javascript">  // �ڹ� ��ũ��Ʈ ����
function deleteCheck()
  {
   var form = document.deleteform;
   
   if( !form.password.value )
   {
    alert( "��й�ȣ�� �����ּ���" );
    form.password.focus();
    return;
   }
 		form.submit();
  }
 </script>
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
<div class="col-sm-6 offset-sm-3">
<div class="card">
<div class="card-header text-center" id="card-header"><h3 id="card-header">����</h3></div>
<div class="card-body">
<!-- ���� -->
<div>
<form name="deleteform">
<table class="table table-hover text-center">

<div class="form-group">
<label for="delete">��й�ȣ : </label>
<input type="password" class="form-control" name="password">
</div>

<div class="text-center">
<button type="submit" class="btn btn-primary" OnClick="javascript:deleteCheck();">����</button>
<button type="reset" class="btn btn-primary" onclick="javascript:history.back(-1)">���</button>
</div>

</table>
</form>
</div>
<!-- ���� �� -->

</div> <!-- card body �� -->
</div> <!-- card ���� -->
</div> <!-- col ���� -->
</div> <!--container ���� -->
</div> <!-- row ���� -->
</div>
</section> 

<!-- footer-->
<div class="copyright py-4 text-center text-white">
<div class="container">
<small>Copyright &copy; ���� ������ ������ <br> ��ϴ��б� ����Ʈ�����а� ���¼ҽ�����������Ʈ 2018</small>
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
    
    
</body>
</html>