function Login() {

    var name = $("#name").val();
    var pwd = $("#pwd").val();
    if (name === "") {
        $("#showInfo").html("Your user name can't be empty!"); 
    } else {
    $.post("/account/DoLogin", { "name": name, "pwd": pwd },
         function (data) {
             if (data == -2) {
                 $("#showInfo").text("Username or password is incorrect!");
             } else if (data == -1) {
                 $("#showInfo").text("Your user name can't be empty!");
             } else {
                 $("#showInfo").text("You login!");
             }
         });
    }
}