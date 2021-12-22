<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: czm20010210
  Date: 2021/12/20
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <link rel="stylesheet" type="text/css" href="css/new_file.css"/>
  </head>
  <body>
  <div id="container">
    <!-- 头 -->
    <div id="header">
      <!-- header_1 -->
      <div id="header-1">
        <div id="word1">
						<span id="">
							最美时光
						</span>
          <span id="">
							从LPM开始
						</span>
        </div>
        <div id="word2">
          LPM
        </div>
        <div id="word3">
          <a href="login.jsp">登录/注册&nbsp;</a>&nbsp;<img src="img/index/购物车满.png" style="width: 30px;height: 30px;">
        </div>
      </div>
      <!-- header-2 -->
      <div id="header-2">
        <div id="daohang">
          <ul>
            <li><a href="">首页</a></li>
            <li><a href="">花品</a></li>
            <li><a href="">故事订花</a></li>
            <li><a href="">关于LPM</a></li>
          </ul>
          <!-- <ul>
              <li>HOMEPAGE</li>
              <li>FLOWER</li>
              <li>STORY</li>
              <li>ABOUTLPM</li>
          </ul> -->
        </div>
        <div id="search">
          <input type="text" name="" id="" value="" placeholder="搜索"/>
        </div>
      </div>
      <!-- h-img -->
      <div id="h-img">
        <img src="img/index/floor-bg.png" style="width: 1220px;height: 260px;">
      </div>
    </div>
    <!-- main -->
    <div id="main">
      <div id="main-1">
        <div id="ml1">
          <div id="color">
            鲜花
          </div>
          <div id="pc-1">
            <img src="img/index/pc-1.jpg" style="width:220px ;height:230px ;">
          </div>
          <div id="pc-23">
            <div id="pc-2">
              <img src="img/index/pc-2.jpg" style="width: 150px;height:135px ;">
            </div>
            <div id="pc-3">
              <img src="img/index/pc-3.jpg" style="width: 150px;height:89px ;">
            </div>
          </div>
          <div id="pc-4">
            <img src="img/index/pc-4.jpg" style="width:220px ;height:230px;">
          </div>
        </div>
        <div id="ml2">
          <div id="color">
            永生花
          </div>
          <div id="pc-5">
            <img src="img/index/pc-5.jpg"style="width:190px ;height: 230px;" >
          </div>
          <div id="">
            <div id="pc-678">
              <div><img src="img/index/pc-6.jpg" style="width:130px ;height:130px ;"></div>
              <div><img src="img/index/pc-7.jpg" style="width:130px ;height: 130px;"></div>
              <div><img src="img/index/pc-8.jpg" style="width:130px ;height:130px ;"></div>
            </div>
            <div id="word4"style="width:390px ;height: 50px;background: linear-gradient(180deg, rgba(223, 233, 243, 1) 0%, rgba(255, 255, 255, 1) 100%);line-height: 50px;text-align: center;color: rgba(128, 128, 128, 0.62);;">
              故事订花
            </div>
            <div id="pc-9">
              <img src="img/index/floor-bg.png" style="width:390px ;height: 50px;">
            </div>
          </div>
        </div>
      </div>
      <div id="main-2">
        <div id="word6">
          限时特惠
        </div>
        <div id="pc-th">
          <div><img src="img/index/pc-th1.jpg"style="width: 200px;height: 200px;" ><br><span >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
						</span></div>
          <div><img src="img/index/pc-th2.jpg" style="width: 200px;height: 200px;" ><br><span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
						</span></div>
          <div><img src="img/index/pc-th3.jpg" style="width: 200px;height: 200px;" ><br><span >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价189元
						</span></div>
          <div><img src="img/index/pc-th4.jpg" style="width: 200px;height: 200px;" ><br><span >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价179元
						</span></div>
          <div><img src="img/index/pc-th5.jpg" style="width: 200px;height: 200px;" ><br><span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价169元
						</span></div>
        </div>
      </div>
      <div id="main-3">
        <div id="word6">
          爆款特惠
        </div>
        <div id="pc-th">
          <div><img src="img/index/pc-bk1.jpg"style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
							</span></div>
          <div><img src="img/index/pc-bk2.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
							</span></div>
          <div><img src="img/index/pc-bk3.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价189元
							</span></div>
          <div><img src="img/index/pc-bk4.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价179元
							</span></div>
          <div><img src="img/index/pc-bk5.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价169元
							</span></div>
        </div>
      </div>
    </div>
    <div id="main-4">
      <div id="word6">
        限时特惠
      </div>
      <div id="pc-th">
        <div><img src="img/index/pc-th1.jpg"style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
							</span></div>
        <div><img src="img/index/pc-th2.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价199元
							</span></div>
        <div><img src="img/index/pc-th3.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价189元
							</span></div>
        <div><img src="img/index/pc-th4.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价179元
							</span></div>
        <div><img src="img/index/pc-th5.jpg" style="width: 200px;height: 200px;" ><br><span id="">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售价169元
							</span></div>
      </div>
    </div>
  </div>
  </div>
  <div id="footer">

  </div>

  </body>
</html>
