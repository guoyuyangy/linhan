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

   
     %>
    <div>
    	<div class="add">
			<h2>增加信息</h2>
			<form action="insert.jsp" method="post">
				<input type="text" name="user" placeholder="输入增加的名字">
				<input type="submit" name="btn" value="增加">
			</form>
		</div>
    	<div class="sea">
			<h2>查询信息</h2>
			<form action="search.jsp" method="post">
				<input type="text" name="content" placeholder="输入要查询的关键字">
				<input type="submit" name="btn" value="查询">
			</form>
		</div>
	    <div class="del">
			<h2>删除信息</h2>
			<form action="delete.jsp" method="post">
				<input type="text" name="id" placeholder="输入要删除的id">
				<input type="submit" name="btn" value="del">
			</form>
		</div>
		<div class="chg">
			<h2>修改信息</h2>
			<form action="change.jsp" method="post">
				<input type="text" name="id" placeholder="输入要修改的id">
				<input type="text" name="user_name" placeholder="输入要修改的内容">
				<input type="submit" name="btn" value="修改">
			</form>
		</div>
    </div>
    <div> 
    	<table border="1px">
	    	<tr>
	    		<th>id</th>
	    		<th>name</th>    	
	    	</tr>

	    	<%
		    sta = con.createStatement();
		    String sql = "select * from websites";
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
	    	%>
    	</table>
    </div>
    
  </body>
</html>
