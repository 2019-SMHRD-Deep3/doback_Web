<%@page import="model.HistoryDAO"%>
<%@page import="model.HIstoryDTO"%>
<%@page import="model.EducationDTO"%>
<%@page import="model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.EducationDAO"%>
<%@page import="jdk.internal.org.objectweb.asm.tree.IntInsnNode"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
defs + rect{
   fill : #f3f4f8
}

</style>
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
<link rel="stylesheet"
   href="bower_components/animate.css/animate.min.css">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="js/vendor/jquery-1.11.2.min.js"></script>

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
   padding-top: 100px;
   padding-bottom: 100%;
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
   color: black;
}

table {
   width: 100%;
}

.hero h1 {
   color: black;

}

</style>
</head>

<body id="top">
   <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<%
      //dao��ü ȣ��
      //dao�ȿ��� select���� �޼ҵ� ����
      //���� ���� ArrayList<DTO>
      MemberDTO mdto = (MemberDTO) session.getAttribute("info");
      //ArrayList<EducationDTO> edtoArr = null;
      ArrayList<HIstoryDTO> histo = null;
      if (mdto != null) {
         //EducationDAO edao = new EducationDAO();
         HistoryDAO hdao = new HistoryDAO(); 
         //edtoArr = edao.findEducation(mdto);
         histo = hdao.selectHisto(mdto.getIdnum());
      } else {
         System.out.println("mdto�� null");
      }
   %>


   <section class="hero">
      <section class="navigation">
         <header>
            <div class="header-content">
               <div class="logo"><a href="LoginSuccessHome.jsp"><img src="logo5.png" alt="Sedna logo" border="3px" width="100px" height="100px"></a></div>
               <div class="header-nav">
                  <nav>
                     <ul class="primary-nav">
                        <!-- <li><a href="#assets" class="btn-white btn-small" style=padding-right:19px;padding-left:19px;>�Ұ�</a></li> -->
                        <!-- <li><a href="#assets">���� ���ǽ�</a></li>

                                <li><a href="#blog">Blog</a></li>
                                <li><a href="#download">Download</a></li> -->
                     </ul>
                     <ul class="member-actions" >
                   <li><a href="Study.jsp" class="Study">�м��ϱ�</a></li>   
                                <li><a href="MyStudy.jsp" class="MyStudy">���� �м� ��ȸ</a></li>    
                              <li><a href="Home.jsp" class="Logout" onclick="alert('�α׾ƿ� �Ǿ����ϴ�.');" style="cursor:pointer">�α׾ƿ�</a></li>     
                      

                     </ul>

                  </nav>
               </div>
               <div class="navicon">
                  <a class="nav-toggle" href="#"><span></span></a>
               </div>
            </div>


         </header>
         <section class="features section-padding" id="features">
         <div> <h1 align=center class = "result">���� ���</h1></div>
            <div class="container">
               <div class="row" style="margin:auto;width:1040px; padding-left:110px; box-sizing: content-box;">
                  <div class="col-lg-12" id="ex1_Result1"></div>
                  <br>
                  			<div style = "margin-right: 50px">
								<div class="row" style="display: inline-block;">
								<br>
									<br>
									<h4><%=mdto.getId()%>���� ���絵�� ?
									</h4>
									<br>
									<br>
									<br>
									<h1 style="color: #FF1744;" id = "simtext" style = "text-size : 70px"></h1>
									<br>
									<br>
									<br>
									<br>
							</div>
							<div id="columnchart_values" style="display:inline-block;margin-left: 50px;" ></div>
                    <div id="columnchart_values2" style="display:inline-block; "></div>
                  </div>
               </div>
                <div style = "font-size : 40px; color : black; position: relative; text-align : center;" >���� ���絵</div>
               <div style="width:100%; height:200px; overflow:auto">
                
                  <table id="example-table-1" width="100%"
                     class="table table-bordered table-hover text-center">
                     <thead>
                     
                        <tr>
                           <th>��¥</th>
                           <th>sick</th>
                           <th>thick</th>
                           <th>chic</th>
                           <th>����1</th>
                           <th>����2</th>
                           <th>��ü ���絵</th>
                           <th>����</th>
                           <th>�̱�</th>
                           <th></th>
                        </tr>
                     </thead>
                     <tbody>
                        <%
                           
                           for (int i = 0; i < histo.size(); i++) {
                        %>
                        <tr>
                          <td><%=histo.get(i).getRecorddate()%></td>
                           <td><%=histo.get(i).getWord1()%></td>
                           <td><%=histo.get(i).getWord2()%></td>
                           <td><%=histo.get(i).getWord3()%></td>
                           <td><%=histo.get(i).getSentence1()%></td>
                           <td><%=histo.get(i).getSentence2()%></td>
                           <td><%=histo.get(i).getAllsim()%></td>
                           <td><%=histo.get(i).getUk()%></td>
                           <td><%=histo.get(i).getUs()%></td>
                           <td><button onclick="print(<%=histo.get(i).getAllsim()%>)">����</button></td>
                        </tr>
                     </tbody>
                     
                     <%
                        }
                     %>
                  </table>
                  
      </div>
         </section>



      </section>
   </section>
   
   <script type="text/javascript">
   function print(v){
      document.getElementById('simtext').innerHTML=v+"%";
   }
   </script>
   
   <script type="text/javascript"
      src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
      // ���̺��� Row Ŭ���� �� ��������
      $("#example-table-1 tr").click(
            function() {

               var str = ""
               var tdArr = new Array(); // �迭 ����

               // ���� Ŭ���� Row(<tr>)
               var tr = $(this);
               var td = tr.children();

               // tr.text()�� Ŭ���� Row �� tr�� �ִ� ��� ���� �����´�.

               // �ݺ����� �̿��ؼ� �迭�� ���� ��� ����� �� �� �ִ�.
               td.each(function(i) {
                  tdArr.push(td.eq(i).text());
               });

               console.log("�迭�� ��� �� : " + tdArr);

               // td.eq(index)�� ���� ���� ������ ���� �ִ�.
               var edunum = td.eq(0).text();
               var word1 = td.eq(1).text();
               var word2 = td.eq(2).text();
               var word3 = td.eq(3).text();
               var sentence1 = td.eq(4).text();
               var sentence2 = td.eq(5).text();
               var allsim = td.eq(6).text();
               var uk = td.eq(7).text();
               var us = td.eq(8).text();

              

               
               // ���� ��Ʈ
               google.charts.load('current', {
                 'packages':['corechart']
              }); 
           google.charts.setOnLoadCallback(drawChart2);
           function drawChart2() {
               var data = new google.visualization.DataTable();
               data.addColumn('string','����');
               data.addColumn('number','����');
 
            data.addRows([ 
                ['����',parseInt(uk)],
                ['�̱�',parseInt(us)]
            ]);
            var opt = {
                    'title':'���� vs �̱�',
                    'width':300,
                    'height':300,
                    pieSliceText:'label',
                    legend:'none' 
            };
            var chart = new google.visualization.PieChart(document.getElementById('columnchart_values'));
            chart.draw(data,opt);
        }
               
               
               
               
               
               google.charts.load("current", {
                   packages : [ 'corechart' ]
                });
                google.charts.setOnLoadCallback(drawChart);
                function drawChart() {
                   var data = google.visualization.arrayToDataTable([
                         [ "Element", "Density", {
                            role : "style"} ],
                          [ "sick", parseInt(word1), "#D50000" ],[ "thick", parseInt(word2), "#FFA000" ],
                          [ "chic", parseInt(word3), "#FFFF00" ],[ "����1", parseInt(sentence1), "#76FF03" ],
                          [ "����2", parseInt(sentence2), "#2196F3" ] ]);

                   var view = new google.visualization.DataView(data);
                   view.setColumns([ 0, 1, {
                      calc : "stringify",
                      
                      
                      sourceColumn : 1,
                      type : "string",
                      role : "annotation"
                   }, 2 ]);

                   var options = {
                      title : "�ܾ ���絵",
                      width : 500,
                      height : 300,
                      bar : {
                         groupWidth : "90%"
                      },
                      legend : {
                         position : "none"
                      },
                   };
                   var chart = new google.visualization.ColumnChart(document
                         .getElementById("columnchart_values2"));
                   chart.draw(view, options);
                }
      });
      
   </script>


</body>
</html>