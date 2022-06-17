<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>휴가지 등록</title>
</head>
<body>
	<div class="container">
  <main>
    <div class="py-5 text-center">
    	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button onclick="location.href='/main' "type="button" class="btn btn-outline-success btn-sm">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"></path>
				  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"></path>
				</svg>
                메인으로가기
            </button>
		</div>     
      <h2>휴가지 등록</h2>
    </div>
    <hr class="mb-2">
      <div >
        <h4 class="mb-3"></h4>
        <form action = "/main/add" method="post" class="needs-validation" novalidate="">
          <div class="row g-3 flex-direction: column;">
          
          <!--  	<input type="text" name="seq"  placeholder="시퀀스를 입력해주세요">-->
          
            <div class="col-sm-6">
              <label for="title" class="form-label">휴가지 이름</label>
              <input type="text" class="form-control" id="title" name="title" placeholder="휴가지 이름을 입력해주세요.">

            </div>

            <div class="col-sm-6">
              <label for="sido" class="form-label">시/도</label>
              <select class="form-select" id="sido" name="sido" required="">
                <option value="">시/도 선택</option>
                <option>서울특별시</option>
                <option>부산광역시</option>
                <option>광주광역시</option>
                <option>인천광역시</option>
                <option>세종특별자치시</option>
                <option>대전광역시</option>
                <option>울산광역시</option>
                <option>대구광역시</option>
                <option>제주특별자치도</option>
                <option>경기도</option>
                <option>강원도</option>
                <option>충청남도</option>
                <option>충청북도</option>
                <option>경상남도</option>
                <option>경상북도</option>
                <option>전라남도</option>
                <option>전라북도</option>
              </select>
              <div class="invalid-feedback">
                시/도를 선택해주세요.
              </div>
            </div>
            
            <div class="col-12">
              <label for="sigungu" class="form-label">세부 위치</label>
              <input type="text" class="form-control" id="sigungu" name="sigungu" placeholder="세부 위치를 입력해주세요." required="">
              <div class="invalid-feedback">
                세부 위치를 입력해주세요.
              </div>
            </div>

            <div class="col-12">
              <label for="outline" class="form-label">개요</label>
              <input type="text" class="form-control" id="outline" name="outline" placeholder="간략한 설명을 입력해주세요.">
            </div>

           <div class="mb-3">
  			  <label for="content" class="form-label">상세설명</label>
  			  <textarea class="form-control" id="content" name="content" rows="3" placeholder="상세 설명을 입력해주세요."></textarea>
		   </div>


            <div class="col-12">
              <label for="image" class="form-label">이미지URL</label>
              <input type="text" class="form-control" id="image" name="image" placeholder="이미지 URL을 입력해주세요.">
            </div>
      



          <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  <button class="btn btn-outline-primary me-md-2" type="submit">등록</button>

			  	
			  </button>
		  </div>
        </form>
      </div>
    </div>
  </main>

</div>
	
	
	<!-- 
	<form action = "/main/add" method="post">
		<input type="text" name="seq" value="" placeholder="시퀀스를 입력해주세요">
		<input type="text" name="title" value="" placeholder="휴가지 이름을 입력해주세요">
		<input type="text" name="outline" value="" placeholder="휴가지 개요를 입력해주세요">
		<input type=submit value="등록">
	</form>
	 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>

