<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
  <div class="row flex-xl-nowrap">
  <main class="col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content">
  <h1 class="bd-title" id="content">Application 등록</h1>
  <form>
  <div class="row">
    <div class="col">
    <label for="app_name">Example label</label>
      <input type="text" class="form-control" name="app_name" id="app_name" placeholder="First name">
    </div>
    <div class="col">
    <label for="formGroupExampleInput">Example label</label>
      <input type="text" class="form-control" name="app_dc" id="app_dc" placeholder="앱 상세설명">
    </div>
  </div>
</form>
</main>
</div>
</div>
</body>
</html>