
	 var c='';
	$('.butt').click(function(){

		var arr=new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','I','S','T','U','V','W','X','Y','Z')
		
		for (var i = 0; i <4; i++) {
			var index=Math.floor(Math.random()*arr.length);
			c+=arr[index]
				
		}
		alert(c)
		return c
})
    
		$('#logBtn').click(function(){
			if ($('#phone').val()==''||$('.nums').val()=='') {
				alert('请输入')
				return false
			}
			if (c!=$('.nums').val()) {
				alert('验证码不正确')
				return false
			}
		    else{
				alert('登录成功')
				window.location.href='zhuye.html'
			}
			$.ajax({
				type:"post",
				url:"mvc/index.php?c=Login&a=register",
				data:{
					tel:$('#phone').val()
				},
				success:function(data){
					var str=JSON.parse(data)
					console.log(str)
				}
			})
		})

