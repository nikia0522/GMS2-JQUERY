<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/view/constants/db.jsp" %>
<%@ page import="java.sql.*" %>
<!doctype html>
<%
Class.forName(ORACLE_DRIVER);
Connection conn=DriverManager.getConnection(ORACLE_URL, USERNAME, PASSWORD);
Statement stmt=conn.createStatement();
String sql="SELECT * FROM Member WHERE member_id='o'";
ResultSet rs=stmt.executeQuery(sql);
String findName="";
if(rs.next()){
   findName=rs.getString("name");
}
%>
<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <title>Document</title>
</head>
<body>
   <h1>Hello <%=findName %>!</h1>
</body>
</html>