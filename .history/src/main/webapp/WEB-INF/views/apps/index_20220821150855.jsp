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
  <%-- <div class="row flex-xl-nowrap"> --%>
  <%-- <main class="col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content"> --%>
  <h1 class="bd-title" id="content">Application 등록</h1>
  <form>
  <div class="row">
    <div class="col">
    <label for="app_name">이름</label>
      <input type="text" class="form-control" name="app_name" id="app_name" placeholder="이름">
    </div>
    <div class="col">
    <label for="app_now_version">버전</label>
      <input type="text" class="form-control" name="app_now_version" id="app_now_version" placeholder="버전">
    </div>
  </div>
  <div class="row">
    <div class="col">
    <label for="app_licenses">라이센스</label>
      <input type="text" class="form-control" name="app_licenses" id="app_licenses" placeholder="라이센스">
    </div>
    <div class="col">
    <label for="app_repository">저장소위치</label>
      <input type="text" class="form-control" name="app_repository" id="app_repository" placeholder="저장소위치">
    </div>
  </div>
  <div class="row">
    <div class="col">
    <label for="app_link">크기</label>
      <input type="text" class="form-control" name="app_link" id="app_link" placeholder="어플리케이션 홈페이지">
    </div>
    <div class="col">
    <label for="app_size">홈페이지</label>
      <input type="text" class="form-control" name="app_size" id="app_size" placeholder="어플리케이션 크기">
    </div>
  </div>
  <div class="row">
    <label for="app_dc">상세설명</label>
    <textarea class="form-control" name="app_dc" id="app_dc" rows="3"></textarea>
  </div>
</form>
<%-- </main> --%>
<%-- </div> --%>
</div>
</body>
</html>