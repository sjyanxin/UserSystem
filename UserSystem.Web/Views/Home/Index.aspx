﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <script src="../../Content/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <link href="../../Content/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout">
    <div data-options="region:'north',border:false" style="height: 40px; background: #0099c8;
        padding: 10px">
        logo</div>
    <div data-options="region:'west',split:true,title:'Menu'" style="width: 180px; padding: 10px">
        <div class="easyui-accordion" data-options="fit:true">
            <div title="About" data-options="iconCls:'icon-save'" style="overflow: auto; padding: 10px;">
                <ul id="tt">
            </div>
            <div title="Admin" data-options="iconCls:'icon-ok',closable:true" style="overflow: auto;
                padding: 10px">
            </div>
            <div title="Help" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px">
            </div>
        </div>
        </ul>
    </div>
    <div data-options="region:'south',border:false" style="height: 20px; background: #ccc;
        padding: 1px">
        This is admin</div>
    <div data-options="region:'center'">
        <div  id="tabs" class="easyui-tabs" data-options="fit:true">
            <div title="tab1" style="padding: 20px; display: none">
            </div>
            <div title="tab2" style="">
            </div>
            <div title="tab3" style="">
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $("#tt").tree(
        { url: '/Prim/Index'
        }
        );

        $("#tt").tree(
        { onClick: function (node) {
            //alert(node.text);
            $('#tabs').tabs('add', {
                title: node.text,
                content: 'Tab Body',
                closable: true,
                href: '/Home/UserManager'
            });
        }
        }
        );
    </script>    
</body>
</html>   
