<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/userEdit.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- 부트스트랩 관련 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="d-flex flex-grow-1">
			<span class="w-100 d-lg-none d-block "> <!-- hidden spacer to center brand on mobile --></span>
			<a class="navbar-brand" href="#">HaPo</a>
			<div class="w-100 text-right">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse flex-grow-1"
			id="navbarNavDropdown">
			<ul class="navbar-nav ml-auto flex-nowrap">
				<li class="nav-item"><a class="nav-link" href="#">대연회장<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">예언자일보</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 다정파크 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">프로필</a> <a class="dropdown-item"
							href="#">작성글</a> <a class="dropdown-item" href="#">알림</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<section>
		<div class="panel">
			<div class="panel-heading">
				<h4>회원 정보 수정</h4>
			</div>
			<div class="panel-body">
				<form>
					<div class="form-group">
						<label for="userNickname">닉네임</label> <input type="text"
							class="form-control" id="userNickname">
					</div>
					<div class="form-group">
						<label for="userEmail">이메일</label> <input type="email"
							class="form-control" id="userEmail"> <span
							class="warn email">잘못된 이메일 형식입니다.</span>
					</div>
					<div class="form-group">
						<label for="userHouse">기숙사</label> <input type="hidden"
							id="userHouse" value="">
						<p>당신의 기숙사는 ~~~~입니다.</p>
						<div class="radio-group">
							<label class="radio-img"> <input type="radio"
								name="house" value="gryffindor" /> <img
								src="/resources/img/Gryffindor.png">
							</label> <label class="radio-img"> <input type="radio"
								name="house" value="slytherin" /> <img
								src="/resources/img/Slytherin.png">
							</label> <label class="radio-img"> <input type="radio"
								name="house" value="ravenclaw" /> <img
								src="/resources/img/Ravenclaw.png">
							</label> <label class="radio-img"> <input type="radio"
								name="house" value="hufflepuff" /> <img
								src="/resources/img/Hufflepuff.png">
							</label>
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn-block join">정보
						수정</button>
				</form>
			</div>
		</div>
		<div class="panel">
			<button type="button" class="btn btn-primary btn-block">비밀번호
				변경</button>
			<button type="button" class="btn btn-primary btn-block">회원
				탈퇴</button>
		</div>
	</section>
</body>
</html>