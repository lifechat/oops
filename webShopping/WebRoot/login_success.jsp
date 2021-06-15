<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>校园网上购物系统</title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>

 </head>
<body>

<div id="main_container">
  <div class="top_bar"></div>
	<div id="header">
</div>
    
   <div id="main_content"> 
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
					     <li><a href="GoIndexAction.action" class="nav1">首页</a></li>
                         <li class="divider"></li>
                         <li><a href="showCar.jsp" class="nav5">购物车</a></li>
                         <li class="divider"></li>
                         <c:if test="${empty sessionScope.user.username}">
                         <li><a href="login.jsp" class="nav3">用户登录</a></li>
                         <li class="divider"></li> 
                         <li><a href="register.jsp" class="nav6">用户注册 </a></li>
                         <li class="divider"></li>
                         </c:if>
                         <li><a href="admin/login.jsp" class="nav2">后台管理</a></li>
                         <li class="divider"></li>
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
    
    </div> 
    
    <div class="crumb_navigation">
    导航:  <span class="current"><a href="GoIndexAction.action">首页</a>&gt;&gt;用户登录</span>
    
    </div>
    
    
    <table border="0" cellpadding="0" cellspacing="0" align="center" width=100% height="400px" bgcolor="#e9e7e7">
    <tr>
    <td width=20%>
    
    </td>
    
    <td class="center_content" width=100% height=400px align=center >
   <table>
    <tr>
    <td align="center"><h2>登录成功</h2></td>
    
    </tr>
    <tr><td align=center height=30><h3>正在跳转到主页！若没有跳转<a href=index.jsp>点击这里</a></h3></td>
     </tr>
    </table>
        <% response.setHeader("refresh","2;url=index.jsp"); %>
	</td>
    </tr>
    </table>
   <div class="footer" align="center"><br />&copy;&nbsp;2013&nbsp;|&nbsp;郑州轻工业学院版权所有 			
					<div align=center>
						电话：86-(0)371-63556001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：河南省郑州市高新区科学大道166号
</div>
</body>
</html>
