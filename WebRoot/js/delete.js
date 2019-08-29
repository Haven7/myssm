$(function() {
	$(".del").click(function() {
		if(confirm("È·¶¨É¾³ýÂð£¿") == true) {
			var href = $(this).attr("href");
			$("form").attr("action", href).submit();
			return false;
		}
		else {
			return false;
		}
	});
});