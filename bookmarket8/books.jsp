<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="dto.Book" %>
<%@page import ="dao.BookRepository" %>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>도서목록</title>
</head>
<body>
<jsp:include page="menu.jsp"/>

<div class="jumbotron">
<div class="container">
<h1 class="display-3">도서목록</h1>
</div>
</div>
<% 
BookRepository dao = BookRepository.getInstance();
ArrayList<Book> listOfBooks=dao.getAllBook();
%>

<div class="container">
<%
for(int i=0;i<listOfBooks.size();i++){
Book book = listOfBooks.get(i);
%>

<div class="row" align="left">
<div class="col-md-3">
<img src="/Users/u020/upload/<%=book.getFilename()%>" style="width:100%">
</div>
<div class="col-md-6">
<h4>[<%=book.getCategory()%>]
<%=book.getName()%></h4>
<p><%=book.getDescription()%></p>
<p><%=book.getAuthor() %>|
<%=book.getPublisher() %>|
<%=book.getUnitPrice() %>원</p>
<a href="./book.jsp?id=<%=book.getBookId() %>" class="btn btn-secondary" role="button">도서정보 &raquo;</a>
</div>
</div>
<hr>
<%} %>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>