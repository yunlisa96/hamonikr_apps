<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어플리케이션 목록</title>
<style>
.search{
       position: relative;
       box-shadow: 0 0 40px rgba(51, 51, 51, .1);
         
       }

       .search input{

        height: 60px;
        text-indent: 25px;
        border: 2px solid #d6d4d4;


       }


       .search input:focus{

        box-shadow: none;
        border: 2px solid blue;


       }

       .search .fa-search{

        position: absolute;
        top: 20px;
        left: 16px;

       }

       .search button{

        position: absolute;
        top: 5px;
        right: 5px;
        height: 50px;
        width: 110px;
        background: blue;

       }
</style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
<form id="frm" method="get" action="/apps/list">
<div class="row height d-flex justify-content-center align-items-center">
                      <div class="col-md-8">

                        <div class="search">
                          <i class="fa fa-search"></i>
                          <input type="text" class="form-control" name="keyword" id="keyword" value="${keyword}" placeholder="패키지명을 입력하세요">
                          <button class="btn btn-primary" type="submit" form="frm">검색</button>
                        </div>
                        
                      </div>
                      
                    </div>
                    </form>
<div class="row row-cols-1 row-cols-md-3 g-4">
  <c:forEach var="list" items="${appslist}" varStatus="status">
  <div class="col">
    <div class="card h-100">
      <%-- <img src="..." class="card-img-top" alt="..."> --%>
      <div class="card-body">
        <h5 class="card-title"><a href="/apps/detail?seq=${list.seq}">${list.app_name}</a></h5>
        <p class="card-text">${list.app_dc}</p>
        <p class="card-text">version: ${list.app_now_version}</p>
        <p class="card-text">licenses: ${list.app_licenses}</p>
        <p class="card-text">register_date: ${list.rgstr_date}</p>
      </div>
    </div>
  </div>
   </c:forEach>
</div>
<button type="button" class="btn btn-primary" onclick="location.href='/apps/register'">등록</button>
</div>
</body>
</html>