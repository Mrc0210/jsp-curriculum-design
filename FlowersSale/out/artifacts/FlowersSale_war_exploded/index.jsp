<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %><%--
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
  </head>
  <body>
<%
  Class.forName("com.mysql.cj.jdbc.Driver");
  String url="jdbc:mysql://127.0.0.1:3306/flowers?useSSL=false&serverTimezone=GMT";
  Connection con=null;
  try {
    con=DriverManager.getConnection(url,"root","root");
    if (con==null)
      out.print("0");
    else
      out.print("1");
  }catch (Exception e){out.print(e.getMessage());}

%>
  </body>
</html>
