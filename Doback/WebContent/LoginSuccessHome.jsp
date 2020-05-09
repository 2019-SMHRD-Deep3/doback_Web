<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Sedna - A Free HTML5/CSS3 website</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="icon" type="image/png" href="favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="image/png" href="favicon-16x16.png" sizes="16x16" />
<link rel="stylesheet" href="css/normalize.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/queries.css">
<link rel="stylesheet" href="css/etline-font.css">
<link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>


<style>
header a.Study {
	margin-right: 20px;
	font-size:17px;
}
header a.MyStudy {
	margin-right: 20px;
	font-size:17px;
}
header a.Logout {
	margin-right: 20px;
	font-size:17px;
}
header { 
    padding:0px !important; 
}


.hero {
	min-height: 950px;
}

.hero .hero-content {
	padding-top: 40%;
}

.section-padding {
	padding-top: 200px;
}

.intro {
	padding-top: 50px;
}

.hero-strip {
	margin-top: 0px;
	padding-top: 80px;
	padding-bottom: 50px;
}

.blog-intro {
	padding-top: 50px;
	padding-bottom: 150px;
}


.hero .hero-content {
    padding-top: 30%;
}
.btn{
background-color: #ff5274;
 color: white;
  border: solid 0px;
}
.btn:hover{
background-color: #ffff;
    color: #ff5274;
    border: solid 0px;
}

#upload{
margin-right:500px;
}



/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}

#title h1 {
	font-size: 35pt;
	font-weight: 900;
}
</style>

</head>

<body id="top">
<%MemberDTO info = (MemberDTO) session.getAttribute("info"); 
String login_id = info.getId();
System.out.print("로그인된 아이디:"+login_id);
System.out.print("로그인된 회원의 번호:"+info.getIdnum());
%> 
	<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<section class="hero">
		<section class="navigation">
			<header>
				<div class="header-content">
					<div class="logo">
						<a href="Home.jsp"><img src="logo5.png" alt="Sedna logo" border="3px" width="100px" height="100px"></a>
					</div>
					<div class="header-nav">
						<nav>
							
							<ul class="member-actions" >
								 <li><a href="Study.jsp" class="Study">학습하기</a></li>   
                                <li><a href="MyStudy.jsp" class="MyStudy">나의 학습실</a></li>                                 
                                <li><a href="LogoutService.do" class="Logout">로그아웃</a></li>
			
							</ul>

						</nav>
					</div>
					<div class="navicon">
						<a class="nav-toggle" href="#"><span></span></a>
					</div>
				</div>
			</header>
		</section>
		
		<div class="container">
			<div class="row">
			
				<div class="col-md-10 col-md-offset-1">
				
					<div class="hero-content text-center" id = "title">
						 
						<h1>딥러닝이 판단하는</h1>
						<h1>원어민과 <span style="color:#FF5274"><%=info.getId() %>님</span>의<span style="color:#FF5274"> 발음유사도</span></h1>
						<h1>지금 바로 측정해보세요!</h1><br><br>
						<a href="Study.jsp" class="btn btn-accent btn-large" style="font-size: 20px">측정 해보기</a>
					</div>
				</div>
			</div>
		</div>

		<div class="down-arrowfloating-arrow"
			style="text-align: center; margin-top: 180px; margin-bottom:30px; font-size: 50px;">
			<a href="#assets"><i class="fa fa-angle-down"></i></a>
		</div>
	</section>
	<section class="features-extra section-padding" id="assets">
	<div class="container">
		<table>
				<tr>
					<td><div class="intro-content" id="upload">
					<img src="upload.png" alt="Sedna logo" border="3px" width="200px" height="160px" > <br><br><br><br>
						<h2 style="font-weight: bold;">녹음한 파일 업로드</h2><br>
						<h3>완벽한 분석을 위해 조용하고 </h3>
						<h3>소음이 적은 곳에서 녹음을 해주세요:)</h3>	<br><br><br><br>
						
					</div></td>

					<td><div class="intro-content" id="ana">
					<img src="speak.png" alt="Sedna logo" border="3px" width="200px" height="180px"> <br><br><br><br>
						<h2  style="font-weight: bold;">내발음은?</h2><br>
						<h3 style="width:5000px;">딥러닝으로 분석한 나의 발음을</h3>
						<h3>차트와 표로 분석결과를 깔끔하게 보여줍니다!</h3> <br><br><br><br>
						
					</div></td>
				</tr>
		</table>
							

		
			<div class="down-arrowfloating-arrow"
				style="text-align: center; margin-bottom: 50px; font-size: 50px;">
				<a href="#"><img src="up.png" style="width:30px; height:40px;"></a>
			</div>
		</div>

	</section>

	<!-- Scripts -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		
	<script>
window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')
	</script>
	
	<script src="bower_components/retina.js/dist/retina.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<script src="bower_components/classie/classie.js"></script>
	<script src="bower_components/jquery-waypoints/lib/jquery.waypoints.min.js"></script>





</body>
</html>