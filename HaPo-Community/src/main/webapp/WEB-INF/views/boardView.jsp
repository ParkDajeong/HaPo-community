<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/boardView.css">
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
		<div id="contentWrapper">
			<div class="content-header">
				<input type="hidden" id="board_id" name="board_id" /> <input
					type="hidden" id="user_email" name="user_email" /> <input
					type="hidden" id="user_nickname" name="user_nickname" />
				<div class="board-title">
					<h3>제목이 들어갑니다.</h3>
					<span> <a class="modify">수정</a> <a class="delete">삭제</a>
					</span>
				</div>
				<div class="contentInfo">
					<span class="writer">작성자</span> <span class="info">2020.02.06
						<span class="view">조회 5</span>
					</span>
				</div>
			</div>
			<div class="content-body">게시글 내용이 들어갑니다. 그리핀도르 짱 허마오니 최고의 마법사~~
			</div>
			<!-- 댓글 -->
			<div class="content-footer">
				<span class="commentCnt">Comment <span>100</span>개
				</span>
				<div class="writeComment">
					<div class="c_writer">닉네임</div>
					<textarea class="c_inputBox" placeholder="댓글을 달아주세요:)" cols="20"></textarea>
					<button class="btn btn-outline-secondary insert">등록</button>
				</div>
				<div class="replyWrapper rv${replyView.reply_id}">
					<div class="MaincommetWrap">
						<div class="comment-header">
							<input type="hidden" id="reply_id" name="reply_id" /> <span
								class="reply_user">댓글 닉네임</span> <span class="post_owner">글쓴이</span>
							<span class="replyWriterBtn"> <span><a
									class="reply_comment r_edit">답글</a></span> <a
								class="reply_modify r_edit">수정</a> <a
								class="reply_delete r_edit">삭제</a>
							</span>
						</div>
						<div class="commentContent">댓글 내용이 들어갑니다.</div>
						<span class="reply_date">2020.02.06</span>
					</div>
				</div>
				<div class="commentWrap">
					<div class="arrow">
						<img src="/resources/img/commnet_Arrow.png">
					</div>
					&nbsp;
					<div class="SubcommetWrap">
						<div class="comment-header">
							<input type="hidden" id="reply_id" name="reply_id" /> <span
								class="reply_user">댓글 닉네임</span> <span class="replyWriterBtn">
								<a class="reply_modify r_edit">수정</a> <a
								class="reply_delete r_edit">삭제</a>
							</span>
						</div>
						<div class="commentContent">댓글 내용. 인정합니다^^</div>
						<span class="reply_date">20.02.07</span>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
