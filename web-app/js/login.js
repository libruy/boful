

$(function () {
     $("#btn_login").click(function () {
        var username=$("#username").val();
        var password = $("#password").val();
        $.post("/index/checkLogin", {url:"login/", username: username, password: password }, function (data) {
            if(data.success){
                location.href = "/user/index";
            }else{
                alert(data.msg);
            }
        });
    });
    
});

