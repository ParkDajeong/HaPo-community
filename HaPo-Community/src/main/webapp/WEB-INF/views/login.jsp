<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/login.css">
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>게시판</title>
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
				<h4>로그인</h4>
			</div>
			<div class="panel-body">
				<span class="warn">아이디 혹은 비밀번호를 잘못 입력하셨습니다.</span>
				<form>
					<div class="form-group">
						<label for="userId">아이디</label>
						<input type="text" class="form-control" id="userId">
					</div>
					<div class="form-group">
						<label for="userPassword">비밀번호</label>
						<input type="password" class="form-control" id="userPassword">
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="autoLogin">
						<label class="form-check-label" for="autoLogin">로그인 유지</label>
					</div>
					<button type="button" class="btn btn-primary btn-block login">로그인</button>
				</form>
			</div>
			<div class="panel-bottom">
				<a href="/user/find">비밀번호 찾기</a> <span>/</span> <a href="/join">회원가입</a>
			</div>
			<div class="login-or">
				<hr class="hr-or">
				<span class="span-or">or</span>
			</div>
			<div class="social-login">
				<a href="" class="btn btn-block btn-outline-danger"> <i
					class="fab fa-facebook-f"></i>   Google로 로그인
				</a>
			</div>
		</div>
	</section>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/js/login.js" type="text/javascript"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
</body>
</html>
