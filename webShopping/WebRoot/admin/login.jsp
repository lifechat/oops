<%@ page language="java" import="javax.servlet.http.*" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>管理员登陆</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.2800.1611" name=GENERATOR>
<LINK href="images/css1.css" type=text/css rel=stylesheet>
<LINK href="images/newhead.css" type=text/css rel=stylesheet>
<STYLE type=text/css>BODY {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(images/bg1.jpg) #cadff0 no-repeat; PADDING-TOP: 0px
}
LI {
	LINE-HEIGHT: 30px; LIST-STYLE-TYPE: none; MARGIN-TOP: 5px; COLOR: #585858; FONT-SIZE: 12px; LIST-STYLE-IMAGE: none
}
#logo {
	MARGIN: 100px auto 15px; WIDTH: 282px; HEIGHT: 40px
}
#in {
	MARGIN: 0px auto; WIDTH: 633px; BACKGROUND: url(images/bg1.png) no-repeat; HEIGHT: 282px
}
#left {
	MARGIN: 80px 0px 0px 77px; WIDTH: 132px; DISPLAY: inline; BACKGROUND: url(img/soft.gif) no-repeat; FLOAT: left; HEIGHT: 143px
}
#right {
	FLOAT: left
}
#right UL {
	MARGIN-TOP: 90px; _margin-top: 80px
}
#right LI {
	HEIGHT: 32px
}
#right SPAN {
	WIDTH: 60px; DISPLAY: block; FLOAT: left
}
.button {
	Z-INDEX: 10; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 120px; BACKGROUND: url(images/inpu_ok.gif) no-repeat; HEIGHT: 30px; COLOR: #ffffff; BORDER-TOP: medium none; BORDER-RIGHT: medium none; _width: 120px
}
#footer {
	POSITION: absolute; TEXT-ALIGN: right; LINE-HEIGHT: 30px; WIDTH: 100%; BOTTOM: 0px; FONT-FAMILY: Arial, Helvetica, sans-serif; HEIGHT: 30px; COLOR: #608caf; FONT-SIZE: 11px
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19403">
</HEAD>
<!--<BODY bgColor=#eef8e0 leftMargin=0 topMargin=0 MARGINWIDTH="0" MARGINHEIGHT="0">

<script>
function check()
{	var name=document.getElementById("username").value;
	var password=document.getElementById("password").value;
if(name==null||name==''){
     alert("用户名不能为空");
 	return false;
     }
    if(password==null||password==''){
     alert("密码不能为空");
 	return false;
    }
}
    </script>
<FORM name=form action=AdminAction!login.action method=post onsubmit="return check();">
<TABLE cellSpacing=0 cellPadding=0 width=1004 border=0>
  <TBODY>
  <TR>
    <TD colSpan=6><IMG height=92 alt="" src="images/crm_1.gif" 
    width=345></TD>
    <TD colSpan=4><IMG height=92 alt="" src="images/crm_2.gif" 
    width=452></TD>
    <TD><IMG height=92 alt="" src="images/crm_3.gif" width=207></TD></TR>
  <TR>
    <TD colSpan=6><IMG height=98 alt="" src="images/crm_4.gif" 
    width=345></TD>
    <TD colSpan=4><IMG height=98 alt="" src="images/crm_5.gif" 
    width=452></TD>
    <TD><IMG height=98 alt="" src="images/crm_6.gif" width=207></TD></TR>
  <TR>
    <TD rowSpan=5><IMG height=370 alt="" src="images/crm_7.gif" 
    width=59></TD>
    <TD colSpan=5><IMG height=80 alt="" src="images/crm_8_1.gif" 
    width=286></TD>
    <TD colSpan=4><IMG height=80 alt="" src="images/crm_9.gif" 
    width=452></TD>
    <TD><IMG height=80 alt="" src="images/crm_10.gif" width=207></TD></TR>
  <TR>
    <TD><IMG height=110 alt="" src="images/crm_11.gif" width=127></TD>
    <TD background=images/crm_12.gif colSpan=6>
      <TABLE id=table1 cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE id=table2 cellSpacing=1 cellPadding=0 width="100%"  border=0><TBODY>
              <TR>
                <TD align=middle width=81><FONT color=#ffffff>用户名：</FONT></TD>
                <TD><INPUT class=regtxt title=请填写用户名 maxLength=16 size=16 
                   name="admin.username" id="username"></TD></TR>
              <TR>
                <TD align=middle width=81><FONT color=#ffffff>密&nbsp; 码：</FONT></TD>
                <TD><INPUT class=regtxt title=请填写密码 type=password maxLength=16 
                  size=16  name="admin.password" id="password"></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD colSpan=2 rowSpan=2><IMG height=158 alt="" 
      src="images/crm_13.gif" width=295></TD>
    <TD rowSpan=2><IMG height=158 alt="" src="images/crm_14.gif" 
      width=207></TD></TR>
  <TR>
    <TD rowSpan=3><IMG height=180 alt="" src="images/crm_15.gif" 
      width=127></TD>
    <TD rowSpan=3><IMG height=180 alt="" src="images/crm_16.gif" 
    width=24></TD>
    <TD><INPUT title=登录后台 type=image height=48 alt="登录后台" width=86 
      src="images/crm_17.gif" name="image" onclick="this.form.submit()"/></TD>
    <TD><IMG height=48 alt="" src="images/crm_18.gif" width=21></TD>
    <TD colSpan=2><A href="../index.jsp"><IMG 
      title=返回首页 height=48 alt="返回首页" src="images/crm_19.gif" width=84 
      border=0></A></TD>
    <TD><IMG height=48 alt="" src="images/crm_20.gif" width=101></TD></TR>
  <TR>
    <TD colSpan=5 rowSpan=2><IMG height=132 alt="" src="images/crm_21.gif" width=292></TD>
    <TD rowSpan=2><IMG height=132 alt="" src="images/crm_22.gif" 
      width=170></TD>
    <TD colSpan=2><IMG height=75 alt="" src="images/crm_23.gif" 
    width=332></TD></TR>
  <TR>
    <TD colSpan=2><IMG height=57 alt="" src="images/crm_24.gif" 
    width=332></TD></TR>
  <TR>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=59></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=127></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=24></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=86></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=21></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=28></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=56></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=101></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=170></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" width=125></TD>
    <TD><IMG height=1 alt="" src="images/spacer.gif" 
  width=207></TD></TR></TBODY></TABLE></FORM>
  </BODY>-->
  <BODY>
  <script>
function check()
{	var name=document.getElementById("username").value;
	var password=document.getElementById("password").value;
if(name==null||name==''){
     alert("用户名不能为空");
 	return false;
     }
    if(password==null||password==''){
     alert("密码不能为空");
 	return false;
    }
}
    </script>
<DIV id=logo></DIV>
<DIV id=in>
<DIV id=left></DIV>
<DIV id=right>
<FORM name=form action=AdminAction!login.action method=post onsubmit="return check();">
<UL>
  <LI><SPAN>用户名：</SPAN> <INPUT style="WIDTH: 192px" onfocus="" type=text 
  name="admin.username" id="username"> </LI>
  <LI><SPAN>密&nbsp;&nbsp;&nbsp; 码：</SPAN> <INPUT style="WIDTH: 192px" 
  type=password name="admin.password"  id="password"> </LI>
  <LI><INPUT class=button value=登陆系统 type=submit name=submit> 
</LI></UL></FORM></DIV></DIV><SPAN 
style="TEXT-ALIGN: center; MARGIN-TOP: 28px; DISPLAY: block; FONT-FAMILY: Arial, Helvetica, sans-serif; COLOR: #999999; FONT-SIZE: 12px" 
id=loginform_stat>&copy;&nbsp;2013|郑州轻工业学院版权所有 			
<DIV align=center>
电话：86-(0)371-63556001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：河南省郑州市高新区科学大道166号</SPAN>
</BODY>
  
  </HTML>
