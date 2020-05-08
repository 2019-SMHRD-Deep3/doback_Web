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
<link rel="stylesheet" href="css/styles.css?after">
<link rel="stylesheet" href="css/queries.css">
<link rel="stylesheet" href="css/etline-font.css">
<link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<!-- <script src="js/vendor/jquery-1.11.2.min.js"></script> -->


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
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
        
        #title h1{
        font-size: 35pt;
      	font-weight: 900;
        }
        
/*         #title{
       padding-top:250px;
        }
 */


</style>

</head>

<body id="top">
<%


%>
	<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<section class="hero">
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
								<!-- <li><a href="#assets" class="btn-white btn-small"
									style="padding-right: 19px; padding-left: 19px;">야너두 소개</a></li> -->
								<!-- <li><a href="#assets">나의 강의실</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
							</ul>
							<ul class="member-actions" style="padding-top: 19px;">
								<li><a href="Login.jsp" class="login">로그인</a></li>
								<li><a href="Join.jsp" class="Join">회원가입</a></li>
				<!-- 				<li><a href="#find_IdPw"  data-toggle="modal" data-target="#modal"  class="find_IdPw">아이디/비번찾기</a></li> -->
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
					<div class="hero-content text-center" id="title">
						<h1>원어민과의 영어 발음 유사도 측정서비스</h1><br>
						<p class="intro">Let's start to measure your English pronounce with us.</p>
						<a href="#" class="btn btn-accent btn-large" data-toggle="modal" data-target="#myModal">측정 해보기</a>
					</div>
				</div>
			</div>
		</div>

		<!--모달창  -->
		   
 
      <!--로그인 이용 모달창 -->
       <div id="myModal" class="modal">
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">로그인시 이용가능합니다.</span></b></span></p>
                
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>
      </div>
 
    </div>
        <!--End Modal-->
 
 
    <script type="text/javascript">
      
        jQuery(document).ready(function() {
                $('#myModal').show();
        });
        //팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        setTimeout(function() { $('#myModal').hide();}, 1500);

      </script>
      
    
		<!--로그인 모달  -->
		<!--  <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<h3 class="white">로그인</h3>
				<form action="" class="popup-form">
					<input type="text" class="form-control form-white" placeholder="아이디 입력">
					<input type="text" class="form-control form-white" placeholder="비밀번호 입력">
					
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="None" id="squaredOne" name="check" />
							<label for="squaredOne"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</form>
			</div>
		</div>
		</div>
		회원가입 모달 
		<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<h3 class="white">회원가입</h3>
				<form action="" class="popup-form">
					<input type="text" class="form-control form-white" placeholder="아이디 입력">
					<input type="text" class="form-control form-white" placeholder="비밀번호 입력">
					<input type="text" class="form-control form-white" placeholder="아메일 입력">
					<input type="text" class="form-control form-white" placeholder="전화번호 입력">
					<input type="text" class="form-control form-white" placeholder="성별">
					<div class="dropdown">
						<button id="dLabel" class="form-control form-white dropdown" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Pricing Plan
						</button>
						<ul class="dropdown-menu animated fadeIn" role="menu" aria-labelledby="dLabel">
							<li class="animated lightSpeedIn"><a href="#">1 month membership ($150)</a></li>
							<li class="animated lightSpeedIn"><a href="#">3 month membership ($350)</a></li>
							<li class="animated lightSpeedIn"><a href="#">1 year membership ($1000)</a></li>
							<li class="animated lightSpeedIn"><a href="#">Free trial class</a></li>
						</ul>
					</div>
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="None" id="squaredOne" name="check" />
							<label for="squaredOne"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</form>
			</div>
		</div>
		</div>
		 -->
		 <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<h3 class="white">아이디/비번 찾기</h3>
				<form action="" class="popup-form">
					<input type="text" class="form-control form-white" placeholder="아이디 입력">
					<input type="text" class="form-control form-white" placeholder="비밀번호 입력">
					<input type="text" class="form-control form-white" placeholder="아메일 입력">
					<input type="text" class="form-control form-white" placeholder="전화번호 입력">
					<input type="text" class="form-control form-white" placeholder="성별">
					<div class="dropdown">
						<button id="dLabel" class="form-control form-white dropdown" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Pricing Plan
						</button>
						<ul class="dropdown-menu animated fadeIn" role="menu" aria-labelledby="dLabel">
							<li class="animated lightSpeedIn"><a href="#">1 month membership ($150)</a></li>
							<li class="animated lightSpeedIn"><a href="#">3 month membership ($350)</a></li>
							<li class="animated lightSpeedIn"><a href="#">1 year membership ($1000)</a></li>
							<li class="animated lightSpeedIn"><a href="#">Free trial class</a></li>
						</ul>
					</div>
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="None" id="squaredOne" name="check" />
							<label for="squaredOne"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</form>
			</div>
		</div>
		</div>
		<!--모달창 여기까지  -->

		<div class="down-arrowfloating-arrow"
			style="text-align: center; margin-top: 150px; font-size: 50px;">
			<a href="#assets"><i class="fa fa-angle-down"></i></a>
		</div>
	</section>
	<section class="features-extra section-padding" id="assets">
		<div class="container">

			<div class="row" align="center">

				<div class="col-md-4 intro-feature">

					<div class="intro-icon">
						<span data-icon="&#xe033;" class="icon"></span>
					</div>

					<div class="intro-content">
						<h5>1. 화면의 단어와 문장을 보고 한 번 따라해보세요!</h5>
						<p>Easily customise Sedna to suit your start up, portfolio or
							product. Take advantage of the layered Sketch file and bring your
							product to life.</p>
					</div>

					<div class="intro-icon">
						<span data-icon="&#xe030;" class="icon"></span>
					</div>

					<div class="intro-content">
						<h5>2. 이제 녹음을 합니다!</h5>
						<p>Designed with modern trends and techniques in mind, Sedna
							will help your product stand out in an already saturated market.</p>
					</div>

					<div class="intro-icon">
						<span data-icon="&#xe046;" class="icon"></span>
					</div>

					<div class="intro-content last">
						<h5>3. 녹음된 파일을 화면에 올려주세요!</h5>
						<p>Built using the latest web technologies like html5, css3,
							and jQuery, rest assured Sedna will look smashing on every device
							under the sun.</p>
					</div>

				</div>

			</div>
			<div class="down-arrowfloating-arrow"
				style="text-align: center; margin-bottom: 50px; font-size: 50px;">
				<a href="#"><i class="fa fa-angle-down"></i></a>
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