<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
<%@include file="./fragments/bar_top.jsp"%>
<div class="container m-2">
	<div class="container-sm">
		<div class="row" style="background-color: #FCFCFC;">
			<div class="col-md-6 offset-md-3 pb-3">
				<h4 class="text-center mb-3 mt-3 text-warning">Update Fruit</h4>
				<form action="${pageContext.request.contextPath}/handle-fruit" method="post">
				   <div>
                    <input type="hidden" value="${fruit.id}" name="id" class="form-control">
                   </div> 
					<div>
						<label for="name"><span style="font-size:12px;">Name</span></label>
						<input type="text"	class="form-control" id="name" name="name"
							placeholder="Name..." value="${fruit.name}">
					</div>
					<div>
						<label for="description"><span style="font-size:12px;">Description</span></label>
						<textarea class="form-control" name="description" id="description"
							rows="3" placeholder="Description..." >${fruit.description}</textarea>
					</div>
					<div>
						<label for="price"><span style="font-size:12px;">Price</span></label>
						<input type="text"	class="form-control" id="price" name="price"
							placeholder="Price..." value="${fruit.price}">
					</div>
					<div class="container text-left"><br>
						<a href="${pageContext.request.contextPath}/fruits" class="btn btn-outline-secondary btn-sm">Cancel</a>
						&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary btn-sm">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="<c:url value="/resources/js/script-maskMoney.js" />"></script>
</body>
</html>