<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sunflower&display=swap" rel="stylesheet">
<script>
	function deleteHoliday(seq){
		if(confirm("선택하신 휴가지를 삭제하시겠습니까?")){
			document.location.href="delete/"+seq;
		}
	}
</script>

<title>여름휴가</title>
<style>

	#buttontype{
		width:fit-content;
		margin:auto;
	}
	
	* {
		font-family: 'Sunflower', sans-serif;
	}
	
	

	
	
</style>
</head>
<body>

		<header>
		  <div class="navbar ">
		    <div class="container">
		      <a href="/main" class="navbar-brand d-flex align-items-center">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" stroke-linecap="round" stroke-width="2" aria-hidden="true" class="bi bi-heart-fill" viewBox="0 0 24 24">
				
				  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
				</svg>
		        <strong>여름휴가 어디가지?</strong>
		      </a>
		    </div>
		  </div>
		</header>
		
		<main>
		
		  <section class="py-5 text-center container">
		  	<div style="">
		  		<div class="content">
			    	<div class="row py-lg-4">
				      <div class="col-lg-6 col-md-8 mx-auto">
				      
				        <p class="lead text-muted" style="color:white;font-weight: bold;font-family:Sunflower">여름 휴가지 정보를 모아놨어요!</p>
				        <p>
				          <a href="/mainadd" class="btn btn-primary my-2">
				          	등록하기
				          </a>
				        </p>
				      </div>
		    		</div>
		   	 	</div>
		   	 	<div class="img-cover"></div>
		    </div>
		  </section>
		
		  <div class="album py-5 bg-light">
		    <div class="container">
		
		      <div class="card-group row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			      <c:forEach var="holiday" items="${list }">
				        <div class="col">
				          <div class="card shadow-sm  h-100">
				            <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="${holiday.image }" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#55595c"></rect></img>
				
				            <div class="card-body">
				              <h5 class="card-text">${holiday.title }</h5>
				              <p class="card-text">${holiday.outline }</p>
				              <div class="text-right float-right" style="bottom:0";>
				                <div class="d-grid gap-2 d-md-block float-right" id="buttontype">
				                  <button type="button" class="btn btn-sm btn-outline-primary"><a href="/main/${holiday.seq}" style="color: blue; text-decoration: none">상세</a></button>
				                  <button type="button" class="btn btn-sm btn-outline-secondary"><a href="/modify/${holiday.seq}" style="color: black; text-decoration: none">수정</a></button>
				                  <button class="btn btn-sm btn-outline-danger" onclick="deleteHoliday(${holiday.seq });">
				                  	<!--  <a href="/delete/${holiday.seq}" style="color: red; text-decoration: none">삭제</a>-->
				                  	삭제
				                  </button>
				                </div>
				              </div>
				            </div>
				          </div>
				        </div>
				  </c:forEach>
		      </div>
		    </div>
		  </div>
		
		</main>
		


    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      
  


	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>