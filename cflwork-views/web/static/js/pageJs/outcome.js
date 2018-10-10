//生成用户数据
$('#mytab').bootstrapTable({
    method: 'post',
    contentType: "application/x-www-form-urlencoded",//必须要有！！！！
    url: "/outcome/outcomeList",//要请求数据的文件路径
    toolbar: '#toolbar',//指定工具栏
    striped: true, //是否显示行间隔色
    dataField: "res",
    sortable: true, //是否启用排序 sortOrder: "ID asc",
    sortOrder: "ID asc",
    pagination: true,//是否分页
    queryParamsType: 'limit',//查询参数组织方式
    queryParams: queryParams,//请求服务器时所传的参数
    sidePagination: 'server',//指定服务器端分页
    pageNumber: 1, //初始化加载第一页，默认第一页
    pageSize: 10,//单页记录数
    pageList: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],//分页步进值
    showRefresh: true,//刷新按钮
    showColumns: true,
    clickToSelect: true,//是否启用点击选中行
    toolbarAlign: 'right',//工具栏对齐方式
    buttonsAlign: 'right',//按钮对齐方式
    toolbar: '#toolbar', search: true,
    uniqueId: "id",                     //每一行的唯一标识，一般为主键列
    showExport: true,
    exportDataType: 'all',
    columns: [
        {
            title: '全选',
            field: 'select',
            //复选框
            checkbox: true,
            width: 25,
            align: 'center',
            valign: 'middle'
        },
        {
            field: 'hotelVo.title',
            title: '所属酒店',
            align: 'center',
            sortable: true
        },
        {
            field: 'cashSubjectVo.title',
            title: '所属科目',
            align: 'center',
            sortable: true
        },
        {
            field: 'outcommeName',
            title: '支出名称',
            align: 'center',
            sortable: true
        },
        {
            field: 'remark',
            title: '支出备注',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                return '<a   data-toggle="modal" title="点击查看备注" alt="点击查看备注" data-id="\'' + row.id + '\'" data-target="#remark_modal" onclick="return remarks(\'' + value + '\')" style="color: #0d8ddb">点击查看备注</a>';
            }
        },
        {
            field: 'startTime',
            title: '支出时间',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                return formattimes(row.startTime)+"~"+formattimes(row.endTime);
            }
        },
        {
            field: 'money',
            title: '支出总金额',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                return '<span style="color: #0d8ddb" >￥'+value+'</span>';
            }
        },
        {
            field: 'dayMoney',
            title: '日支出金额',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                return '<span style="color: #0d8ddb" >￥'+value+'</span>';
            }
        },
        {
            field: 'outcomeStatus',
            title: '支出结算状态',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                if (value == 0) {
                    //表示启用状态
                    return '<span style="color: #0d8ddb" >已支付</span>';
                } else {
                    //表示启用状态
                    return '<span style="color: red">未支付</span>';
                }
            }
        },
        {
            field: 'isActive',
            title: '状态',
            align: 'center',
            sortable: true,
            formatter: function (value, row, index) {
                if (value == 0) {
                    //表示启用状态
                    return '<span style="color: #0d8ddb" >启用</span>';
                } else {
                    //表示启用状态
                    return '<span style="color: red">停用</span>';
                }
            }
        },
        {
            field: 'createTime',
            title: '创建时间',
            align: 'center',
            sortable: true,
            formatter: function (value) {
                return formattime(value);
            }
        },
        {
            title: '操作',
            align: 'center',
            field: '',
            formatter: function (value, row, index) {
                var e = '<a title="编辑" href="javascript:void(0);" id="outcome"  data-toggle="modal" data-id="\'' + row.id + '\'" data-target="#myModal" onclick="return edit(\'' + row.id + '\')"><i class="glyphicon glyphicon-pencil" alt="修改" style="color:green">修改</i></a> ';
                var d = '<a title="删除" href="javascript:void(0);" onclick="del(' + row.id + ',' + row.isActive + ')"><i class="glyphicon glyphicon-trash" alt="删除" style="color:red">删除</i></a> ';
                var f = '';
                if (row.isActive == 1) {
                    f = '<a title="启用" href="javascript:void(0);" onclick="updatestatus(' + row.id + ',' + 0 + ')"><i class="glyphicon glyphicon-ok-sign" style="color:green">启用</i></a> ';
                } else if (row.isActive == 0) {
                    f = '<a title="停用" href="javascript:void(0);" onclick="updatestatus(' + row.id + ',' + 1 + ')"><i class="glyphicon glyphicon-remove-sign"  style="color:red">停用</i></a> ';
                }

                return e + d + f;
            }
        }
    ],
    locale: 'zh-CN',//中文支持,
    responseHandler: function (res) {
        if (res) {
            return {
                "res": res.rows,
                "total": res.total
            };
        } else {
            return {
                "rows": [],
                "total": 0
            };
        }
    }
})

//请求服务数据时所传参数
function queryParams(params) {
    var title = "";
    $(".search input").each(function () {
        title = $(this).val();
    });
    return {
        //每页多少条数据
        pageSize: this.pageSize,
        //请求第几页
        pageIndex: this.pageNumber,
        searchVal: title
    }
}
function  remarks(val) {
    $("#remarks").html(val);
}
function  formattime(value) {
    var date = new Date(value);
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    var h = date.getHours();
    var mi = date.getMinutes();
    var ss = date.getSeconds();
    return y + '-' + (m<10?"0"+m:m) + '-' + (d<10?"0"+d:d) + ' ' + (h<10?"0"+h:h) + ':' + (mi<10?"0"+mi:mi) + ':' + (ss<10?"0"+ss:ss);

}
function  formattimes(value) {
    var date = new Date(value);
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    var h = date.getHours();
    var mi = date.getMinutes();
    var ss = date.getSeconds();
    return y + '-' + (m<10?"0"+m:m) + '-' + (d<10?"0"+d:d) ;

}
function del(id, status) {
    if (status == 0) {
        layer.msg("删除失败，已经启用的不允许删除!", {icon: 2, time: 1000});
        return;
    }
    layer.confirm('确认要删除吗？', function (index) {
        $.ajax({
            type: 'POST',
            url: '/outcome/deleteOutcome/' + id,
            dataType: 'json',
            success: function (data) {
                if (data.message == '删除成功!') {
                    layer.alert(data.message, {icon: 6});
                } else {
                    layer.alert(data.message, {icon: 6});
                }
                refush();
            },
            error: function (data) {
                console.log(data.msg);
            },
        });
    });
}

function edit(name) {
    $.post("/outcome/findOutcome/" + name,
        function (data) {
            $("#updateform").autofill(data);
            $("#test_2_").val(formattimes(data.startTime)+" - "+formattimes(data.endTime));
        },
        "json"
    );
}

function updatestatus(id, status) {
    $.post("/outcome/updateStatus/" + id + "/" + status,
        function (data) {
            if (status == 0) {
                if (data.message == "ok") {
                    layer.alert("已启用", {icon: 6});
                } else {
                    layer.alert("操作失败", {icon: 6});
                }
            } else {
                if (data.message == "ok") {
                    layer.alert("已停用", {icon: 5});
                } else {
                    layer.alert("操作失败", {icon: 5});
                }
            }
            refush();
        },
        "json"
    );
}

//查询按钮事件
$('#search_btn').click(function () {
    var times = $("#test__2").val();
    var start,end;
    if(!times){
        start = null;
        end = null;
    }
    $('#mytab').bootstrapTable('refresh', {
        url: '/outcome/findOutcomeList',
        query:{
            isActive:$("#isActive__").val(),
            createTime:start,
            endTime:end,
            money:$("#money__").val(),
            subjectId:$("#subjectId").val(),
            remark:$("#remark__").val(),
            outcomeStatus:$("#incomeStatus__").val(),
            hotelId:$("#hotel_id").val()
        }
    });
})

function refush() {
    $('#mytab').bootstrapTable('refresh', {url: '/outcome/outcomeList'});
}

$("#update").click(function () {
    $.post(
        "/outcome/outcomeUpdateSave",
        $("#updateform").serialize(),
        function (data) {
            if (data.message == "修改成功!") {
                layer.alert(data.message, {icon: 6});
                refush();
            } else {
                layer.alert(data.message, {icon: 6});
                refush();
            }
        }, "json"
    );
});
$("#add").click(function () {
    var times = $("#test_2").val();
    var timeArray = times.split(" - ");
    $.post(
        "/outcome/outcomeAddSave",
        $("#formadd").serialize(),
        function (data) {
            if (data.message == "新增成功!") {
                layer.alert(data.message, {icon: 6});
                refush();
            } else {
                layer.alert(data.message, {icon: 6});
                refush();
            }
        }, "json"
    );
});

function deleteMany11() {
    var isactivity = "";
    var row = $.map($("#mytab").bootstrapTable('getSelections'), function (row) {
        if (row.isActive == 0) {
            isactivity += row.isActive;
        }
        return row.id;
    });
    if (row == "") {
        layer.msg('删除失败，请勾选数据!', {
            icon: 2,
            time: 2000
        });
        return;
    }
    if (isactivity != "") {
        layer.msg('删除失败，已经启用的不允许删除!', {
            icon: 2,
            time: 2000
        });
        return;

    }
    $("#deleteId").val(row);
    layer.confirm('确认要执行批量删除网站信息数据吗？', function (index) {
        $.post(
            "/outcome/deleteManyOutcome",
            {
                "manyId": $("#deleteId").val()
            },
            function (data) {
                if (data.message == "删除成功!") {
                    layer.alert(data.message, {icon: 6});
                    refush();
                } else {
                    layer.alert(data.message, {icon: 6});
                    refush();
                }
            }, "json"
        );
    });
}

function deleteMany() {
    var isactivity = "";
    var row = $.map($("#mytab").bootstrapTable('getSelections'), function (row) {
        if (row.isActive == 0) {
            isactivity += row.isActive;
        }
        return row.id;
    });
    if (row == "") {
        layer.msg('修改失败，请勾选数据!', {
            icon: 2,
            time: 3000
        });
        return;
    }
    $("#statusId").val(row);
    $("#updateStatus").modal('show');

}

$("#updateSta").click(function () {
    layer.confirm('确认要执行批量修改收支科目状态吗？', function (index) {
        $.post(
            "/outcome/deleteManyOutcome",
            {
                "manyId": $("#statusId").val(),
                "status": $("#status").val()
            },
            function (data) {
                if (data.message == "修改成功!") {
                    layer.alert(data.message, {icon: 6});
                    refush();
                } else {
                    layer.alert(data.message, {icon: 6});
                    refush();
                }
            }, "json"
        );
    });
});