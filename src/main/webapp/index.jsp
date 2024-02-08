 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Indian Cricket Team</title>
</head>
<body class="bg-dark">

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="card">
				<div class="card-header text-center fs-3">
				Cricketer
				</div>
				
				<% 
				String msg	 =(String) session.getAttribute("msg");
				
				if(msg != null)
				 { 
					%>
					 <p class="text-center fs-4 text-success" ><%=msg %> </p>
					<%
				}
				session.removeAttribute("msg");
				%>
				
					<div class="card-body">


						<form method="post" action="crickRegister">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Name
									</label> <input type="text" class="form-control" name="Name">
							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Jersey No
									</label> <input type="text" class="form-control" name="J_No">
							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Role
									</label> <input type="text" class="form-control" name="Role">
							</div>



							<!-- <div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control" name="email">
							</div>
							
							
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="Password">
							</div>
							 -->
							
							<button type="submit" class="btn btn-primary col-md-12 ">Register </button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>