$(function() {
	$(".del").click(function() {
		if(confirm("ȷ��ɾ����") == true) {
			var href = $(this).attr("href");
			$("form").attr("action", href).submit();
			return false;
		}
		else {
			return false;
		}
	});
});