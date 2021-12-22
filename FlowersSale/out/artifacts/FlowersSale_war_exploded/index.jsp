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
  </head>
  <body>
  <a href="login.jsp"><input type="button" id="return-login" value="返回登录" /></a>
  <div id="regcontain">
    <form>
      <div id="input-c">
        <span id="s1">用户名</span><input type="text" id="user" name="user"><br>
        <span>手机号码</span><input type="text" id="phone" name="phone"><br>
        <span>密码</span><input type="password" id="password" name="password"><br>
        <span>确认密码</span><input type="password" id="password1" name="password1"><br>
      </div>

      <div id="register-c">
        <input type="submit"value="注册" id="regsiter">
      </div>

    </form>
  </div>
  <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://127.0.0.1:3306/flowers?useSSL=false&serverTimezone=GMT";
    Connection con=null;
    try {
      con= DriverManager.getConnection(url,"root","root");
      Statement st=con.createStatement();
      String user1=request.getParameter("user");
      String password1=request.getParameter("password");
//      Integer phone=Integer.valueOf(request.getParameter("phone"));
      ResultSet rs=st.executeQuery("select * from message_login");
      String sql="insert into message_login(user,password,phone) values('"+user1+"','"+password1+"',null)";
      int flag=st.executeUpdate(sql);
//        if (con==null)
//            out.print("0");
//        else
//            out.print("1");
    }catch (Exception e){out.print(e.getMessage());}
  %>
  </body>
</html>
