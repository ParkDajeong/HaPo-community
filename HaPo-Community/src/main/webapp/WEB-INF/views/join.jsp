<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/join.css">
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
				<h4>회원가입</h4>
			</div>
			<div class="panel-body">
				<form>
					<div class="form-group">
						<label for="userId">아이디</label>
						<input type="text" class="form-control" id="userId">
						<span class="warn id">이미 사용중인 아이디입니다.</span>
					</div>
					<div class="form-group">
						<label for="userPassword">비밀번호</label>
						<input type="password" class="form-control" id="userPassword" placeholder="영문+숫자 조합으로 8자 이상">
						<span class="warn password">영문+숫자 조합으로 8자 이상 입력해주세요.</span>
					</div>
					<div class="form-group">
						<label for="confirmPw">비밀번호 확인</label>
						<input type="password" class="form-control" id="confirmPw"> 
							<span class="warn confirm">비밀번호가 다릅니다. 다시 입력하세요.</span>
					</div>
					<div class="form-group">
						<label for="userNickname">닉네임</label>
						<input type="text" class="form-control" id="userNickname">
						<span class="warn nickname">이미 사용중인 닉네임입니다.</span>
					</div>
					<div class="form-group">
						<label for="userEmail">이메일</label> <input type="email" class="form-control" id="userEmail">
						<span class="warn email">잘못된 이메일 형식입니다.</span>
					</div>
					<button type="submit" class="btn btn-primary btn-block join">회원가입</button>
				</form>
			</div>
			<div class="login-or">
				<hr class="hr-or">
				<span class="span-or">or</span>
			</div>
			<div class="social-login">
				<a href="" class="btn btn-block btn-outline-danger">
					<i class="fab fa-facebook-f"></i>   Google로 회원가입
				</a>
			</div>
		</div>
	</section>
	
	<!-- 스크립트 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/js/join.js" type="text/javascript"></script>
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
