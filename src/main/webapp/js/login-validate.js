//登录页面校验
$(function () {
    $("#loginForm").validate({
        rules:{
            "login_username":{
                "requireds":true
            },
            "login_password":{
                "requireds":true
            }
        },
        messages:{
            "username":{
                "login_requireds":"请填入用户名！"
            },
            "password":{
                "login_requireds":"请填入密码！"
            }
        },

        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});