<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Items</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<form>
							<div class="form-row">
								<div class="form-group col-md-6">
									<lable for="inputEmail4">Name</lable>
									<input type="text" class="form-control" id="inputEmail4"
										value="">
								</div>

								<div class="form-group col-md-6">
									<lable for="inputEmail4">Email</lable>
									<input type="email" class="form-control" id="inputEmail4"
										value="">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<lable for="inputEmail4">Mobile No</lable>
									<input type="number" class="form-control" id="inputEmail4"
										value="">
								</div>

								<div class="form-group col-md-6">
									<lable for="inputEmail4">Address</lable>
									<input type="text" class="form-control" id="inputEmail4"
										value="">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<lable for="inputEmail4">Landmark</lable>
									<input type="text" class="form-control" id="inputEmail4"
										value="">
								</div>

								<div class="form-group col-md-6">
									<lable for="inputEmail4">City</lable>
									<input type="text" class="form-control" id="inputEmail4"
										value="">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<lable for="inputEmail4">State</lable>
									<input type="text" class="form-control" id="inputEmail4"
										value="">
								</div>

								<div class="form-group col-md-6">
									<lable for="inputEmail4">Zip</lable>
									<input type="number" class="form-control" id="inputEmail4"
										value="">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-12">
									<label for="PaymentType">Payment Type</label> <select
										class="form-control">
										<option>--Select--</option>
										<option>Cash On Delivery</option>
									</select>
									</div>
								</div>
								<div class="text-center">
									<button class="btn btn-warning">Order Now</button>
									<a href="index.jsp" class="btn btn-success">Continue
										Shopping</a>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>