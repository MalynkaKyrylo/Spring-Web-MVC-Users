<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<nav class="navbar navbar-expand-lg" style="background-color: #3d85c6;">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" style="color: #fff2cc;">
      <img src="<c:url value="./resources/icons/users.png" />" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      Users Database
    </a>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link" href="./home">Home</a>
        <a class="nav-link" href="./users">Users</a>
        <a class="nav-link" href="./contacts">Contacts</a>
      </div>
    </div>
  </div>
</nav>