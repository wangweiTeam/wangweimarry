function isPoneAvailable(poneInput) {
	var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if (!myreg.test(poneInput)) {
		return false;
	} else {
		return true;
	}
}

function isEmailAvailable(emailInput) {
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if (!myreg.test(emailInput)) {
		return false;
	} else {
		return true;
	}
}

function check_login() {
	var name = $("#user_name").val().trim().length;
	var pass = $("#password").val().trim().length;
	if (name > 2 && name < 10 && pass > 7 && pass < 16) {
		$.ajax({
			type: "POST",
			url: "UserServlet?method=loginByName",
			data: $(".login-form").serialize(),
		})
	} else {
		$("#login_form").removeClass('shake_effect');
		setTimeout(function() {
			$("#login_form").addClass('shake_effect')
		}, 1);
	}
}

function check_register() {
	var name = $("#r_name").val().trim();
	var pass = $("#r_password").val().trim();
	var repass = $("#re_password").val().trim();
	var email = $("#r_email").val().trim();
	var phone = $("#r_phone").val().trim();
	var m = $("#m").val().trim();
	if (name.length > 2 && name.length < 11 && pass.length > 7 && pass.length < 16 && repass == pass 
			&& m.length > 2 && isPoneAvailable(phone) && isEmailAvailable(email) ) {
		$.ajax({
			type: "POST",
			url: "UserServlet?method=regist",
			data: $(".register-form").serialize(),
		})
	} else {
		$("#login_form").removeClass('shake_effect');
		setTimeout(function() {
			$("#login_form").addClass('shake_effect')
		}, 1);
	}
}


$(function() {
	$("#create").click(function() {
		check_register();
//		return false;
	})
	$("#login").click(function() {
		check_login();
//		return false;
	})
	$('.message a').click(function() {
		$('form').animate({
			height: 'toggle',
			opacity: 'toggle'
		}, 'slow');
	});
})
//添加头像图片上传的按钮。
function ophiddenFile() {
	var dd = $("#hiddenFile").val().split("\\");
	$("#showFileName").val(dd[dd.length - 1]);
}