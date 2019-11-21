<%@page import="member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="../../js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="../../js/HuskyEZCreator.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../../css/mainheader.css">
<link rel="stylesheet" href="../../css/mainfooter.css">
<link rel="stylesheet" href="../../css/Write.css">
<link rel="stylesheet" href="../../css/maincontents.css">

<title>selfGuide.jsp</title>
</head>
<body>
<style>
  .container {
    border: 1px solid;
    padding: 0;
  }

  .contents {
    width: 100%;
    height: auto;
  }
</style>
	<div class="container">
    <div class="header">
      <div id="hedertitle"><a href="#" id="title">PetCom</a></div>
    </div>
    <nav class="navbar navbar-expand-md">
      <a class="navbar-brand" href="#">PetCom</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03"
        aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">Community</a>
            <div class="dropdown-menu" aria-labelledby="dropdown03">
              <a class="dropdown-item" href="#">Picture</a>
              <a class="dropdown-item" href="#">Self Guide</a>
              <a class="dropdown-item" href="#">Event</a>
              <a class="dropdown-item" href="#">QnA</a>
            </div>
          </li>
          <li class="nav-item"> <a class="nav-link" href="#">Store</a></li>
          <li class="nav-item"> <a class="nav-link" href="#">Adopt</a></li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="#">Write</a></li>
          <li class="nav-item"> <a class="nav-link" href="#">Login</a></li>
          <li class="nav-item"> <a class="nav-link" href="#">Join</a></li>

        </ul>

        <form class="form-inline my-2 my-md-0">
          <input class="form-control" type="text" placeholder="Search">
        </form>
      </div>
    </nav>

    <div class="contents">



      <div class="writewrap">
        <form action="/insertGuide" id="frm" method="post" enctype="multipart/form-data">
          <div>
            <h3>Write</h3>
          </div>


          <div class="form-group">
            <label for="writer">
              <h4>Writer</h4>
            </label>
            <input type="text" id="writer" class="form-control" name="writerId" value="${sessionScope.member.member_ID}"
              readonly required>
          </div>

          <div class="form-group">
            <label for="title1">
              <h4>Title</h4>
            </label>
            <input type="text" id="title1" class="form-control" name="title">
          </div>




          <!-- 파일업로드 -->

          <div class="filebox">
            <label for="ex_filename">UpLoad</label>
            <input type="file" name="up_file" id="ex_filename" onchange="fn_loadImg(this)" class="upload-hidden" required>
            <input class="upload-name" value="파일선택" disabled="disabled">
          </div>


          <!--업로드 스크립트-->
          <script>
            $(document).ready(function () {
              var fileTarget = $('.filebox .upload-hidden');

              fileTarget.on('change', function () {
                if (window.FileReader) {
                  var filename = $(this)[0].files[0].name;
                } else {
                  var filename = $(this).val().split('/').pop().split('\\').pop();
                }

                $(this).siblings('.upload-name').val(filename);
              });
            });
          </script>


          <div class="coverimgwrap">
            <div class="coverimg">
              <img id="img-viewer" src="#">
            </div>
          </div>

          <div class="textwrap">
            <textarea id="textAreaContent" name="content"></textarea>
          </div>
          <div class="btnwrap">
            <div class="btn1">
              <input type="button" class="btn" value="등록" id="submitButton">
            </div>
          </div>





        </form>

      </div>



    </div>

    <div class="footer">

      <div style="margin-left: 5%; margin-top:3% ; height: 100%; ">
        <div style="font-size: 13px; font-weight: bolder; color: rgb(0, 0, 0);">CUSTOMER CENTER</div>
        <div style="font-size: 26px; font-weight: bolder; color: deepskyblue;">1544-7513</div>
        <div style="font-size: 12px;">평일 09:00-18:00(점심시간12:00-13:00/주말&공휴일제외)</div>

        <div style="font-size: 12px;">COMPANY. (주) 누리지기 E-MAIL nurijigi@naver.com TEL 1544-7513 ADDRESS. 서울특별시 영등포구 당산동
          BankInfo : 예금주 : (주) 누리지기 신한 110-413-898080 </div>
        <div style="font-size: 12px;">안전거래 서비스고객님의 안전거래를 위해 현금 결제 시, 저희 사이트에서 가입한 구매안전 서비스를 이용할 수 있습니다.</div>
        <div style="font-size: 10px;">Copyright © 2019 by nurijigi, Inc. All rights reserved</div>
      </div>

    </div>
  </div>
  </div>
	
	<script>
		// 내용이 비어있는지 확인해주는 함수
		function validate() {
			var content = $("[name=content]").val();
			if(content.trim().length == 0) {
				alert("내용을 입력하세요");
				return false;
			}
			return true;
		}
	
		// 이미지 업로드시 업로드된 이미지를 미리보기할수있게해줌
		function fn_loadImg(f) {
		 	// console.log(f); // <input~ > 태그자체가 들어있음
			// console.log(f.files); // FileList 파일name, size, 경로 등등 들어있고
			// console.log(f.files[0]); // FileList의 [0]의 자리에는 filename이 들어있음
			if(f.files && f.files[0]) {
				var reader = new FileReader(); // 파일 읽기 메소드
				reader.readAsDataURL(f.files[0]); // 읽기 완료시 onload 이벤트 발생
				reader.onload = function(e) {
					$("#img-viewer").attr("src", e.target.result);
					console.log(e);
					// FileReader 객체의 result에는
					// 파일의 컨텐츠가 담겨있음
				}
			}
		}
		
	</script>

	
	

	<script>
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "textAreaContent",
			sSkinURI: "/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : false,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				fOnBeforeUnload : function(){
					//alert("아싸!");	
				}
			}, //boolean
			fCreator: "createSEditor2"
		});
		
		
		
		// form태그의 submit버튼사용을 하지않고
		// type을 button으로 설정하여 진행할때 사용하는것
		// 이버튼을누르면 submit이 일어나게하고 입력된 글들은 태그들에 묶여있기때문에 그것들을 하나로 묶음
		$("#submitButton").click(function() {
			oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
			$("#frm").submit(); // 서브밋!
		});
		

		
		// 크기조정
		/* /dist/js/service에 가면 SE2BasicCreator.js가 있는데
		위치는 버전에 따라 조금 상이하며
		아래와 같은 내용에서 
		nMinHeight:500,
		nMinWidth:parseInt(elIRField.style.minWidth, 10)||800
		의 값을 수정해주면 창의 크기가 변함
		
		var htDimension = {
				nMinHeight:500,
				nMinWidth:parseInt(elIRField.style.minWidth, 10)||800,
				nHeight:elIRField.style.height||elIRField.offsetHeight,
				nWidth:elIRField.style.width||elIRField.offsetWidth
		}; */
		
		
		// 파일 미리보기
		// 미리보기하기전에 업로드가 완료됨
		function pasteHTML(filepath){
			var sHTML = '<img src="<%=request.getContextPath()%>/upload/testphoto/'+filepath+'" width="300px">';

		    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
		}
	</script>

</body>
</html>