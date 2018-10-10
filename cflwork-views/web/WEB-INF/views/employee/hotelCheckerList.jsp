<%--
  Created by IntelliJ IDEA.
  User: chenfeilong
  Date: 2017/10/19
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>审核员列表</title>
    <jsp:include page="../common/bootstraptablecss.jsp"></jsp:include>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <input type="hidden" value="<%=path%>" id="path"/>
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>审核员列表</h5>
        </div>
        <div class="ibox-content">
            <div class="panel panel-default">
                <div class="panel-heading">
                    查询条件
                </div>
                <div class="panel-body form-group" style="margin-bottom:0px;">
                <shiro:hasAnyRoles name="总管理员,管理员">
                    <label class="col-sm-1 control-label" style=" margin-top:5px">分店名称</label>
                    <div class="col-sm-2">
                        <select class="form-control"  id="hotelId_"  required name="hotelId">
                            <option value="">全部</option>
                        </select>
                    </div>
                    <div class="col-sm-2 col-sm-offset-5" style="margin-left: 10px;width: 160px">
                        <button class="btn btn-primary" id="search_btn">查询</button>
                    </div>
                </shiro:hasAnyRoles>
                </div>
            </div>
            <table id="mytab" name="mytab" class="table table-hover"></table>
            <div id="toolbar" class="btn-group pull-right" style="margin-right: 20px;">
                <shiro:hasRole name="店长">
                    <button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#webAdd">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>新增
                    </button>
                </shiro:hasRole>
            </div>
        </div>
    </div>
</div>
<%--网站数据的新增--%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="webAdd" tabindex="-1" role="dialog" aria-labelledby="webAddLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="webAddTitle">
                    新增审核员
                </h4>
            </div>
            <form class="form-horizontal" method="post" id="formadd">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">审核员登录账号：</label>
                        <div class="col-sm-8">
                            <input  name="phone" minlength="2" maxlength="20" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">审核员登录密码：</label>
                        <div class="col-sm-8">
                            <input  name="password" minlength="2" maxlength="20" type="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">真实姓名：</label>
                        <div class="col-sm-8">
                            <input  name="realname" minlength="2" maxlength="20" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份证号：</label>
                        <div class="col-sm-8">
                            <input  name="identity" minlength="2" maxlength="20" type="text" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="submit" id="add" class="btn btn-primary">
                        确认新增
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="checkerUpdate" tabindex="-1" role="dialog" aria-labelledby="webAddLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="update">
                    修改审核员
                </h4>
            </div>
            <form class="form-horizontal" method="post" id="updateform">
                <input type="hidden" name="id" value="" />
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">真实姓名：</label>
                        <div class="col-sm-8">
                            <input  name="realname" minlength="2" maxlength="20" required type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份证号：</label>
                        <div class="col-sm-8">
                            <input  name="identity" minlength="2" maxlength="20" type="text" class="form-control">
                    </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="button" id="updateCheck" class="btn btn-primary">
                        确认修改
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<input type="hidden" value=""  id="deleteId"/>
<jsp:include page="../common/bootstraptablejs.jsp"></jsp:include>
<script src="<%=path%>/static/js/pageJs/hotelCheckerList.js"></script>
</body>
<script>
    $.post(
        "/house/getHotelList",
        function(data) {
            $("#hotelId_").select2({
                data: data
            })
            $("#select2-hotelId_-container").remove();
        },
        "json"
    );
</script>
</html>
