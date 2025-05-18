<%@page import="com.todo.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
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
    <h1 class="text-uppercase">all notes: </h1>
    
    <div class="row">
    
    <div class="col-12">
    <%
    
	Session s= FactoryProvider.getFactory().openSession();
	Query q= s.createQuery("from Note");
	List<Note> list=q.list();
	for(Note note: list){
	
    %>
    
<!--     All Card  -->

    
    <div class="card mt-2">
  	<div class="card-body px-4">
      <img src="image/notepad.png" class="card-img-top" style="max-width:80px; m-2" alt="...">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p class="card-text"><%=note.getAddedDate() %></p>
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="#" class="btn btn-primary">Update</a>
    
  </div>
</div>
    
    <%
    s.close();
	}    
    %>
    </div>
    </div>
    
    
   
 </div>   
</body>
</html>