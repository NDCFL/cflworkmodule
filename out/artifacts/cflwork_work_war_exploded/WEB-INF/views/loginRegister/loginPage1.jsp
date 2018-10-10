<%--
  Created by IntelliJ IDEA.
  User: chenfeilong
  Date: 2017/10/26
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>瑞蓝酒店后台管理登录</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/static/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=path%>/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/static/css/animate.min.css" rel="stylesheet">
    <link href="<%=path%>/static/css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="<%=path%>/static/css/bootstrapValidator.css" rel="stylesheet">
    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<body class="gray-bg">
<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name">RL</h1>
        </div>
        <form class="m-t" role="form" id="form" omsubmit="return check();">
            <div class="form-group">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入邮箱/手机号/昵称" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入登录密码" required="">
            </div>
            <button type="submit" id="" class="btn btn-primary block full-width m-b">登 录</button>
            <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="<%=path%>/user/regPage">注册一个新账号</a>
            </p>
        </form>
    </div>
</div>
<script src="<%=path%>/static/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/static/js/bootstrap.min.js?v=3.3.5"></script>
<script type="text/javascript" src="<%=path%>/static/js/bootstrapValidator.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/zh_CN.js"></script>
</body>
<script type="text/javascript">
    $(function () {
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                phone: {
                    message: '登录账号验证失败',
                    validators: {
                        notEmpty: {
                            message: '登录账号不能为空'
                        },
                        threshold: 6,
                        remote: {
                            url: '<%=path%>/user/checkLogin',
                            message: '账号不存在',
                            delay :  2000,
                            type: 'POST'
                        }
                    }
                },
                password: {
                    message: '密码验证失败',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '密码只能包含大写、小写、数字和下划线'
                        },
                        threshold: 6,
                        remote: {
                            url: "<%=path%>/user/checkPhoneAndPwd",
                            data: function (validator) {
                                return {
                                    phone: $("#phone").val(),
                                    password: $("#password").val()
                                };

                            },
                            message: '密码输入错误！',
                            delay: 1000
                        }

                    }
                }
            }
        }).on('success.form.bv', function(e) {//点击提交之后
            e.preventDefault();
            location.href="<%=path%>/index";
        });

    });
</script>
<script>
    function check(){
        $.post(
            "<%=path%>/admin/login",
            $("#form").serialise(),
            function(data){
                alert(data.code);
//                if(data.message=="登录成功"){
//                    return true;
//                }else{
//                    return false;
//                }

            }
        );
    }

</script>
</html>