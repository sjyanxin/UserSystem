<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Search</title>
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
		<div>
			User Name: <input id="name" class="text" style="width:120px">
		
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="SearchUser();">Search</a>
		</div>
	</div>
</body>
</html>
