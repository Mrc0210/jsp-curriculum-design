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
</head>
<body>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://127.0.0.1:3306/flowers?useSSL=false&serverTimezone=GMT";
    Connection con=null;
    try {
        con= DriverManager.getConnection(url,"root","root");
        Statement st=con.createStatement();
        String user=request.getParameter("user");
        String password=request.getParameter("password");
        Integer phone=Integer.valueOf(request.getParameter("phone"));
        ResultSet rs=st.executeQuery("select * from message_login");
        String sql="insert into message_login(user,password,phone) values('"+user+"','"+password+"',"+phone+")";
        int flag=st.executeUpdate(sql);
//        if (con==null)
//            out.print("0");
//        else
//            out.print("1");
    }catch (Exception e){out.print(e.getMessage());}
%>
</body>
</html>
