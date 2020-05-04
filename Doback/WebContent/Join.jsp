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

#gender_check{
    padding-left: 50px;
    width: 40px;
    height: 40%;
    border-radius: 6px;
    border: none;
    margin: 15px 0 0;
    margin-top: 1px \9;
    line-height: normal;

}
input[type=radio]{-webkit-box-sizing:border-box;
-moz-box-sizing:border-box;box-sizing:border-box;padding:0}

</style>
</head>
<body>

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
								style="padding-right: 19px; padding-left: 19px;">�߳ʵ� �Ұ�</a></li>
							<!-- <li><a href="#assets">���� ���ǽ�</a></li>
                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
						</ul>
						<ul class="member-actions" style="padding-top: 19px;">
							<li><a href="Login.jsp" class="login">�α���</a></li>
							<li><a href="Join.jsp" class="Join">ȸ������</a></li>
							<li><a href="#find_IdPw" class="find_IdPw">���̵�/���ã��</a></li>
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
					<h3>
						Welcome:)
						</h3>

							<p>��!�ʵ� �� ���Ű� ȯ���մϴ�.</p>

							<form class="signup-form" action="JoinService.do" method="POST" role="form">
								
								<div class="form-input-group">
									<i class="fa fa-envelope"></i><input type="text" name="id"
										class="" placeholder="���̵� �Է�" required>
								</div>
								<div class="form-input-group">
									<i class="fa fa-lock"></i><input type="password" name="pw"
										class="" placeholder="��й�ȣ �Է�" required>
								</div>
								<div class="form-input-group">
									<i class="fa fa-lock"></i><input type="tel" name="tel" class=""
										placeholder="��ȭ��ȣ �Է�" required>

								</div>
								<div class="form-input-group">
									<i class="fa fa-lock"></i><input type="email" name="email"
										class="" placeholder="�̸��� �Է�" required>
								</div>
								<div class="form-input-group" >
									<i class="fa fa-lock"></i>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" value="man" checked id="gender_check">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio"	name="gender" value="woman" checked id="gender_check">��
								</div>
								<button type="submit" class="btn-fill sign-up-btn">ȸ������</button>
							</form>
				</div>
			</div>
		</div>
	</section>
	<!-- ȸ������ ���� �Ǵܿ���   -->
	<script type="text/javascript">
   if("<%=request.getParameter("joinsuccess")%>" == "False") {
			alert("ȸ������ ����");
		}
	</script>

	<script>
		function idCheck(id) { //idCheck(id) �Լ��� id�ߺ�Ȯ�� ��ư�� Ŭ���ϸ� ȣ��Ǵ� �Լ�
			frm = document.regFrm; //��ư�� Ŭ������ �� ȸ������ ���� ���̵� ���� ������ ��� �޽����� ������ ���������� �Է��ϸ�
			//ID �ߺ�üũ(idCheck.jsp)�� ���̵� ���� �Բ� �Ѿ��.
			if (id == "") {
				alert("���̵� �Է��� �ּ���.");
				frm.id.focus();
				return;
			}
			url = "idCheck.jsp?id=" + id;
			window.open(url, "IDCheck", "width=300,height=150");
		}
	</script>


	<!-- Scripts -->
	<section class="intro section-padding">
		<div class="container"></div>
		</div>
	</section>

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