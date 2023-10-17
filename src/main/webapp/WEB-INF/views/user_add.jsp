<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #b8d1fa;">
<%@include file="./fragments/bar_top.jsp"%>
<div class="container m-2">
	<div class="container-sm" style="background-color: #ffecec;">
		<div class="row">
			<div class="col-md-6 offset-md-3 pb-3">
				<h4 class="text-center mb-3 mt-3 text-warning">Add User</h4>
				<!-- form -->
				<form action="handle-user" method="post">
					<div>
						<label for="first_name"><span style="font-size:12px;">First Name</span></label>
						<input type="text" class="form-control fw-light" id="first_name" name="first_name"
							placeholder="First Name...">
					</div>
					<div>
						<label for="last_name"><span style="font-size:12px;">Last Name</span></label>
						<input type="text" class="form-control fw-light" id="last_name" name="last_name"
			                placeholder="Last name...">
					</div>
					<div>
						<label for="email"><span style="font-size:12px;">Email</span></label>
						<input type="email" class="form-control fw-light"
						pattern="^([a-z0-9_.-]+)@([a-z0-9.-]+)\.([a-z]{2,4})$"
						onkeyup="this.value = this.value.replace(/[^a-zA-Z0-9_.-]/g, '');"
						id="email" name="email"
							placeholder="name@mail.com">
					</div>
					<div class="container text-left"><br>
						<a href="${pageContext.request.contextPath}/users" class="btn btn-outline-secondary btn-sm">Cancel</a>
						&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary btn-sm">Add</button>
					</div>
				</form>
				<!-- end form -->
			</div>
		</div>
	</div>
</div>
</body>
</html>