<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<html>
  <head>
        
    <title>产品信息</title>
    
  </head>
  <link rel="stylesheet" type="text/css" href="js/style.css" />
  <body><!--  -->
  
  <div class="center_content">
   	<div class="center_title_bar">最新商品</div>
    	 	<div class="prod_box">
	        	<div class="top_prod_box"></div>
	            <div class="center_prod_box">            
	                 <div class="product_title"> <a href="CommodityAction!findCommodityById.action?commodity.commodityId=1" target="_top">捷易通贝自动充值软件</a></div>
	                 <div class="product_img"><a href="CommodityAction!findCommodityById.action?commodity.commodityId=1" target="_top"><img src="product/k470p-i7 D2.jpg" alt="捷易通贝自动充值软件" title="" border="0" /></a></div>
	                 <div class="prod_price"><span class="reduce">￥500</span> <span class="price">￥240</span></div>                        
	            </div>
	            <div class="bottom_prod_box"></div>             
	            <div class="prod_details_tab">
	            <a href="AddToCarAction?commodity.commodityId=1" title="header=[添加到购物车] body=[&nbsp;] fade=[on]" target="_top"><img src="images/cart.gif" alt="添加到购物车" title="添加到购物车" border="0" class="left_bt" /></a>          
	            <a href="CommodityAction!findCommodityById.action?commodity.commodityId=1" class="prod_details" target="_top">详细</a></div>                     
	        </div>
	        <div class="prod_box">
	        	<div class="top_prod_box"></div>
	            <div class="center_prod_box">            
	                 <div class="product_title"> <a href="CommodityAction!findCommodityById.action?commodity.commodityId=2" target="_top">充值旺铺扶持版</a></div>
	                 <div class="product_img"><a href="CommodityAction!findCommodityById.action?commodity.commodityId=2" target="_top"><img src="product/intel i5 2320.jpg" alt="充值旺铺扶持版" title="" border="0" /></a></div>
	                 <div class="prod_price"><span class="reduce">￥70 </span><span class="price">￥50</span></div>                        
	            </div>
	            <div class="bottom_prod_box"></div>             
	            <div class="prod_details_tab">
	               <a href="AddToCarAction?commodity.commodityId=2" title="header=[添加到购物车] body=[&nbsp;] fade=[on]" target="_top"><img src="images/cart.gif" alt="添加到购物车" title="添加到购物车" border="0" class="left_bt" /></a>        
	            <a href="CommodityAction!findCommodityById.action?commodity.commodityId=2" class="prod_details" target="_top">详细</a></div>                     
	        </div>
	        
   </div>
  </body>
</html>
