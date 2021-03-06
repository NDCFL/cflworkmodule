<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/10/9
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>瑞蓝酒店登录</title>
    <meta name="keywords" content="瑞蓝酒店后端管理系统，超炫酷的登录页面" />
    <meta name="description" content="瑞蓝酒店后端登录管理系统，HTML5美观简洁大气响应式带第三方登录网页模板下载。鼠标经过登录按钮带紫色渐变炫酷动画效果。带有简单的表单验证功能。" />
    <link rel="shortcut icon" href="<%=path%>/static/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/login/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/login/util.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/login/main.css">
</head>
<body>
<div class="limiter">
    <div class="container-login100" style="background-image: url('<%=path%>/static/img/bg-01.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <div  class="login100-form validate-form">
                <div style="color: red;text-align: center;margin: auto;margin-top: -40px;height: 100px">
                    <img src="<%=path%>/static/img/logo_1.jpg" alt="" style="height: 80px;height: 80px">
                </div>
                <div class="tip-error" style="color: red;text-align: center;margin: auto;height: 20px"></div>
                <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
                    <span class="label-input100">用户名</span>
                    <input class="input100" type="text"  placeholder="手机号/邮箱/昵称/用户名/姓名" id="loginphone" name="phone" autocomplete="off">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>
                <div class="wrap-input100 validate-input" data-validate="请输入密码">
                    <span class="label-input100">密码</span>
                    <input class="input100" type="password" placeholder="密码" id="loginpassword" name="password">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <div class="wrap-input100 validate-input m-b-23" style="margin-top: 20px">
                    <span class="label-input100" >人机验证</span>
                    <div id="vaptchaContainer" class="" style="margin-top: 20px">
                        <div class="vaptcha-init-main ipt">
                            <div class="vaptcha-init-loading">
                                <a href="/" target="_blank">
                                    <img src="https://cdn.vaptcha.com/vaptcha-loading.gif" />
                                </a>
                                <span class="vaptcha-text">Vaptcha启动中...</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-right p-t-8 p-b-31">
                    <a href="javascript:">忘记密码？</a>
                </div>
                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn" id="login" class="btn">登 录</button>
                    </div>
                </div>
                <%--<div class="txt1 text-center p-t-54 p-b-20">--%>
                    <%--<span>第三方登录</span>--%>
                <%--</div>--%>
                <%--<div class="flex-c-m">--%>
                    <%--<a href="#" class="login100-social-item bg1">--%>
                        <%--<i class="fa fa-wechat"></i>--%>
                    <%--</a>--%>
                    <%--<a href="#" class="login100-social-item bg2">--%>
                        <%--<i class="fa fa-qq"></i>--%>
                    <%--</a>--%>
                    <%--<a href="#" class="login100-social-item bg3">--%>
                        <%--<i class="fa fa-weibo"></i>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="flex-col-c p-t-25">--%>
                    <%--<a href="javascript:" class="txt2">立即注册</a>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="page_key_name" value="cpc_user_sign_up" />
</body>
<script src="<%=path%>/static/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/login.js" type="text/javascript"></script>
<script src="<%=path%>/static/js/plugins/layer/layer.js"></script>
<script src="https://cdn.vaptcha.com/v2.js"></script>
<script type="text/javascript">
    var pass = false;
    function register(){
        //document.getElementById("pwd").style.display="none";
        //document.getElementById("register").style.display="block";
        layer.alert('该功能暂时不开放', {icon: 6});
    }
    function login(){
        document.getElementById("pwd").style.display="block";
        document.getElementById("register").style.display="none";
    }
    vaptcha({
        //配置参数
        vid: '5ba4ae54fc650e8ed0de13e1',
        type: 'click',
        container: '#vaptchaContainer'
    }).then(function (vaptchaObj) {
        vaptchaObj.render()
        vaptchaObj.listen('pass', function() {
            pass = true;
        })
        $('#login').on('click',function(){
            var loginphone = $("#loginphone").val();
            var loginpassword = $("#loginpassword").val();
            if(loginphone==''){
                $(".tip-error").html("登陆账号不能为空");
                return;
            }
            if(loginpassword==''){
                $(".tip-error").html("密码不能为空");
                return;
            }
            if(!vaptchaObj.getToken() || !pass){
                $(".tip-error").html("人机验证不通过");
                return;
            }
            var load=layer.load(0, {shade: false});
            $.post(
                "/user/getInfo",
                {
                    phone:loginphone,
                    password:loginpassword
                },
                function(data) {
                    $(".tip-error").html(data.message);
                    if(data.message.indexOf("成功")>-1){
                        layer.close(load);
                        location.href="<%=path%>/index";
                    }else{
                        vaptchaObj.reset();
                        $("#loginphone").val("");
                        $("#loginpassword").val("");
                        layer.close(load);
                    }
                },
                "json"
            );
        })
        $('#reset').on('click',function(){
            //执行验证前需要先判断验证实例是否加载完成
            vaptchaObj.reset();
        })
    })

    $("#registerbtn").click(function(){
        alert("asdfs");
        layer.alert('见到你真的很高兴', {icon: 6});
    });

</script>
</html>
