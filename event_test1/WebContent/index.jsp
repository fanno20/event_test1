<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").on('click',function(){
		$.ajax({
			url:"./data.jsp",
			type:"GET",
			success:function(data){
				$("#result").html(data);
			}
		});
	});
	
	$(".t1").on('click',function(){
		alert($(this).text());
	});
	
	
	//이벤트 위임
	//문서를 클릭했을 때 click이라는 이벤트를 위임
	$(document).on('click','.t1',function(){
		alert($(this).text());
	})
});
</script>
</head>
<body>
<input type="button" id="btn1" value="click">

<div class="t1">div Test</div>
<div id="result">

</div>
</body>
</html>