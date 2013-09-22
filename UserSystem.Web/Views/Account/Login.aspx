<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
      <script src="../../Content/easyui/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../../Content/easyui/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <link href="../../Content/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/Common/Login.js" type="text/javascript"></script>
</head>
<body>
    <div id="win" class="easyui-window" title="Login" style="width:260px;height:180px" 
    data-options="iconCls:'icon-save',model:true,minimizable:false,collapsible:false,maximizable:false,closable:false,draggable:false,resizable:false">
   <table style="margin-left:15px; margin-top:10px">
       <tr>
            <td>Username:</td><td><input id="name" type="text"/></td>
       </tr>
        <tr>
            <td>Password:</td><td><input id="pwd" type="text"/></td>
       </tr>
        <tr>
            <td></td><td><input id="btnLogin" type="button" onclick="Login();" value="Login"/></td>
       </tr>
        <tr>
            <td></td><td><label id="showInfo" style="color:Red"></label></td>
       </tr>
   </table>
    </div>
</body>
</html>
