<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8"%>


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

    
	%>
	<div> 
    	<table border="1px">
	    	<tr>
	    		<th>id</th>
	    		<th>name</th>    	
	    	</tr>

	    	<%
	    	try{
	    	String key = new String((request.getParameter("content")).getBytes("ISO-8859-1"),"UTF-8");
		    /* String sql = "select * from websites where name like "'"%'"+ key +"'%"; */
		    String sql="select * from websites where name like '%"+key+"%'";
		    sta = con.createStatement();
			res = sta.executeQuery(sql);
		    while(res.next()){
		    	out.print("<tr>");
		    	out.print("<td>" + res.getInt("id") + "</td>"  );
		    	out.print("<td>" + res.getString("name") + "</td>" );
		    	out.print("</tr>");
		    }
	    	
	    	res.close();
	    	sta.close();
	    	con.close();
	    	}catch(Exception e){ out.print(e.toString());}
	    	%>
    	</table>
    </div>

	<a href="javascript:" onclick="self.location=document.referrer;">返回上一页</a> 
  </body>
</html>


