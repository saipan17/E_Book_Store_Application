<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.AddBooksImpl"%>
<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Books</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.crd-ho : hover {
	background-color: #fcf7f7;
}

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>

	<c:if test="${not empty addCart }">

		<div id="toast">${addCart}</div>

		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

   <c:remove var = "addCart" scope = "session"/>
	</c:if>


	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			<%
			AddBooksImpl ad1 = new AddBooksImpl(DbConnect.getConn());
			List<BookDetails> list1 = ad1.allNewBooks();

			for (BookDetails b : list1) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhoto()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row ml-4">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fas fa-cart-plus"></i> Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Detls</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
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