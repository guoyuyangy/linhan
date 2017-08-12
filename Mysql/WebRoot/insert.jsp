<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:include page="connection.jsp" flush="true" /> 

<html>
  <head>

    <title>mysql</title>
	
  </head>
  
  <body>
    <%
    Connection con = null;
    Statement sta = null;
    ResultSet res = null;
    String url = "jdbc:mysql:///runoob?&useUnicode=true&characterEncoding=UTF-8";
    String user = "root";
    String password = "root";
    
    /* 连接数据库 */
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, user, password);

    /* 接收参数 */

    String name = new String((request.getParameter("user")).getBytes("ISO-8859-1"),"UTF-8");
    String isql = "insert into websites(name) values('"+ name +"')";
    sta = con.createStatement();
	int flag = sta.executeUpdate(isql);
	if(flag!=0){
		out.print("插入成功");
	}else{
		out.print("插入失败");
	}
	    	
	 sta.close();
	 con.close();
	 %>
	<a href="javascript:" onclick="self.location=document.referrer;">返回上一页</a> 
  </body>
</html>


