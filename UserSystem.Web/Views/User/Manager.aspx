<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>UserManager</title>
</head>
<body>
    <script src="../../Scripts/Common/UserManager.js" type="text/javascript"></script>
    <table id="dg" class="easyui-datagrid" style="width:700px;height:250px"
			data-options="singleSelect:true,
            collapsible:true,
            url:'/account/readuser',
            toolbar:'#tb',
            fit:true,
            rownumbers:true,
            pagination:true,
            pageSize:10"            >
		<thead>
			<tr>
				<th data-options="field:'ID',width:80">ID</th>
				<th data-options="field:'Name',width:100">Name</th>
				<th data-options="field:'Pwd',width:80,align:'right'">Password</th>
				<th data-options="field:'AddTime',width:120,align:'right'">Add Time</th>				
			</tr>
		</thead>
	</table>

    <div id="tb" style="padding:5px;height:auto">
		<div style="margin-bottom:5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
		</div>
		<div>
			User Name: <input id="name" class="text" style="width:80px">
			Password: <input id="pwd" class="text" style="width:80px">
		
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="AddUser();">Add</a>
		</div>
	</div>
</body>
</html>
