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

 function SearchUser() {
     var name = $("#name").val();
   
     if (name === "" ) {
         $.messager.alert("warning", "Your username  is empty!");
     } else {
//     $.post("/account/Searchuser", { "name": name },
//         function (data) {

             $('#dg').datagrid({url : "/account/Searchuser?name="+name});
           //  $('#dg').datagrid('load', { "name": name });
         //});
     }
 }