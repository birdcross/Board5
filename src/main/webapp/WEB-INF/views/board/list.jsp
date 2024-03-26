<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<style>
  td { 
    padding     : 10px;  
    width       : 150px;
    text-align  : center; 
  }
  
  tr:first-child {
     background-color: black;
     color : white;
     font-weight: bold;
     /* SCSS 문법에 적용 
     https://www.jsdelivr.com/package/npm/browser-scss
      */
     td {
        border-color : white;
     }
  }
 
  tr:nth-child(2) > td {
     text-align : right;
  }
  
</style>

</head>
<body>
	<main>  
	  <h2>사용자 목록(수정)</h2>
	  <table>
	    <tr>
	      <td>번호</td>
	      <td>메뉴이름</td>
	      <td>제목</td>
	      <td>목차</td>
	      <td>글쓴이</td>
	      <td>날짜</td>
	      <td>조회수</td>
	    </tr>
	    <tr>
	      <td colspan="7">
	        [<a href="/Board/WriteForm">글쓰기</a>]
	      </td>
	    </tr>
	    
	    <c:forEach  var="boardVo" items="${boardList}" >
	    <tr>
	      <td>${ boardVo.bno}</td>
	      <td>${ boardVo.menu_id}</td>
	      <td>${ boardVo.title}</td>
	      <td>${ boardVo.content}</td>
	      <td>${ boardVo.writer}</td>
	      <td>${ boardVo.regdate}</td>
	      <td>${ boardVo.hit}</td>

	    </tr>
	    </c:forEach>
	    
	    
	  </table>
	
	</main>
</body>
</html>








