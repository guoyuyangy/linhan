<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'delete.jsp' starting page</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- <script type="text/javascript">
	
		setTimeout("history.go(-1)", 2000);
	</script> -->
  </head>
  
  <body>
    <%
    Connection con = null;
    Statement sta = null;

    String url = "jdbc:mysql:///runoob?&useUnicode=true&characterEncoding=UTF-8";
    String user = "root";
    String password = "root";
    Class.forName("com.mysql.jdbc.Driver");
   	con = DriverManager.getConnection(url, user, password);
   	int id = Integer.parseInt(request.getParameter("id"));
    String sql = "delete  from websites where id = '"+ id +"'";
    sta = con.createStatement();
	int flag = sta.executeUpdate(sql);
	if(flag!=0){
		out.print("删除成功！");
	}else{
		out.print("删除失败！");
	}

	sta.close();
	con.close();
    %>
    <a href="javascript:" onclick="self.location=document.referrer;">返回上一页</a> 
  </body>
</html>
