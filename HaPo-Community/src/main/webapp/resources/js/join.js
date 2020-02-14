$(document).ready(function () {
	
	$(".join").attr("disabled", true);
	var idChk, pwChk, confirmChk, nickChk, mailChk;
	var required = "필수 정보입니다.";
	var msg_id = $(".warn.id").text();
	var msg_pw = $(".warn.password").text();
	var msg_pwChk = $(".warn.confirm").text();
	var msg_nick = $(".warn.nickname").text();
	var msg_mail = $(".warn.email").text();
	
	/* 아이디 중복 체크 */
	$("#userId").on("propertychange change keyup paste input", function () {
		var id = $("#userId").val();
		
		if(!id) {
			$(".warn.id").text(required);
			$(".warn.id").css("display", "inherit");
			$("#userId").css("border", "1px solid #ff6e6e");
			idChk = false;
		} else {
			$.ajax({
				url			: "/join/check/id",
				dataType	: "json",
				data		: {
					id	: id
				},
				type		: "POST",
				success		: function(result) {
	    			if(result < 0){
	    				$(".warn.id").text(msg_id);
	    				$(".warn.id").css("display", "inherit");
	    				$("#userId").css("border", "1px solid #ff6e6e");
	    				idChk = false;
	    			} else{
	    				$(".warn.id").css("display", "none");
	    				$("#userId").css("border", "");
	    				idChk = true;
	    			}
	    		},
	    		error		: function(request, status, error){
	    			console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
				}
			});
		}
	});
	
	/* 비밀번호 유효성 체크 */
    $("#userPassword").on("propertychange change keyup paste input", function () {
        var pwd = $("#userPassword").val();
        var chk_num = pwd.search(/[0-9]/g);
        var chk_eng = pwd.search(/[a-z]/ig);
        var chk1, chk2 = false;
        
        if(!pwd) {
        	$(".warn.password").text(required);
			$(".warn.password").css("display", "inherit");
			$("#userPassword").css("border", "1px solid #ff6e6e");
			pwChk = false;
        } else {
        	/* 8자 이상 확인 */
            if (pwd.length < 8) {
                $("#userPassword").css("border", "1px solid #ff6e6e");
                chk1 = false;
            } else {
                $("#userPassword").css("border", "");
                chk1 = true;
            }

            /* 숫자+영문 확인 */
            if (chk_num < 0 || chk_eng < 0) {
                $("#userPassword").css("border", "1px solid #ff6e6e");
                chk2 = false;
            } else {
                $("#userPassword").css("border", "");
                chk2 = true;
            }
            
            if(chk1 == true && chk2 == true){
                $(".warn.password").css("display", "none");
                pwChk = true;
    		}
    		else{
    			$(".warn.password").text(msg_pw);
                $(".warn.password").css("display", "inherit");
                pwChk = false;
    		}
        }
    });

    /* 비밀번호 같은지 체크 */
    $("#confirmPw").on("propertychange change keyup paste input", function () {
        var pwd = $("#userPassword").val();
        var check = $("#confirmPw").val();
        
        if(!check) {
        	$(".warn.confirm").text(required);
			$(".warn.confirm").css("display", "inherit");
			$("#confirmPw").css("border", "1px solid #ff6e6e");
			confirmChk = false;
        } else {
        	if (pwd == check) {
                $(".warn.confirm").css("display", "none");
                $("#confirmPw").css("border", "");
                confirmChk = true;
            } else {
            	$(".warn.confirm").text(msg_pwChk);
                $(".warn.confirm").css("display", "inherit");
                $("#confirmPw").css("border", "1px solid #ff6e6e");
                confirmChk = false;
            }
        }
    });
    
    /* 닉네임 중복 체크 */
    $("#userNickname").on("propertychange change keyup paste input", function () {
    	var nick = $("#userNickname").val();
    	
    	if(!nick) {
    		$(".warn.nickname").text(required);
			$(".warn.nickname").css("display", "inherit");
			$("#userNickname").css("border", "1px solid #ff6e6e");
			nickChk = false;
    	} else {
    		$.ajax({
        		url			: "/join/check/nickname",
        		dataType	: "json",
        		data		: {
        			nickname : nick
        		},
        		type		: "POST",
        		success		: function(result) {
        			if(result < 0) {
        				$(".warn.nickname").text(msg_nick);
        				$(".warn.nickname").css("display", "inherit");
        	            $("#userNickname").css("border", "1px solid #ff6e6e");
        	            nickChk = false;
        			} else {
        				$(".warn.nickname").css("display", "none");
        	            $("#userNickname").css("border", "");
        	            nickChk = true;
        			}
        		},
        		error: function (request, status, error) {
                    console.log("code = " + request.status + " message = " + request.responseText + " error = " + error);
                }
        	});
    	}
    });
    
    /* 이메일 유효성 체크 */
    $("#userEmail").on("propertychange change keyup paste input", function () {
        var str = $("#userEmail").val();
        var regExp = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

        if(!str) {
        	$(".warn.email").text(required);
			$(".warn.email").css("display", "inherit");
			$("#userEmail").css("border", "1px solid #ff6e6e");
			mailChk = false;
        } else {
        	if (regExp.test(str)) {
                $(".warn.email").css("display", "none");
                $("#userEmail").css("border", "");
                $.ajax({
                    url			: "/join/check/email",
                    dataType	: "json",
                    data		: {
                        email 	: str
                    },	
                    type		: "POST",
                    success		: function (result) {
                        if (result < 0) {
                        	$(".email").text("이미 사용중인 이메일 주소입니다.");
                            $(".warn.email").css("display", "inherit");
                            $("#userEmail").css("border", "1px solid #ff6e6e");
                            mailChk = false;
                        } else {
                            $(".warn.email").css("display", "none");
                            $("#userEmail").css("border", "");
                            mailChk = true;
                        }
                    },
                    error		: function (request, status, error) {
                        console.log("code = " + request.status + " message = " + request.responseText + " error = " + error);
                    }
                });
            } else {
            	$(".warn.email").text(msg_mail);
                $(".warn.email").css("display", "inherit");
                $("#userEmail").css("border", "1px solid #ff6e6e");
                mailChk = false;
            }
        }
    });
    
    $(".panel-body input").on("propertychange change keyup paste input", function () {
		if(idChk && pwChk && confirmChk && nickChk && mailChk) {
			$(".join").attr("disabled", false);
		} else {
			$(".join").attr("disabled", true);
		}
	});
    
    //회원가입
    $(".join").click(function () {
    	var objParams = {
    			id			: $("#userId").val(),
    			password	: $("#userPassword").val(),
    			nickname	: $("#userNickname").val(),
    			email		: $("#userEmail").val()
    	}
    	
    	$.ajax({
    		url			: "/join/user",
    		dataType	: "json",
    		data		: objParams,
    		type		: "POST",
    		success		: function(retVal) {
    			if(retVal.result == "success") {
    				alert("가입이 완료되었습니다.");
    				location.href = "/login";
    			} else {
					 alert("가입에 실패하였습니다. 잠시 후, 다시 시도해주세요.");
				}
    		},
    		error		: function(request, status, error){
				 console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
			}
    	});
    });
});
