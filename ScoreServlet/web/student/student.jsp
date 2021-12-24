<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>学生界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="css/nprogress.css">
  <link rel="stylesheet" href="css/admin.css">
  <script src="js/nprogress.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
.li-sty{
	left: 19%;
	height: 30px;
	font-size: 35px;
	cursor: pointer;
	line-height: 80px;
	color: #5a91d7;
}
.li-sty1{
	height: 50px;
	font-size: 40px;
	cursor: pointer;
	line-height: 100px;
	color: aliceblue;
	float:left;
}
.navbar{
	height: 100px;
	margin: 0;
	background-image: linear-gradient( #bf8ca7 20%, #93b5e6 70%);
}
.navbar ul{
	width: 100%;
	height: 100px;
	position: relative;

}
</style>

<script type="text/javaScript" src="js/jquery-1.8.1.js"></script>
<script>
window.onload = function(){
	var oUl = document.getElementsByClassName('nav')[0];
	var aLi = oUl.getElementsByTagName('li');
	for(var i=0;i<aLi.length;i++){
		aLi[i].onclick = function(){
			for(var j in aLi){
				aLi[j].className = '';
			}
			this.className='active';
		}
		
	}
}
</script>
</head>

<body>
	<div class="div_body">
		<nav class="navbar">
			<ul class="nav navbar-nav " style="border-bottom:#517fa4 2px">

				<li class="li-sty" style="font-size: 35px;line-height: 91px;letter-spacing: 0.386em;font-weight: 500;font-style: italic;">学生成绩管理系统<i class="fa fa-magic" aria-hidden="true"></i></li>
				<li class="li-sty1" style="float:right;">
					<a href="ServletLogout" style="color: #bf5454;font-size: 20px;font-weight: 400;font-style: normal;letter-spacing: 0.165em;">退出</a>
				</li>

			</ul>
		</nav>
		<div class="aside">
			<div class="profile">
				<img class="avatar" src="images/pic.jpg">
				<h3 class="name">${username}</h3>
			</div>
			<ul class="nav">
				<li>
					<a  href="#menu-info" data-toggle="collapse">
						<i class="fa fa-thumb-tack"></i>个人信息<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-info" class="collapse">
						<li><a href="ServletselectPwd" target="mainRight">查询登陆密码</a></li>
						<li><a href="ServletStudentInfo" target="mainRight">查询个人信息</a></li>
						<li><a href="ServletSelectStudentInfo" target="mainRight">修改个人信息</a></li>
					</ul>
				</li>
				<li>
					<a href="#menu-grades" data-toggle="collapse">
						<i class="fa fa-cogs"></i>成绩管理<i class="fa fa-angle-right"></i>
					</a>
					<ul id="menu-grades" class="collapse">
						<li><a href="ServletFindStudentScore" target="mainRight">成绩信息查看</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="div_right">
			<iframe frameBorder="0" id="main" 
			name="mainRight" scrolling="yes" src="main.jsp"
			style="HEIGHT: 130%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1"></iframe>
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>

