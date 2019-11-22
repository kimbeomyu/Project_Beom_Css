<!-- 메인 홈페이지  -->
<%-- <%@page import="member.vo.Member"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <% Member mOne = (Member)session.getAttribute("member"); %> --%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/css/mainheader.css">
  <link rel="stylesheet" href="/css/maincontents.css">
  <link rel="stylesheet" href="/css/mainhover.css">
  <link rel="stylesheet" href="/css/mainicon.css">
  <link rel="stylesheet" href="/css/mainmedia.css">
  <link rel="stylesheet" href="/css/mainfooter.css">

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
        <c:choose>
			<c:when test="${session.scope.member.member_ID == null }">
				<li class="nav-item"><a href="/logout">로그아웃</a></li>
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

      <!-- contents1 -->
      <div id="mainimg">
        <div id="mainimg1">
          <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="../img/main.jpg" alt="Los Angeles" style="width: 100%; height: 500px">
              </div>
              <div class="carousel-item">
                <img src="../img/main2.webp" alt="Chicago" style="width: 100%; height: 500px">
              </div>
              <div class="carousel-item">
                <img src="../img/main5.jpg" alt="New York" style="width: 100%; height: 500px">
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>

          </div>
        </div>
      </div>

      <!-- ìì´ì½ì¼ë¡ ì°½ë´ë ¤ì í´ë¹í­ëª© ë³´ê¸°? -->
      <div class="mainicon">
        <div class="iconwrap">
          <div class="icon">
            <img src="../img/ìì´ì½1-1.png">
          </div>

          <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" id="icon1"
            style="font-size: 20px; font-weight: 800;">Photo</button>

          <div class="iconcomment">
            <h6>Petcom's Story
              Happy Daily Life</h6>
          </div>

        </div>


        <div class="iconwrap">
            <div class="icon">
              <img src="../img/ìì´ì½2-1.png">
            </div>
  
            <button type="button" class="btn btn-default" data-toggle="modal" 
            data-target="#myModal2" id="icon2" style="font-size: 20px; font-weight: 800;">KonwHow</button>
            <div class="iconcomment">
              <h6>Share small tips 
                and
                Share small happiness</h6>
            </div>
          </div>


          <div class="iconwrap">
              <div class="icon">
                <img src="../img/ìì´ì½3-1.png">
              </div>
    
              <button type="button" class="btn btn-default" data-toggle="modal" 
              data-target="#myModal3" id="icon3" style="font-size: 20px; font-weight: 800;">Store</button>
              <div class="iconcomment">
               <h6> SHigh quality of Life with Good Merchandise</h6>
              </div>
            </div>

            <div class="iconwrap">
                <div class="icon">
                  <img src="../img/ìì´ì½5-1.png">
                </div>
      
                <button type="button" class="btn btn-default" data-toggle="modal" 
                data-target="#myModal4" id="icon4" style="font-size: 20px; font-weight: 800;">QnA</button>
                <div class="iconcomment">
                  <h6>Get good Knowledge
                      by 
                      Answering Questions</h6>
                </div>
              </div>
      </div>



      <!-- contents2 icon1 ëª¨ë¬ì°½1 -->
      <div class="modal fade" id="myModal" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;PetCom Ranking</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID ì¢ììì</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent2.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID ì¢ììì</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent4.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID ì¢ììì</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent7.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!-- contents2 icon2 ëª¨ë¬ì°½2 -->

      <div class="modal fade" id="myModal2" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;KonwHow</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent9.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent5 .jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent10.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!-- contents2 icon3 ëª¨ë¬ì°½3 -->


      <div class="modal fade" id="myModal3" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;Store</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/ë£¨ì2.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/í¬ë¦¬ë°ë°.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/í¬ë¦¼ìì.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>


      <!--contents2 icon4 ëª¨ë¬ì°½4 -->
      <!--QnA-->
      <div class="modal fade" id="myModal4" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;QnA</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent3.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent6.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--ì´ë¯¸ì§ë¤ì´ê°ê³³-->
                        <div class="ranktop">ê¸ì ëª©</div>
                        <!--íì¤í¸-->
                        <div class="rankbottom">ê¸ì´ì´ID</div>
                        <!--íì¤í¸-->
                        <img src="../img/maincontent8.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!--contents3-->
      <div class="maincontents3">
        <ul>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent1.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent2.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent3.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent4.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent5 .jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent6.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent7.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent8.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent9.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">ì ëª©</div>
                <div class="knowbottom">ìì´ë</div>
                <img src="../img/maincontent10.jpg">
              </div>
            </a>
          </li>
        </ul>








      </div>
    </div>
    <div class="footer">

      <div style="margin-left: 5%; margin-top:3% ; height: 100%; ">
        <div style="font-size: 13px; font-weight: bolder; color: rgb(0, 0, 0);">CUSTOMER CENTER</div>
        <div style="font-size: 26px; font-weight: bolder; color: deepskyblue;">1544-7513</div>
        <div style="font-size: 12px;">íì¼ 09:00-18:00(ì ì¬ìê°12:00-13:00/ì£¼ë§&ê³µí´ì¼ì ì¸)</div>

        <div style="font-size: 12px;">COMPANY. (ì£¼) ëë¦¬ì§ê¸° E-MAIL nurijigi@naver.com TEL 1544-7513 ADDRESS. ìì¸í¹ë³ì ìë±í¬êµ¬ ë¹ì°ë
          BankInfo : ìê¸ì£¼ : (ì£¼) ëë¦¬ì§ê¸° ì í 110-413-898080 </div>
        <div style="font-size: 12px;">ìì ê±°ë ìë¹ì¤ê³ ê°ëì ìì ê±°ëë¥¼ ìí´ íê¸ ê²°ì  ì, ì í¬ ì¬ì´í¸ìì ê°ìí êµ¬ë§¤ìì  ìë¹ì¤ë¥¼ ì´ì©í  ì ììµëë¤.</div>
        <div style="font-size: 10px;">Copyright Â© 2019 by nurijigi, Inc. All rights reserved</div>
      </div>

    </div>
  </div>

</body>

</html>