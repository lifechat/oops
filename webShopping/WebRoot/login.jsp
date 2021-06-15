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
  <div align="right"><form name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
    <input id="commodity.commodityName" name="commodity.commodityName" style="font-size: 10pt; color: rgb(85, 85, 85);" onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}" onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}" value="请输入您所要查找的商品名称" size="25" maxlength="30" type="text" />
<input name="搜索" type="submit" value="搜索" />
    </form></div>
    
    <div></div>
    <table width=100% bgcolor="#e9e7e7"><tr><td width=20%></td>
    <td class="center_content" width=100% height=400px align=center >
    
    <form action="UserAction!login.action" name="form" method="post" >
   		<div class="title_box">用户登录</div>  
        <div class="border_box">
		<p>用户名：<input  name="user.username" type="text" style="width:110px" /></p>
		<p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="user.password" type="password" style="width:110px" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<input name="提交" type="submit" value="登录" /><input name="重置" type="reset" value="重置" />
        </p>
        <p align="center">&nbsp;&nbsp;&nbsp;[<a href="register.jsp">新用户注册</a>] &nbsp;[<a href="findPass.jsp" >忘记密码</a>]</p>
        
     </div>  </form>
       
	</td></tr>
    </table>
    
   <div class="footer" align="center"><br />&copy;&nbsp;2013&nbsp;|&nbsp;郑州轻工业学院版权所有 			
					<div align=center>
						电话：86-(0)371-63556001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：河南省郑州市高新区科学大道166号
</div>

</body>
</html>

