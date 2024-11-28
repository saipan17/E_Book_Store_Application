<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.AddBooksImpl"%>
<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old  Books</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.crd-ho : hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

   <div class = "container-fluid">
   <div class = "row p-3">
   <%
			AddBooksImpl ad1 = new AddBooksImpl(DbConnect.getConn());
			List<BookDetails> list1 = ad1.allOldBooks();

			for (BookDetails b : list1) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhoto()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor()%></p>
						<p>Categories : <%=b.getBookCategory()%></p>
						<div class="row ml-4">
						        <a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fas fa-cart-plus"></i> Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Detls</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
   </div>
   </div>
</body>
</html>