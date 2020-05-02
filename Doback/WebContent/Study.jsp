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
    
    #word > h5{
    margin-bottom: 30px;
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
                                <li><a href="#assets" class="btn-white btn-small" style=padding-right:19px;padding-left:19px;>�Ұ�</a></li>
                                <!-- <li><a href="#assets">���� ���ǽ�</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
                            </ul>
                            <ul class="member-actions" style=padding-top:19px;>
                                <li><a href="Study.jsp" class="Study">�н��ϱ�</a></li>
                                <li><a href="MyStudy.jsp" class="MyStudy">���� �н���</a></li>                               
                                <li><a href="#download" class="Community"></a>������</li>                              
                                </ul>
                         
                        </nav>
                    </div>
                    <div class="navicon">
                        <a class="nav-toggle" href="#"><span></span></a>
                    </div>
                </div>
                
                
            </header>
                 <section class="hero-strip section-padding">
        <div class="container">
            <div class="col-md-12 text-center">
                <h2>
               	������ ������ �÷��ּ��� 
                </h2>
                <p>Please put on your voice record!</p>
                <a href="File.jsp"  data-toggle="modal" data-target="#file" class="btn btn-ghost btn-accent btn-large">Click</a>
                 <!-- <div class="logo-placeholder floating-logo"><img src="img/sketch-logo.png" alt="Sketch Logo"></div>  -->
            </div>
        </div>
    </section>
    <section class="blog-intro section-padding" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>SECTION 1</h3>
                   
                </div>
              
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12 leftcol" id="word">
                   <h5>sick</h5>
                    <h5>thick</h5>
                    <h5>chic</h5>
                    <h5>she wears thick and chic shoes even though she is sick</h5>
                    <h5>I can see many trees thick with leaves around the park</h5>
                </div>
                
                <div class="col-md-6 col-sm-12 col-xs-12 rightcol">
                
                    <h5>SPREADING PIXELS AROUND THE WORLD</h5>
                    <p>Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
            </div>
        </div>
    </section>

        
        
        
    </section>
    </section>

</body>
</html>