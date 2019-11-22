<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   	
    <link rel="stylesheet" href="../../css/mainheader.css">
    <link rel="stylesheet" href="../../css/mainfooter.css">
    <link rel="stylesheet" href="../../css/maincontents.css">
    <link rel="stylesheet" href="../../css/MyPage.css">

</head>
<style>
    .container {
        border: 1px solid;
        padding: 0;
    }
</style>

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
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">Community</a>
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
                    
                     <c:choose>
						<c:when test="${not empty sessionScope.member}">
							<li class="nav-item"><a href="/logout">로그아웃</a></li>
							<li class="nav-item"> <a class="nav-link" href="/views/member/myPage.jsp">마이페이지</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"> <a class="nav-link" href="/views/member/login.jsp">Login</a></li>
          					<li class="nav-item"> <a class="nav-link" href="/views/member/join.jsp">Join</a></li>
						</c:otherwise>	
					</c:choose>

                </ul>

                <form class="form-inline my-2 my-md-0">
                    <input class="form-control" type="text" placeholder="Search">
                </form>
            </div>
        </nav>



        <div class="contents">

            <div class="mywrap">

                <div class="myheader">
                    <h3 style="margin-left: 8%; margin-top: 3%; margin-bottom: 2%;display: inline-block;">MyPage</h3>
                    <hr>
                </div>
                <div class="mybody">
                    <div id="myphoto">

                        <div id="myphoto1">
                            <img src="" id="noimg">
                        </div>
                        <script>
                            var noimg = $('#noimg');
                            if ($('#noimg').attr('src') == '') {
                                noimg.attr('src', '../../img2/noimg.png')
                            }
                        </script>


                        <div id="gopage">
                                <div id="mypagememberid">MEMBERID</div>
                                    <button type="button" class="btn btn-default gogo"><a href="/views/member/memberModify.jsp" id="gogo2">MyInfo</a></button>
                                    <button type="button" class="btn btn-default gogo"><a href="#" id="gogo2">My Writting</a></button>
                                    <button type="button" class="btn btn-default gogo"><a href="#" id="gogo2">Order_History</a></button>
                        </div>

                    </div>

                </div>

            </div>
        </div>

        <div class="footer">

            <div style="margin-left: 5%; margin-top:3% ; height: 100%; ">
                <div style="font-size: 13px; font-weight: bolder; color: rgb(0, 0, 0);">CUSTOMER CENTER</div>
                <div style="font-size: 26px; font-weight: bolder; color: deepskyblue;">1544-7513</div>
                <div style="font-size: 12px;">평일 09:00-18:00(점심시간12:00-13:00/주말&공휴일제외)</div>

                <div style="font-size: 12px;">COMPANY. (주) 누리지기 E-MAIL nurijigi@naver.com TEL 1544-7513 ADDRESS. 서울특별시
                    영등포구 당산동
                    BankInfo : 예금주 : (주) 누리지기 신한 110-413-898080 </div>
                <div style="font-size: 12px;">안전거래 서비스고객님의 안전거래를 위해 현금 결제 시, 저희 사이트에서 가입한 구매안전 서비스를 이용할 수 있습니다.</div>
                <div style="font-size: 10px;">Copyright © 2019 by nurijigi, Inc. All rights reserved</div>
            </div>

        </div>
    </div>
    </div>
</body>

</html>