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
	font-size:17px;
}

header a.login {
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
#assets2{
background-color:#F0E9EB;
}
#usuk{
font-size: 50px;
margin-top:auto;
margin-bottom:100px;
}
#commu{
margin-right:300px;
}

#speaking{
margin-right:250px;
}

#US{
margin-right:300px;
}
#title{
padding-top:250px;
}
#btn_1{
background-color:
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
#typing{
color:black;
font-weight:bold;
font-size:50px;
}
#usuk{
color:black;
font-weight:bold;
font-size:50px;
}




/* div .typed {
	display: inline-block;
	margin: 0;
}

div .typed-cursor {
	font-size: 60px;
	display: inline-block;
	margin: 0 10px;
	color: #00a8ff;
	-webkit-animation-name: flash;
	animation-name: flash;
	-webkit-animation-duration: 1s;
	animation-duration: 1s;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
}

div .row > .typed-cursor  {
		display: none;
	} */
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
		<section class="navigation" style="">
			<header >
				<div class="header-content">
					<div class="logo">
						<a href="Home.jsp" ><img src="logo5.png" alt="Sedna logo" border="3px" width="100px" height="100px"></a>
					</div>
					<div class="header-nav">
						<nav>							
							<ul class="member-actions" >
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
		
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="hero-content text-center" id="title">
						<br><h1>음성인식기술을 활용한</h1><br><br>
						<h1>원어민과 나의 영어 <span style="color:#FF5274">억양 유사도</span>는?</h1><br><br>
						<p class="intro">Let's start to measure native speaker and my English accent similarity service</p><br><br><br>
						<a href="#" class="btn btn-accent btn-large" id="btn_1" data-toggle="modal" data-target="#myModal" style="font-size: 20px">분석 해보기</a>
					</div>
				</div>
			</div>
		</div>
		
		
		
		

		<!--모달창  -->
		   
 
      <!--로그인 이용 모달창 -->
       <div id="myModal" class="modal">
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">로그인시 이용가능합니다.</span></b></span></p>
                
              <a href="Login.jsp"><div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
              <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div></a>
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
      
    
	

		<div class="down-arrowfloating-arrow"
			style="text-align: center; margin-top: 120px; font-size: 50px;">
			<a href="#assets"><i class="fa fa-angle-down"></i></a>
		</div>
		
		
		
		
		
	</section>
	
	
	<!-- 섹션 1  -->
	<section class="features-extra section-padding" id="assets">
		<div class="container">

			<div class="row" align="center">
					<h1 id="typing"></h1>
					<script>
					var x = "당신의 억양은 원어민과 얼마나 유사할까요?" 
				    var i =0;
					function typeWriter(){
						if(i < x.length){
							document.getElementById("typing").innerHTML += x[i];
							i++;
							setTimeout(typeWriter,200);
						}
					}typeWriter();
					</script><br>
				
						<h3>왜 영어 억양이 중요할까요?</h3> <br><br><br><br>
						

<table>
<tr>
					<td><div class="intro-content" id="commu">
					<img src="commu.png" alt="Sedna logo" border="3px" width="200px" height="160px" > <br><br>
						<h3>정확한 의미 전달</h3>
						
					</div></td>

					

					<td><div class="intro-content" id="speaking">
					<img src="speaking.png" alt="Sedna logo" border="3px" width="200px" height="160px"> <br><br>
						<h3>말하기 자신감</h3>
						
					</div></td>
							
							<td><div class="intro-content" id='hearing'>
					<img src="hearing2.png" alt="Sedna logo" border="3px" width="220px" height="160px"> <br><br>
						<h3>듣기 실력 향상</h3>
						
					</div></td>
					
					</tr>
					</table>

				</div>

			</div>
			<div class="down-arrowfloating-arrow"
				style="text-align: center; margin-top:100px; margin-bottom:100px; font-size: 50px;">
				<a href="#assets2"><i class="fa fa-angle-down"></i></a>
			</div>
		</div>

	</section>
	
	<!--섹션 2 -->
		<section class="features-extra section-padding" id="assets2">
		<div class="container">

			<div class="row" align="center" style="margin-bottom: 150px; margin-top:100px;">

					<h1 id="usuk">당신의 억양은 US / UK 어느 쪽에 더 가까울까요?</h1>
				
				<table>
<tr>
					<td><div class="intro-content" id="US">
					<img src="US.png" alt="Sedna logo" border="3px" width="200px" height="160px" > <br><br>
						<h3 style="margin-left: 30px">미국식 억양</h3>
					</div></td>

					<td><div class="intro-content" id="UK">
					<img src="UK.png" alt="Sedna logo" border="3px" width="200px" height="160px"> <br><br>
						<h3 style="margin-left: 30px">영국식 억양</h3>
					</div></td>

					</tr>
					</table>
					</div>
						<div class="down-arrowfloating-arrow"
				style="text-align: center; font-size: 50px;  margin-top:100px; margin-bottom:100px;" >
				<a href="#"><img src="up.png" style="width:30px; height:40px;"></a>
			</div>
					</div>

	</section>
	
	
	
	<!-- 섹션 3  -->
	

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