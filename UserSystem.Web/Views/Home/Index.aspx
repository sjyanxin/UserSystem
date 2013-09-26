<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <script src="../../Content/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <link href="../../Content/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/Common/Login.js"  type="text/javascript"></script>
</head>
<body class="easyui-layout">
<%
    var user = Session["user"] as UserSystem.Model.UserManager;
     %>

    <div data-options="region:'north',border:false" style="height: 40px; background: #0099c8;">
        <div style="float:left;">
            <img src="../../Content/santa-gloce.png" / style="height:45px;float:left; margin:5px">
            <label style="float:left;font-size:15px;margin-top:10px">User Management System</label>
         </div>
        <div style="padding:5px;float:right">
		    <a href="#" class="easyui-linkbutton" data-options="plain:true">Home</a>
		    <a href="#" class="easyui-menubutton" data-options="iconCls:'icon-edit'" onclick="Logout();">Logout</a>
		    <a href="#" class="easyui-menubutton" data-options="menu:'#mm2',iconCls:'icon-help'">Help</a>
		    <a href="#" class="easyui-menubutton" data-options="menu:'#mm3'">About</a>
	    `</div>
    </div>
    <div data-options="region:'west',split:true,title:'Menu'" style="width: 180px; padding: 10px">
        <div class="easyui-accordion" data-options="fit:true">
            <div title="User Manage" data-options="iconCls:'icon-save'" style="overflow: auto; padding: 10px;">
                <ul id="tt">
            </div>
            <div title="System Design" data-options="iconCls:'icon-ok',closable:true" style="overflow: auto;
                padding: 10px">
            </div>
            <div title="Help" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px">
            </div>
        </div>
        </ul>
    </div>
    <div data-options="region:'south',border:false" style="height: 20px; background: #ccc;padding: 1px">
        Current user : <%=user.Name %></div>
    <div data-options="region:'center'">
        <div  id="tabs" class="easyui-tabs" data-options="fit:true">
            <div title="Home Page" style="padding: 20px; display: none">Home Page
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
                href: node.attributes.url
            });
        }
        }
        );
   
    </script>    
</body>
</html>   
