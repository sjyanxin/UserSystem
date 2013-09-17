<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home</title>
    <script src="../../Content/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <link href="../../Content/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout">
    <div data-options="region:'north',border:false" style="height:40px;background:#0099c8;padding:10px" >logo</div>
    <div data-options="region:'west',split:true,title:'Menu'" style="width:150px;padding:10px" >left content</div>
    <div data-options="region:'south',border:false" style="height:20px;background:#ccc;padding:1px" >This is admin</div>
    <div data-options="region:'center',title:'Center'" >Center</div>

    
</body>
</html>
