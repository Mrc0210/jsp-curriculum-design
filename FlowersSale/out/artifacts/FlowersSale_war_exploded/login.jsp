<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: czm20010210
  Date: 2021/12/20
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"/>
</head>
<body>
<a href="index.jsp"><input type="button" id="return-login" value="返回首页" /></a>
<div id="login">
    <form>
        <div id="input-l">
            <span id="s1">用户名</span><input type="text" id="user" name="user"><br>
            <span>密码</span><input type="password" id="password" name="password"><br>
        </div>

        <div id="login-c">
            <input type="submit"value="登录" id="login-1">
            <a href="register.jsp">
                <input type="button" id="to-register" value="注册" />
            </a>
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
        String user=request.getParameter("user");
        String password=request.getParameter("password");
        ResultSet rs=st.executeQuery("select * from message_login");
        while (rs.next())  {
            if (user.equals(rs.getString("user"))&&password.equals(rs.getString("password"))){
                session.setAttribute("user",user);
                session.setAttribute("password",password);
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
            else {
%>
             <script type="text/javascript" language="JavaScript">
                 alert("用户名或密码错误！");
             </script>
<%
            }

        }

//        String sql="insert into message_login(user,password,phone) values('"+user+"','"+password+"',"+phone+")";
//        int flag=st.executeUpdate(sql);
//        if (con==null)
//            out.print("0");
//        else
//            out.print("1");
    }catch (Exception e){}
%>
</body>
</html>
