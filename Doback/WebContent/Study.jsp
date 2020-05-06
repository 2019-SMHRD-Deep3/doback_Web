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
header a.Study {
	margin-right: 20px;
}
header a.MyStudy {
	margin-right: 20px;
}

.hero {
	min-height: 950px;
}

.hero .hero-content {
	padding-top: 40%;
}

.section-padding {
	padding-top: 100px;
	padding-bottom: 100px;
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

.container {
	color: red;
}

#word>h5 {
	margin-bottom: 30px;
}
</style>
</head>

<body id="top">        <script type="text/javascript">  </script>
           <% String a = "sick";
              String b="thick";
              String c="chic";
              String d="she wears thick and chic shoes eventhough she is sick";
              String e="i can see many trees thick with leaves around the park"; %>
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
                                <!-- <li><a href="#assets" class="btn-white btn-small" style=padding-right:19px;padding-left:19px;>소개</a></li> -->
                                <!-- <li><a href="#assets">나의 강의실</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
                            </ul>
                            <ul class="member-actions" style=padding-top:19px;>
                                <li><a href="Study.jsp" class="Study">학습하기</a></li>
                                <li><a href="MyStudy.jsp" class="MyStudy">나의 학습실</a></li>      
                                  <li><a href="Home.jsp" class="Logout">로그아웃</a></li>                         
                                                        
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
                  녹음한 파일을 올려주세요 
                </h2>
                <p>Please put on your voice record!</p>
                <a href="File.jsp?word=<%=a %>,<%=b %>,<%=c %>,<%=d %>,<%=e %>"  data-toggle="modal" data-target="#file" id=filebtn class="btn btn-ghost btn-accent btn-large">Click</a>
                 <!-- <div class="logo-placeholder floating-logo"><img src="img/sketch-logo.png" alt="Sketch Logo"></div>  -->
            </div>
        </div>
    </section>
    
    <script>
    $('a[href="#filebtn"]').click(function(event) {
      event.preventDefault();
 
      $(this).modal({
        fadeDuration: 250
      });
    });
</script>
    
    
    
    
    
    
    
    <section class="blog-intro section-padding" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>SECTION 1</h3>
                    
                   
                </div>
      
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12 leftcol" id="word">
                   <h5 class = "vocaword"><%=a %></h5>
                    <h5 class = "vocaword"><%=b %></h5>
                    <h5 class = "vocaword"><%=c %></h5>
                    <h5 class = "vocaword" ><%=d %></h5>
                    <h5 class = "vocaword"><%=e %></h5>
                </div>
                
                <div class="col-md-6 col-sm-12 col-xs-12 rightcol">
                
                     <h3 id="warning">파일 업로드 시 주의 할 점</h3>
                     <h5>1.파일은 반드시 ".wav" 파일로 업로드 해주세요.</h5>
                     <h5>2.단어 하나 하나, 문장 하나 하나 세부적인 결과를 보여드리기 위해 파일 녹음을 각각 순서대로
                        업로드 해주세요.</h5>
                     <h5>3.정확한 측정을 위해 조용한 곳에서 녹음한 파일을 업로드 해주세요.</h5>
                     <h5>4.틀리다고 짜증내면 신고합니다. 주의하세요!</h5>
                </div>
            </div>
        </div>
    </section>

        
        
        
    </section>
    </section>

</body>
</html>