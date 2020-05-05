<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

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
        header a.Study{
    margin-right:20px;
    }
   
    .hero {
    min-height: 950px;
    }
    .hero .hero-content {
    padding-top: 40%;
}
.section-padding {
    padding-top: 100px;
    padding-bottom:100px;
}
.intro{
 padding-top: 50px;
}
.hero-strip {
    margin-top: 0px;
    padding-top:80px;
    padding-bottom:50px;
    }
    .blog-intro{
    padding-top:50px;
    padding-bottom:150px;}
    
    .container{
    color: red;
    }
    
    
    
    </style>
</head>

<body id="top">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <section class="hero">
        <section class="navigation">
            <header>
                <div class="header-content">
                    <div class="logo"><a href="LoginSuccessHome.jsp"><img src="img/sedna-logo.png" alt="Sedna logo"></a></div>
                    <div class="header-nav">
                        <nav>
                            <ul class="primary-nav">
                                <li><a href="#assets" class="btn-white btn-small" style=padding-right:19px;padding-left:19px;>소개</a></li>
                                <!-- <li><a href="#assets">나의 강의실</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
                            </ul>
                            <ul class="member-actions" style=padding-top:19px;>
                            	<li><a href="Study.jsp" class="Study">학습하기</a></li>   
                                <li><a href="MyStudy.jsp" class="MyStudy">나의 학습실</a></li>                               
                                <li><a href="#download" class="Coummunity"></a>고객센터</li>
                               
                                </ul>
                         
                        </nav>
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
                
                
            </header>
                <section class="features section-padding" id="features">
             <div class="container">
            <div class="row">
            	
                <% %>
                
                
              
                <div class="col-md-5 col-md-offset-7">
                <div class="feature-list">
                <h5>나의 발음은?</h5>
                <h4><%for(int i = 1; i <1000; i++){
                	
                	
                } %></h4>
                </div>
                    <div class="feature-list">
                        <h3>나의 회화 분석 이력</h3>
                        <p>당신의 학습 이력을 확인해보세요:)</p>
                        <ul class="features-stack">
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe03e;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>Universal & Responsive</h5>
                                    <p>Sedna is universal and will look smashing on any device.</p>
                                </div>
                            </li>
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe040;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>User Centric Design</h5>
                                    <p>Sedna takes advantage of common design patterns, allowing for a seamless experience for users of all levels.</p>
                                </div>
                            </li>
                            <li class="feature-item">
                                <div class="feature-icon">
                                    <span data-icon="&#xe03c;" class="icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h5>Clean reusable code</h5>
                                    <p>Download and re-use the Sedna open source code for any other project you like.</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        </section>
        
        
        
    </section>
    </section>

</body>
</html>