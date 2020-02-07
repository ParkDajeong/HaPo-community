$(document).ready(function () {
	
	/* 비밀번호 유효성 체크 */
    $("#userPassword").on("propertychange change keyup paste input", function () {
        var pwd = $("#userPassword").val();
        var chk_num = pwd.search(/[0-9]/g);
        var chk_eng = pwd.search(/[a-z]/ig);
        var chk1, chk2 = false;

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
            $(".password").css("display", "none");
		}
		else{
            $(".password").css("display", "inherit");
		}
    });

    /* 비밀번호 같은지 체크 */
    $("#confirmPw").on("propertychange change keyup paste input", function () {
        var email = $("#userPassword").val();
        var check = $("#confirmPw").val();

        if (email == check) {
            $(".confirm").css("display", "none");
            $("#confirmPw").css("border", "");
            confirmChk = true;
            return true;
        } else {
            $(".confirm").css("display", "inherit");
            $("#confirmPw").css("border", "1px solid #ff6e6e");
            confirmChk = false;
            return false;
        }
    });

    /* 이메일 유효성 체크 */
    $("#userEmail").on("propertychange change keyup paste input", function () {
        var str = $("#userEmail").val();
        var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

        if (regExp.test(str)) {
            $(".email").css("display", "none");
            $("#userEmail").css("border", "");

            /*$.ajax({
                url: "/join/check/email",
                dataType: "json",
                data: {
                    email: $("#email").val()
                },
                type: "POST",
                success: function (retVal) {
                    if (retVal.result == "overlap") {
                        $(".email").text(retVal.message);
                        $(".email").css("display", "inherit");
                        $("#email").css("border", "1px solid #ff6e6e");
                        emailChk = false;
                    } else {
                        $(".email").css("display", "none");
                        $("#email").css("border", "");
                        emailChk = true;
                    }
                },
                error: function (request, status, error) {
                    console.log("code = " + request.status + " message = " + request.responseText + " error = " + error);
                }
            });*/
            return true;
        } else {
            $(".email").css("display", "inherit");
            $("#userEmail").css("border", "1px solid #ff6e6e");
            emailChk = false;
            return false;
        }
    });
});
