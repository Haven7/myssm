/*$(function(){
	$('#password').blur(checkPassword);
	$('#password1').blur(checkPassword1);
});

function checkPassword(){
	var password = $('#password').val();
	if(password == null || password == ""){
		//��ʾ����
		$('#password-msg').html("密码不能为空");
		return false;
	}
	var reg = /^\w{6,10}$/;
	if(!reg.test(password)){
		$('#password-msg').html("密码长度6到10位");
		return false;
	}
	$('#password-msg').empty();
	return true;
}

function checkPassword1(){
	var password1 = $('#password1').val();
	if(password1 == null || password1 == ""){
		//��ʾ����
		$('#password1-msg').html("密码不能为空");
		return false;
	}
	var reg = /^\w{6,10}$/;
	if(!reg.test(password1)){
		$('#password1-msg').html("密码长度6到10位");
		return false;
	}
	if(password!=password1){
		$('#password1-msg').html("密码不一致");
	return false;
	}
	$('#password1-msg').empty();
	return true;
}*/

