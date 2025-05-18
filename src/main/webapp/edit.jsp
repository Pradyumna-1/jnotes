<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>

</head>
<body>
<div class="container ">
    <%@include file="navbar.jsp" %>
    <h1 class="text-capitalize">Edit Page: </h1>
    
    <%
    	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    	Session s= FactoryProvider.getFactory().openSession();	
   		Note note = (Note)s.get(Note.class,noteId);
    %>
    
      <form action="UpdateServlet" method="post">
  	<div class="mb-3">
  	<input name="noteId" value="<%=note.getId()%>" type="hidden"/>
    <label for="title" class="form-label">Note title</label>
    <input
     type="text"
     name="title"
   	 class="form-control" 
     placeholder="Enter here"
     required="required"
     id="title"
	value="<%=note.getTitle() %>"
     />
  </div>
  
  <div class="mb-3">
    <label type="text" for="content">Content</label>
    <textarea id="content"
     name="content"
     placeholder="Enter your content here"
     class="form-control"
     style="height:200px";
     required="required"
    ><%=note.getContent() %>	
    </textarea>
  </div>
  	
	<div class="container">
	  <button type="submit" class="btn btn-success">Update Your Note</button>
	</div>
</form>
    
    </div>
</body>
</html>