<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
   input:not(input[type=submit]) { width:100%; }
   input[type=submit] { width : 100px; }
   #goList  { width : 80px; }
   
   td { 
      padding:10px;
      width: 700px;
      text-align: center;
   }
   td:nth-of-type(1) {
      width : 200px;
   }
   td:nth-of-type(2) {
      text-align: left;
   }
   
   td:not([colspan]):first-child {
      background: black;
      color : white;
      font-weight: bold;
   }
   
   input[readonly] {
      background: #EEE;
   }

</style>
</head>
<body>
  <main>
  	<%@include file ="/WEB-INF/include/menus.jsp" %>
	<h2>게시글 상세정보</h2>
	<table>
	 <tr>
	   <td>번호</td>
	   <td>${vo.bno}</td>
	 </tr>
	 <tr>
	   <td>메뉴</td>
	   <td>${vo.menu_id}</td>
	 </tr>
	 <tr>
	   <td>제목</td>
	   <td>${vo.title}</td>
	 </tr>
	 <tr>
	   <td>내용</td>
	   <td>${vo.content}</td>
	 </tr>
	 <tr>
	   <td>작성자</td>
	   <td>${vo.writer}</td>
	 </tr>
	 <tr>
	   <td>작성일</td>
	   <td>${vo.regdate}</td>
	 </tr>
	 <tr>
	   <td>조회수</td>
	   <td>${vo.hit}</td>
	 </tr>
	 <tr>
	   <td colspan="2">
	   	<a class="btn btn-primary btn-sm" href="/Board/WriteForm" role="button">수정</a>
	   	<a class="btn btn-primary btn-sm" href="/Board/Delete" role="button">삭제</a>
	   	<a class="btn btn-primary btn-sm" href="/" role="button">Home</a>
	   </td>
	 </tr>
	
	</table>	
	
  </main>
  
  <script>
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/Users/List';
  	})
  
  </script>
  
</body>
</html>





