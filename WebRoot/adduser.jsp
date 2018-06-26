<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" >
<title>添加用户</title>
<link rel="stylesheet" type="text/css" href="Assets/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/common.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/thems.css">
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(function(){
	//自适应屏幕宽度
	window.onresize=function(){ location=location }; 
	
	var main_h = $(window).height();
	$('.hy_list').css('height',main_h-45+'px');
	
	var main_w = $(window).width();
	$('.xjhy').css('width',main_w-40+'px');
	
	
	$(".tabBox .tabCont:first").css("display","block");
	$(".tabBox .tabNav li").click(function(){
		$(this).siblings("li").removeClass("now");
		$(this).addClass("now");
		$(this).parents(".tabBox").find(".tabCont").css("display","none");
		var i=$(this).index();
		$(this).parents(".tabBox").find(".tabCont:eq("+i+")").css("display","block");
	});
	
	$('.xial_m span').click(function(){
		$(this).parent('.xial_m').siblings('.xl_ctn').toggle();
	});
});
</script>
</head>

<body onLoad="Resize();">
<div id="right_ctn">
	<div class="right_m">
		<!--会议列表-->
        <div class="hy_list">
        	<div class="box_t">
            	<span class="name">添加用户</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="Assets/images/icon5.png" alt=""/></a>
                    <a href="">首页</a>
                    <span><img src="Assets/images/icon3.png" alt=""/></span>
                    <a href="">会议管理</a>
                    <span><img src="Assets/images/icon3.png" alt=""/></span>
                    <a href="">会议列表</a>
                </div>
                <!--当前位置-->
            </div>
            <div class="space_hx">&nbsp;</div>
            <!--新建会议-->
            <form action="UserServlet?op=adduser" method="post">
            <div class="xjhy" style="padding:0px;">
                <div class="tabBox_t">
                    <div class="tabBox">
                      <ul class="tabNav">
                        <li class="now"><span>基本配置</span></li>
                        <li><span>高级配置</span></li>
                      </ul>
                        <div class="tabCont" style="display:block;">
                        <!--基本配置-->
                            <ul class="hypz">
                                   <li class="clearfix">
                                    <span class="title">用户名：</span>
                                    <div class="li_r">
                                        <input name="username" type="text">
                                        <i>*</i>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">密码：</span>
                                    <div class="li_r">
                                        <input name="password" type="password">
                                        <i>*</i>
                                    </div>
                                </li>

                                <li class="clearfix">
                                    <span class="title">性别：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="sex" type="radio" value="男">
                                            <em>男</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="sex" type="radio" value="女">
                                            <em>女</em>
                                        </span>
                                    </div>
                                </li>
                                
                                <li class="tj_btn">
                                	<input type="submit" class="adduser" value="添加用户">            
                                </li>
                            </ul>
                        <!--基本配置-->
                        </div>
                        <div class="tabCont">
                        <!--高级配置-->
                            <ul class="hypz gjpz clearfix">
                                <li class="clearfix">
                                    <span class="title">多画面数：</span>
                                    <div class="li_r">
                                        <input class="chang" name="" type="text">
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">主动呼叫终端：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="hjzd" type="radio" value="">
                                            <em>否</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="hjzd" type="radio" value="">
                                            <em>是</em>
                                        </span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">WEB 监控画面数：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不支持</li>
                                                <li>支持</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">终端上端参加混音：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="radio2" type="radio" value="">
                                            <em>否</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="radio2" type="radio" value="">
                                            <em>是</em>
                                        </span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">多画面显示模式：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="radio3" type="radio" value="">
                                            <em>指定</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="radio3" type="radio" value="">
                                            <em>自动</em>
                                        </span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">辅视频码率：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>无</li>
                                                <li>支持</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">组播方式：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不支持</li>
                                                <li>支持</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">辅视频类型：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>私有协议</li>
                                                <li>支持</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">组播IP地址：</span>
                                    <div class="li_r">
                                        <input name="" type="text">
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">辅视频能力：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>H.263_CIF</li>
                                                <li>H.263_CIF</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix zbdk">
                                    <span class="title">组播端口：</span>
                                    <div class="li_r">
                                        <div class="zbdk_ma">
                                        	<span>音频：</span>
                                            <input name="" type="text">
                                        </div>
                                        <div class="zbdk_mb">
                                        	<span>主视频：</span>
                                            <input name="" type="text">
                                            <span>辅视频：</span>
                                            <input name="" type="text">
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">广播源自看：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="radio4" type="radio" value="">
                                            <em>否</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="radio4" type="radio" value="">
                                            <em>是</em>
                                        </span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">是否启用IP自动降速：</span>
                                    <div class="li_r">
                                        <span class="radio">
                                        	<input checked="checked" name="radio5" type="radio" value="">
                                            <em>否</em>
                                        </span>
                                        <span class="radio">
                                        	<input name="radio5" type="radio" value="">
                                            <em>是</em>
                                        </span>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">视频能力：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>H.263_CIF</li>
                                                <li>H.263_CIF</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">音频加密算法：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不支持加密</li>
                                                <li>支持加密</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">音频能力：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>G.711A</li>
                                                <li>G.711A</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">主视频加密算法：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不支持加密</li>
                                                <li>支持加密</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">会议存储：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不存储</li>
                                                <li>存储</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <span class="title">辅视频加密算法：</span>
                                    <div class="li_r xial">
                                        <div class="xial_w">
                                            <div class="xial_m">
                                                <input class="duan" name="" type="text">
                                                <span>&nbsp;</span>
                                            </div>
                                            <ul class="xl_ctn">
                                                <li>不支持加密</li>
                                                <li>支持加密</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="tj_btn">
                                    <a href="">下一步</a>
                                </li>
                            </ul>
                        <!--高级配置-->
                        </div>
                	</div>
                </div>
            </div>
            </form>
            <!--新建会议-->
        </div>
        <!--会议列表-->
    </div>
</div>
</body>
</html>