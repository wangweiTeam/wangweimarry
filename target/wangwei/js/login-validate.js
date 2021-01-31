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
            "login_username":{
                "requireds":"请填入用户名！"
            },
            "login_password":{
                "requireds":"请填入密码！"
            }
        },

        errorPlacement: function (error, element) {
            error.insertAfter(element);
        }
    });
});