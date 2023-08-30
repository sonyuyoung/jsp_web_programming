<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서등록</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
	<div class="container">
	<h1 class="display-3">도서 등록</h1>
	</div>
	

	</div>
	<div class="container">
<form name="newBook" action="./processAddBook.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
	<div class="form-group row">
	<label class="col-sm-2">도서 코드</label>
	<div class="col-sm-3">
	<input type="text" name="bookId" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">도서명</label>
	<div class="col-sm-3">
	<input type="text" name="name" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">가격</label>
	<div class="col-sm-3">
	<input type="text" name="unitPrice" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">저자</label>
	<div class="col-sm-3">
	<input type="text" name="author" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">출판사</label>
	<div class="col-sm-3">
	<input type="text" name="publisher" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">출판일</label>
	<div class="col-sm-3">
	<input type="text" name="releaseDate" class="form-control">
	</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">총페이지수</label>
	<div class="col-sm-3">
	<input type="text" name="totalPages" class="form-control">
	</div>
	</div>
	
	
	<div class="form-group row">
	<label class="col-sm-2">상세 정보</label>
	<div class="col-sm-5">
	<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
	</div>
	</div>
		
	<div class="form-group row">
	<label class="col-sm-2">분류</label>
	<div class="col-sm-3">
	<input type="text" name="category" class="form-control">
	</div>
	</div>	
		
	<div class="form-group row">
	<label class="col-sm-2">재고수</label>
	<div class="col-sm-3">
	<input type="text" name="unitsInStock" class="form-control">
	</div>
	</div>	
	
	
	<div class="form-group row">
	<label class="col-sm-2">상태</label>
	<div class="col-sm-5">
	<input type="radio" name="condition" value="New"> 신규도서
	<input type="radio" name="condition" value="New"> 중고도서
	<input type="radio" name="condition" value="New"> 재생도서
	</div>
	</div>	
	
<div class="form-group row">
<label class="col-sm-2">이미지</label>
<div class="col-sm-5">
<input type="file" name="bookImage" class="form-control"> 
</div>
</div>
	
		<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
	<input type="submit" class="btn btn-primary" value="등록">
	</div>
	</div>	
	
</form>
	</div>
<%@ include file = "footer.jsp" %>
</body>
</html>





<!-- 이책은 프로그래밍을 처음 접하는 독자를 대상으로 한 파이썬 입문서 입니다 프로그래밍에 대한 경험이 전혀 없어도 목차에따라 문법을 익히고 실습을 진행하면 파이썬을 쉽게배울수 ..  -->

