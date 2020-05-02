<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<link rel="stylesheet"
	href="bower_components/animate.css/animate.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<style>
header a.Join {
	margin-right: 20px;
}

header a.login {
	margin-right: 20px;
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
</style>

</head>

<body id="top">
 <%
      MemberDTO info = (MemberDTO) session.getAttribute("info");
   %>
	<section class="navigation">
		<header>
			<div class="header-content">
				<div class="logo">
					<a href="Home.jsp"><img src="img/sedna-logo.png"
						alt="Sedna logo"></a>
				</div>
				<div class="header-nav">
					<nav>
						<ul class="primary-nav">
							<li><a href="#assets" class="btn-white btn-small"
								style="padding-right: 19px; padding-left: 19px;">야너두 소개</a></li>
							<!-- <li><a href="#assets">나의 강의실</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
						</ul>
						<ul class="member-actions" style="padding-top: 19px;">
							<li><a href="Login.jsp" class="login">로그인</a></li>
							<li><a href="Join.jsp" class="Join">회원가입</a></li>
						</ul>

					</nav>
				</div>
				<div class="navicon">
					<a class="nav-toggle" href="#"><span></span></a>
				</div>
			</div>
		</header>
	</section>

	<section class="sign-up section-padding text-center" id="download">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<h3>로그인 화면</h3>
					<p>로그인 완료시 마이페이지로 이동합니다.</p>

					<form class="signup-form" action="LoginService.do" method="POST" role="form">
						<div class="form-input-group">
							<i class="fa fa-envelope"></i><input type="text" class=""
								name="id" placeholder="아이디 입력" required>
						</div>
						<div class="form-input-group">
							<i class="fa fa-lock"></i><input type="password" class=""
								name="pw" placeholder="비밀번호 입력" required>
						</div>
						<button type="submit" class="btn-fill sign-up-btn">로그인</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	
		<script language=javascript>
      if ("<%=request.getParameter("success")%>"=="False") {
                 alert('로그인 실패');

      } 
   </script>
		
		<section class="intro section-padding">
		<div class="container"></div>
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
	<script
		src="bower_components/jquery-waypoints/lib/jquery.waypoints.min.js"></script>



</body>
</html>