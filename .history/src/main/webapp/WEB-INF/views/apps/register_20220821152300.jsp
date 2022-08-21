<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어플리케이션 등록</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
  <%-- <div class="row flex-xl-nowrap"> --%>
  <%-- <main class="col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content"> --%>
  <h1 class="bd-title" id="content">Application 등록</h1>
  <form name="frm">
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
    <label for="app_link">홈페이지</label>
      <input type="text" class="form-control" name="app_link" id="app_link" placeholder="어플리케이션 홈페이지">
    </div>
    <div class="col">
    <label for="app_size">크기</label>
      <input type="text" class="form-control" name="app_size" id="app_size" placeholder="어플리케이션 크기">
    </div>
  </div>
  <div class="row">
    <div class="col">
      <label for="app_dc">상세설명</label>
      <textarea class="form-control" name="app_dc" id="app_dc" rows="3"></textarea>
    </div>
  </div>
</form>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <button class="btn btn-primary me-md-2" id="btnSave" type="button">등록</button>
  <button class="btn btn-secondary" type="button">취소</button>
</div>
<%-- </main> --%>
<%-- </div> --%>
</div>
</body>
<script>
$(function() {

$("#btnSave").click(insert);
});

function insert(){
  const app_name = $("#app_name").val();
  const app_now_version = $("#app_now_version").val();
  const app_licenses = $("#app_licenses").val();
  const app_repository = $("#app_repository").val();
  const app_link = $("#app_link").val();
  const app_size = $("#app_size").val();
  const app_dc = $("#app_dc").val();

  if(app_name == ""){
    alert("이름을 입력해주세요.");
    $("#app_name").focus();
    return false;
  }
  if(app_now_version == ""){
    alert("버전을 입력해주세요.");
    $("#app_now_version").focus();
    return false;
  }
  if(app_licenses == ""){
    alert("앱 이름을 입력해주세요.");
    $("#app_licenses").focus();
    return false;
  }
  if(app_repository == ""){
    alert("앱 이름을 입력해주세요.");
    $("#app_repository").focus();
    return false;
  }
  if(app_link == ""){
    alert("앱 이름을 입력해주세요.");
    $("#app_link").focus();
    return false;
  }
  if(app_size == ""){
    alert("앱 이름을 입력해주세요.");
    $("#app_size").focus();
    return false;
  }
  if(app_dc == ""){
    alert("앱 이름을 입력해주세요.");
    $("#app_dc").focus();
    return false;
  }
}
</script>
</html>