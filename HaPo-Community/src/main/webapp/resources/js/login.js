$(document).ready(function () {
	
	$(".form-group > input").keydown(function(key) {
        if (key.keyCode == 13) {
        	if(!$("#userId").val()){
        		alert("아이디를 입력해주세요.");
        	} else if(!$("#userPassword").val()) {
        		alert("비밀번호를 입력해주세요.");
        	} else {
        		$(".login").click();
        	}
        }
    });
    
    //로그인
    $(".login").click(function () {
    	var objParams = {
    			id			: $("#userId").val(),
    			password	: $("#userPassword").val()
    	}
    	
    	$.ajax({
    		url			: "/login/user",
    		dataType	: "json",
    		data		: objParams,
    		type		: "POST",
    		success		: function(result) {
    			if(result > 0) {
    				location.href = "/";
    			} else {
    				$(".warn").css("display", "inherit");
    				$("#userPassword").val("");
					$("#userPassword").focus();
				}
    		},
    		error		: function(request, status, error){
				 console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
			}
    	});
    });
});
