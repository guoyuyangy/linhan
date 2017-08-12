<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8"%>
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