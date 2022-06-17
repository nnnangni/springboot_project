<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<script>

	function deleteComment(idx,seq){
		if (confirm("댓글을 삭제하시겠습니까?")){
			document.location.href="/comment/delete/"+seq+"/"+idx;

		}
	}
</script>	
<head>
<meta charset="UTF-8">
<title>상세페이지</title>

</head>
<body>


	<div class="col-lg-8 mx-auto p-3 py-md-5">

		<main>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button onclick="location.href='/main' "type="button" class="btn btn-outline-success btn-sm">
	                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"></path>
					  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"></path>
					</svg>
	                메인으로가기
	            </button>
			</div>
			<h1>${dto.title }</h1>
			<p class="fs-5 col-md-8">${dto.outline}</p>

			<div class="mb-4">

				 <a href="https://map.naver.com/v5/search/${dto.title }"
					class="btn btn-outline-success btn-sm px-2">네이버지도보기</a>
			</div>

			<hr>


			<h4>${dto.sido }${dto.sigungu }</h4>
			<br> <br>

			<div class="card border-light">
				<div class="row no-gutters">
					<div class="col-4">
						<img src="${dto.image }" alt="" class="card-img" />
					</div>
					<div class="col-8">
						<div class="card-body">
							<p class="card-text">${dto.content }</p>
						</div>
					</div>
				</div>
				<br>
			</div>
		</main>
		
		<!-- 댓글 작성하는곳 -->
		<div class="card-body">
			<div class="flex-shrink-0 col d-flex">
				<br>
				<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
					fill="currentColor" class="bi bi-chat-left-dots"
					viewBox="0 0 16 16">
 						<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
 						<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
				</svg>
				<div class="ms-3 mx-3">
				<h5 style="mt-3">댓글</h5>
				<br>
				</div>
				
			</div>
				
			<form class="row g-3" action="/comment/add" method="post">
			  <input type="hidden" name="seq" id="seq" value="${dto.seq }">
			  <div class="col-md-6">
			    <input type="text" class="form-control" id="username" name="username" placeholder="작성자명">
			  </div>
			  <div class="col-md-6">
			    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" >
			  </div>
			  <div class="col-12">
			  	<textarea class="form-control" name="content" id="content" rows="3"
					placeholder="댓글을 작성해주세요."></textarea>
			  </div>
			  <div class="col-12 d-md-flex justify-content-md-end" >
			    <button type="submit" class="btn btn-outline-primary btn-sm" >댓글작성</button>
			  </div>
			</form>
			<hr>
			<c:forEach var="comment" items="${clist }">
				<div class="d-flex mb-4">

					<div class="col d-flex">
						<div class="flex-shrink-0">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-chat-left-dots"
								viewBox="0 0 16 16">
		  						<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
		  						<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
							</svg>
						</div>
						<div class="ms-3">
							<div><strong>${comment.username }</strong> ${comment.date }</div>
							${comment.content }
							
						</div>
						<input type="hidden" name="seq" id="seq" value="${comment.seq }">
						<hr>
					</div>
					<button type="button" class="btn-close" aria-label="Close" onclick="deleteComment(${comment.idx },${comment.seq })"></button>
					
				</div>
				
			</c:forEach>


		</div>


		<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
			crossorigin="anonymous"></script>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
</body>
</html>