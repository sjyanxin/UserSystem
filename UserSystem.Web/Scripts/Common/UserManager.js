function AddUser() {
    var name = $("#name").val();
    var pwd = $("#pwd").val();
    if (name === ""| pwd ==="") {
        $.messager.alert("warning","Your username or password is empty!");
    } else {
        $.post("/account/adduser", { "name": name, "pwd": pwd },
         function (data) {
             if (data == 0) {
                 $.messager.alert("warning", "Your username or password is empty!");
             } else {
                 $.messager.alert("warning", "Added successfully!");
                 $('#dg').datagrid('reload');
             }
         });
    }
}