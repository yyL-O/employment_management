<%@ page language="java" import="java.util.*,com.job.model.*" pageEncoding="UTF-8"%>

<%
    Company c = (Company)session.getAttribute("company");

 %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>发布岗位</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="heading">
				<div class="headerBox">
					<h1 class="logo">就业网</h1>
					<!--<span class="hadId"></span>-->
					<a href="comMain.jsp" class="mainNav">岗位发布信息</a>
					<div class="com" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
						<div class="comInform" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<img src="images/comPic.png" />
							<span class="comInforName"><%=c.getCompanyName() %></span>
							<span class="triangle"><img src="images/xiasanjiao.png" /></span>
						</div>
						<div id="userChoice" class="userChoiceBox" onmouseover="showBox('userChoice')" onmouseout="hiddenBox('userChoice')">
							<p><a href="comInfor.jsp">公司信息</a></p>
							<p><a href="post.jsp">岗位发布</a></p>
							<p><a href="postHistory.jsp">招聘纪录</a></p>
							<p><a href="login.jsp">退出</a></p>
						</div>
					</div>
				</div>
			</div>
				
			<div class="postBox">
				<div class="postContent">
				<form action="post_ok.jsp" method="post">
					<p><span>岗位名称</span><input type="text" name="jobName" value=""/></p>
					<p><span>工作地点</span><input type="text" name="jobPlace" value=""/></p>
					<p><span>每月薪资</span><input type="text" name="salary" value=""/></p>
					<p><span>岗位职责</span><textarea name="jobTask" value=""></textarea></p>
					<p><span>任职要求</span><textarea name="jobRequire"value=""></textarea></p>
					
					<!-- 发布岗位成功后跳转到公司首页 -->
					<input class="postSub" type="submit" value="发布岗位" />
					<input class="postSub" type="submit" value="取消" />
				 </form>
				</div>
			</div>
		
		</div>
		<div class="footer">
				<p>© Copyright 2013. All Rights Reserved 就业网</p>
			</div>
		</div>
		<script type="text/javascript" src="js/userChoice.js"></script>
	</body>
</html>
