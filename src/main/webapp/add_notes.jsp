<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container ">
    <%@include file="navbar.jsp" %>
    <br>
   <!--  //Add Notes Form--> 
    
    <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input
     type="text"
     name="title"
   	 class="form-control" 
     placeholder="Enter here"
     required="required"
     id="title">
  </div>
  
  <div class="mb-3">
    <label type="text" for="content">Content</label>
    <textarea id="content"
     name="content"
     placeholder="Enter your content here"
     class="form-control"
     style="height:200px";
     required="required"
     
    ></textarea>
  </div>
  
	<div class="container text-center">
	  <button type="submit" class="btn btn-primary">Add</button>
	</div>
</form>
    </div>

</body>
</html>