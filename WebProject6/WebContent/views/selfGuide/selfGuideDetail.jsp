
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="../../js/jquery-2.0.0.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>    
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../../css/mainheader.css">
  <link rel="stylesheet" href="../../css/mainfooter.css">
  <link rel="stylesheet" href="../../css/maincontents.css">
  <link rel="stylesheet" href="../../css/DetailPage.css">


</head>

<body>


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

      <div class="Dpwrap">

        <div id="Dptitle">${guideOne.selfTitle}</div>

        <div class="Dpimgwrap">
          <div class="Dpimg">
            <img src="/upload/photo/${guideOne.photoRenameFilename}">
          </div>
        </div>

        <div class="Dpinfo">
          <!-- 프로필사진 -->
          <div class="Dpinfoimgwrap">
            <div class="Dpinfoimg">
              <!-- <img src="/img/maincontent9.jpg"> -->
            </div>
          </div>

          <div class="Dpinfoinfo">
            <div>No.${guideOne.selfNo}</div>
            <div>Writer:${guideOne.writerId}</div>
            <div>${guideOne.selfDate}</div>
            <div>Views:${guideOne.selfViews}</div>
            Likes:<div id="like">${guideOne.selfLike}</div>
            <button class="btn"id="likebtn" onclick="fn_like()">like</button>

            <c:if test="${guideOne.writerId ==  member.member_ID}">

            <div class="Dpmodify">
              <form action="/selfGuideLoad" id="modify">
                <input type="hidden" name="selfNo" value="${guideOne.selfNo}">
                <button type="button"  class="btn" onclick="fn_modify();">수정</buttton>
              </form>
              <!--수정하는거  -->
              <script>
                  function fn_modify() {
                    $("#modify").submit();
                  }
                </script>
            </div>

            <div class="Dpremove">
              <form action="/guideRemove" id="remove">
                <input type="hidden" name="selfNo" value="${guideOne.selfNo }">
                <input type="hidden" name="fileName" value="${guideOne.photoRenameFilename}">
                <button type="button" class="btn" onclick="fn_check();">삭제</button>
              </form>
              
              <!-- 삭제하는거 -->
              
            </div>

            </c:if>
          </div>
        </div>

<!--글보기칸-->
        <div class="Dpcontents">
          <div class="Dpcontent">
              ${guideOne.selfContent}
       
          </div>
        </div>


        <div id="DpCommenttitle">
          <h3>댓글</h3>
        </div>
        
        <div class="Dpcomment">
       <div id="Dpcomment1"> ${member.member_ID}
       </div>
       <div id="Dpcomment2">
          <input type="text" id="comment" class="form-control"
          placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" 
          onkeyup="enterkey()">
       </div>
      <input type="submit" value="등록" onclick="fn_commentAdd()" style="display: none;"/>
      
       </div>



      
        <table id="table-tr">
          <c:forEach items="${commentList.comment }" var="commentOne">
           
           <tr>
              <input type="hidden" value="${commentOne.scommentNo }" id="${commentOne.scommentNo }" />
              <td id="td1">${commentOne.memberId }</td>
              <td id="td2">${commentOne.scommentText }</td>
              <td id="td3">${commentOne.scommentDate }</td>
              <c:if test="${commentOne.memberId == member.member_ID }">
                <td id="td4"><button class="btn" id="commentdeletebtn" onclick="fn_commentDelete(${commentOne.scommentNo })">delete</button></td>
              </c:if>
            </tr>                       
          </c:forEach>

        </table>
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
  </div>

  <script>

      // 삭제할건지 물어봐주는거 재확인
      function fn_check() {
           if (confirm("정말 삭제하시겠습니까?")){
        	   $("#remove").submit();
             } else {
                return false;
             }
         }
      
      // 엔터키 누르면 실행될 이벤트를 인식시켜주는 함수
      function enterkey() {
         if (window.event.keyCode == 13) {
            fn_commentAdd()
          }
      }
         //좋아요 누르면 반응하는 함수
         function fn_like() {
            var param = {
               selfNo : "${guideOne.selfNo}",
               memberId :"${member.member_ID}"
            }
   
            $.ajax({
               url : "/likesCount",
               data : param,
               type : "post",
               dataType : "json",
               success : function(data) {
                  var total = data;
                  $("#like").html(total);
               }
            });
         }
   
         //댓글 추가시 ALERT창뜨고 바로 적용
         function fn_commentAdd() {
            
            var param = {
               comment: $("#comment").val(),
               memberId: "${member.member_ID}",
               selfNo: "${guideOne.selfNo}"
            }
            
            
            $.ajax({
               url: "/guideCommentAdd",
               data: param,
               type: "post",
               dataType: "json",
               success : function(data) {
                  var commentOne = data;
                  var html="";

                  html += "<tr><input type='hidden' value='"+commentOne.scommentNo+"' id='"+commentOne.scommentNo+"'/>"; 
                  
                  html += "<td id='td1'>"+commentOne.memberId+"</td>";
                  html += "<td id='td2'>" +commentOne.scommentText +"</td>";
                  html += "<td id='td3'>"+commentOne.scommentDate.substr(8,4)+"-"+commentOne.scommentDate.substr(0,2)
                                +"-"+commentOne.scommentDate.substr(4,2)+"</td>";
                  
                  if(commentOne.memberId == "${member.member_ID}") {
                     html +="<td id='td4'><button class='btn' id='commentdeletebtn' onclick='fn_commentDelete("+commentOne.scommentNo+")'>delete</button></td>";
                  }
                  html += "</tr>";
                  $("#table-tr").append(html);
                  $("#comment").val("");
               }
            });
         }
         
         function fn_textBox() {
            
            $
            
         }
         
         
         // 댓글 삭제
         function fn_commentDelete(scommentNo) {
            
            var param = {
                  scommentNo: scommentNo,
                  selfNo: "${guideOne.selfNo}"
            }
            
            $.ajax({
               url: "/commentDelete",
               data: param,
               type: "post",
               dataType: "json",
               success: function(data) {
                  var guideCommentList = data;
                  var html="";
            
                  for(var i in guideCommentList ) {
                     
                     var commentOne = guideCommentList[i];
                     
                     html += "<tr><input type='hidden' value='"+commentOne.scommentNo+"' id='"+commentOne.scommentNo+"'/>";
                     
                     html += "<td id='td1'>"+commentOne.memberId+"</td>";
                     html += "<td id='td2'>" +commentOne.scommentText +"</td>";
                     html += "<td id='td3'>"+commentOne.scommentDate.substr(8,4)+"-"+commentOne.scommentDate.substr(0,2)
                          +"-"+commentOne.scommentDate.substr(4,2)+"</td>";
                     
                     if(commentOne.memberId == "${member.member_ID}") {
                        html +="<td id='td4'><button class='btn' id='commentdeletebtn' onclick='fn_commentDelete("+commentOne.scommentNo+")'>delete</button></td>";
                     }
                     html += "</tr>";
                  }
                  $("#table-tr").html(html);
                  $("#comment").val("");
               }
            });
         } 
   
      </script>
   


</body>

</html>