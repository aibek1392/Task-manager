<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.task.model.Task"%>
<%@page import="com.task.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<head>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
</head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Edit your task</title>
</head>

<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
		response.sendRedirect("/login");
	}
	Task t = (Task) request.getAttribute("task");
	DateFormat df = new SimpleDateFormat("YYYY-MM-d");

	String sDate = df.format(t.getStartDate());
	String eDate = df.format(t.getEndDate());
	%>
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">


			<a class="navbar-brand btn-danger btn-lg" href="/logout">Logout</a>

		</div>
	</nav>


	<div class="container">

		<div>
			<h1>Task Form</h1>
		</div>
		<div>
			<h1 class="ui green inverted header">Please make Changes and save</h1>
		</div>
		<div class="ui tiny form md" style="width:20%">
			<form class="form-control" method="post"
				action="/${user.getName()}/${user.getId()}/edittask/${task.getId()}">
				<div class="field">
					<label class="form-label">Task Name</label> <input type="text"
						name="tname" value="${task.getName()}" required="required">
				</div>
				<div class="field">
					<label class="field">Description</label> <input type="text"
						name="description" value="${task.getDescription()}"
						required="required">
				</div>
				<div class="field">
					<label class="form-label">Priority</label> <select name="priority">
						<option value="low">Low</option>
						<option value="medium">Medium</option>
						<option value="high">High</option>
					</select>
				</div>
				<div class="mb-3">
					<label class="form-label">Start Date:</label> <input type="date"
						name="startdate" value="<%=sDate%>">
				</div>
				<div class="mb-3">
					<label class="form-label">End Date:</label> <input type="date"
						name="enddate" value="<%=eDate%>">
				</div>
				
				<div class="ui buttons">
					<button class="ui positive button" type="submit">Save</button>
					<div class="or"></div>
					<button class="ui button" >Cancel</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>