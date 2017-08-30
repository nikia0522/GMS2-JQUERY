<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>**Student Detail**</title>
<link rel="stylesheet" href="${ctx}/resources/css/member.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div id="wrapper">
	<header>
	<h1 id="title">STUDENT DETAIL</h1>
	<a id="go_main" href="${ctx}/login.jsp">메인으로 가기</a><br/>
	</header>
	<hr/>
	
	<div id="container">
	<form id="login_box" name="login_box" >
		<img src="${img}Venice.jpg" alt="" style="width:50%;height:50%;"/><br />
		<span id="login_id">ID:</span><input type="text" id="input_id" name="login_id" /> <br />
		<span id="login_pass">PASSWORD:</span><input type="password" id="input_pass" name="pass"/> <br />
		<input type="submit" value="LOGIN" onclick="javascript:loginAlert()"/>
		<input type="reset" value="CANCEL"/>
		<input type="hidden" name="action" value="login">
		<input type="hidden" name="page" value="main">
		<br /><br /><br /><br />
		</form>
	</div>
	<script>
		function loginAlert(){
			var input_id=document.getElementById("input_id").value;
			var input_pass=document.getElementById("input_pass").value;
			if(input_id===""){
				alert('ID를 입력해주세요');
				return false;
			}
			if(input_pass===""){
				alert('PASS를 입력해주세요');
				return false;
			}
			var form=document.getElementById('login_box');
			form.action="${ctx}/common.do" ;
			form.method="post"
			return true;
		}
	</script>
	
<jsp:include page="footer.jsp"/>