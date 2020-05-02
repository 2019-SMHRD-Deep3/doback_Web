<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<HTML>
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
    
    
    
    
    </style>
</head>

<BODY>
<script src="http://code.jquery.com/jquery-latest.js"></script>
 
<script type="text/javascript">
	


 
    // ���� ����Ʈ ��ȣ
    var fileIndex = 0;
    // ����� ��ü ���� ������
    var totalFileSize = 0;
    // ���� ����Ʈ
    var fileList = new Array();
    // ���� ������ ����Ʈ
    var fileSizeList = new Array();
    // ��� ������ ���� ������ MB
    var uploadSize = 50;
    // ��� ������ �� ���� ������ MB
    var maxUploadSize = 500;
 
    $(function (){
        // ���� ��� �ٿ�
        fileDropDown();
    });
 
    // ���� ��� �ٿ�
    function fileDropDown(){
        var dropZone = $("#dropZone");
        //Drag��� 
        dropZone.on('dragenter',function(e){
            e.stopPropagation();
            e.preventDefault();
            // ��Ӵٿ� ���� css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('dragleave',function(e){
            e.stopPropagation();
            e.preventDefault();
            // ��Ӵٿ� ���� css
            dropZone.css('background-color','#FFFFFF');
        });
        dropZone.on('dragover',function(e){
            e.stopPropagation();
            e.preventDefault();
            // ��Ӵٿ� ���� css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('drop',function(e){
            e.preventDefault();
            // ��Ӵٿ� ���� css
            dropZone.css('background-color','#FFFFFF');
            
            var files = e.originalEvent.dataTransfer.files;
            if(files != null){
                if(files.length < 1){
                    alert("���� ���ε� �Ұ�");
                    return;
                }
                selectFile(files)
            }else{
                alert("ERROR");
            }
        });
    }
 
    // ���� ���ý�
    function selectFile(files){
        // �������� ���
        if(files != null){
            for(var i = 0; i < files.length; i++){
                // ���� �̸�
                var fileName = files[i].name;
                var fileNameArr = fileName.split("\.");
                // Ȯ����
                var ext = fileNameArr[fileNameArr.length - 1];
                // ���� ������(���� :MB)
                var fileSize = files[i].size / 1024 / 1024;
                
                if($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0){
                    // Ȯ���� üũ
                    alert("��� �Ұ� Ȯ����");
                    break;
                }else if(fileSize > uploadSize){
                    // ���� ������ üũ
                    alert("�뷮 �ʰ�\n���ε� ���� �뷮 : " + uploadSize + " MB");
                    break;
                }else{
                    // ��ü ���� ������
                    totalFileSize += fileSize;
                    
                    // ���� �迭�� �ֱ�
                    fileList[fileIndex] = files[i];
                    
                    // ���� ������ �迭�� �ֱ�
                    fileSizeList[fileIndex] = fileSize;
 
                    // ���ε� ���� ��� ����
                    addFileList(fileIndex, fileName, fileSize);
 
                    // ���� ��ȣ ����
                    fileIndex++;
                }
            }
        }else{
            alert("ERROR");
        }
    }
 
    // ���ε� ���� ��� ����
    function addFileList(fIndex, fileName, fileSize){
        var html = "";
        html += "<tr id='fileTr_" + fIndex + "'>";
        html += "    <td class='left' >";
        html +=         fileName + " / " + fileSize + "MB "  + "<a href='#' onclick='deleteFile(" + fIndex + "); return false;' class='btn small bg_02'>����</a>"
        html += "    </td>"
        html += "</tr>"
 
        $('#fileTableTbody').append(html);
    }
 
    // ���ε� ���� ����
    function deleteFile(fIndex){
        // ��ü ���� ������ ����
        totalFileSize -= fileSizeList[fIndex];
        
        // ���� �迭���� ����
        delete fileList[fIndex];
        
        // ���� ������ �迭 ����
        delete fileSizeList[fIndex];
        
        // ���ε� ���� ���̺� ��Ͽ��� ����
        $("#fileTr_" + fIndex).remove();
    }
 
    // ���� ���
    function uploadFile(){
        // ����� ���� ����Ʈ
        var uploadFileList = Object.keys(fileList);
 
        // ������ �ִ��� üũ
        if(uploadFileList.length == 0){
            // ���ϵ�� ���â
            alert("������ �����ϴ�.");
            return;
        }
        
        // �뷮�� 500MB�� ���� ��� ���ε� �Ұ�
        if(totalFileSize > maxUploadSize){
            // ���� ������ �ʰ� ���â
            alert("�� �뷮 �ʰ�\n�� ���ε� ���� �뷮 : " + maxUploadSize + " MB");
            return;
        }
            
        if(confirm("��� �Ͻðڽ��ϱ�?")){
            // ����� ���� ����Ʈ�� formData�� ������ �Է�
            var form = $('#uploadForm');
            var formData = new FormData(form);
            for(var i = 0; i < uploadFileList.length; i++){
                formData.append('files', fileList[uploadFileList[i]]);
            }
            
            $.ajax({
                url:"FileHouse.jsp",
                data:formData,             
                type:'POST',
                enctype:'multipart/form-data',
                processData:false,
                contentType:false,
                dataType:'json',
                cache:false,
                success:function(result){
                    if(result.data.length > 0){
                        alert("����");
                        location.reload();
                    }else{
                        alert("����");
                        location.reload();
                    }
                }
            });
        }
    }
</script>
       <div id="file" class="modal" >
      <div class="modal-content" >
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">File Drop</span></b></span></p>
                               <form name="uploadForm" id="uploadForm" enctype="multipart/form-data" method="post">
        <table class="table" width="100%" border="1px">
            <tbody id="fileTableTbody">
                <tr>
                    <td id="dropZone">
                        ������ �巡�� �ϼ���
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
        
    <a href="#" onclick="uploadFile(); return false;" class="btn bg_01">���� ���ε�</a>
           <a href="Study.jsp">  <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
               <span class="pop_bt" style="font-size: 13pt;" >
                  �ݱ�
                </span>
            </div></a>
      </div>
 
    </div>
    <script type="text/javascript">
      
        jQuery(document).ready(function() {
                $('#file').show();
        });
        //�˾� Close ���
        function close_pop(flag) {
             $('#file').hide();
        };
    
      </script>
    
   
</BODY>
</HTML>
 

