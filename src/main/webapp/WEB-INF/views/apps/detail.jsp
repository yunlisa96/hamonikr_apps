<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어플리케이션 상세</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
  <%-- <div class="row flex-xl-nowrap"> --%>
  <%-- <main class="col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content"> --%>
  <h1 class="bd-title" id="content">Application 상세</h1>
  <h5 class="card-title"><c:out value="${appsdetail.app_name}" /></h5>
        <p class="card-text">${appsdetail.app_dc}</p>
        <p class="card-text">version: ${appsdetail.app_now_version}</p>
        <p class="card-text">licenses: ${appsdetail.app_licenses}</p>
        <p class="card-text">register_date: ${appsdetail.rgstr_date}</p>

</html>