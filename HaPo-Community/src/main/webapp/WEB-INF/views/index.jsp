<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/index.css">
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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<title>게시판</title>

<style>
.write, .delete {
	font-size: 14px;
	margin-bottom: 7px;
	margin-right: 5px;
	padding: 5px 15px;
}

.delete {
	background-color: #ca3d3d;
	border-color: #c33c49;
}

.table td {
	vertical-align: middle;
}

.page-link {
	color: #4d6082;
}

.page-item.active .page-link {
	background-color: #4d6082;
	border-color: #565f88;
}
</style>
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
		<h2>대연회장</h2>
		<!-- 게시판 -->
		<button type="button" class="btn btn-danger float-right delete pc">삭제</button>
		<button type="button"
			class="btn btn-outline-secondary float-right write pc">글쓰기</button>
		<div class="tableWrap">
			<table class="table table-hover community">
				<thead>
					<tr>
						<th>번호</th>
						<th class="board-title">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>게시글 제목이~~~</td>
						<td>다정하하</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Let's get Physical</td>
						<td>Dua Lipa</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>3</td>
						<td>스프링 세팅 하..</td>
						<td>다정</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>4</td>
						<td>게시글 제목이~~~</td>
						<td>다정하하</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Let's get Physical</td>
						<td>Dua Lipa</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>6</td>
						<td>스프링 세팅 하..</td>
						<td>다정</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>7</td>
						<td>게시글 제목이~~~</td>
						<td>다정하하</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>8</td>
						<td>Let's get Physical</td>
						<td>Dua Lipa</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>9</td>
						<td>스프링 세팅 하..</td>
						<td>다정</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
					<tr>
						<td>10</td>
						<td>Let's get Physical</td>
						<td>Dua Lipa</td>
						<td>2020.02.04</td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 모바일용 -->
		<table class="table table-hover m-community">
			<thead>
				<tr>
					<th><span>대연회장</span>
						<button type="button" class="btn btn-danger float-right delete">삭제</button>
						<button type="button"
							class="btn btn-outline-secondary write float-right">글쓰기</button></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="title m_title">
						<div class="m_post-head">
							<span class="m_subject">제목</span> <span class="m_replyCnt">댓글
								수</span>
						</div>
						<div class="m_post-info">
							<span class="m_writer">닉네임</span> <span class="m_date">날짜</span>
							<span class="m_readCnt">조회수</span>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<!-- 페이지네이션 -->
		<div class="paginationWrap">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
						class="sr-only">Next</span>
				</a></li>
			</ul>
		</div>
		<!-- 검색 -->
		<div class="searchWrap">
			<div class="inputWrap">
				<select id="searchType">
					<option value="allContents">제목+내용</option>
					<option value="writer">글쓴이</option>
				</select> <input type="text" name="search" id="searchData">
			</div>
			<button type="button" id="searchBtn">
				<img src="/resources/img/search_white.png">
			</button>
		</div>
	</section>
</body>
</html>
