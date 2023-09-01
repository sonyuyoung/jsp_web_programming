<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import = "dao.ProductRepository" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
String cartId=session.getId();

%>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>

<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				장바구니
			</h1>
			</div>
			</div>
		<div class="container">
		<div class="row">
		<table width="100%">
		<tr>
	<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>>" class="btn btn-danger">삭제하기</a></td>
	<td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
		</tr>
		</table>
		</div>
<div style ="padding-top:50px">
<table class="table table-hover">
<tr>
<th>상품</th>
<th>가격</th>
<th>수량</th>
<th>소계</th>
<th>비고</th>
</tr>
<%
int sum =0;
ArrayList<Product> cartList =(ArrayList<Product>)
session.getAttribute("cartlist");
if(cartList==null)
	cartList =new ArrayList<Product>();

for(int i =0;i<cartList.size();i++){	//상품리스트 하나씩 출력
	Product product = cartList.get(i);
	int total =product.getUnitPrice()*product.getQuantity();
	sum=sum+total;
	

%>

<tr>
<td><%=product.getProductId()%> - <%=product.getPname()%></td>
<td><%=product.getUnitPrice()%></td>
<td><%=product.getQuantity()%></td>
<td><%=total%></td>
<td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a></td>

</tr>
<%
}
%>

<tr>
<th></th>
<th></th>
<th>총액</th>
<th><%=sum %></th>
<th></th>
</tr>
</table>
<a href="./products.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
</div>
<hr>
</div>
<%@ include file = "footer.jsp" %>

</body>
</html>