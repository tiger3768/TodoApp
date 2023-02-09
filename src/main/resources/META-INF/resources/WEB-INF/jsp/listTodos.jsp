<%@include file="common/header.jspf" %>
<html>
	<head>
		<link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel = "stylesheet">
		<title>Todo List</title>
	</head>
	<body>
	<%@include file="common/navigation.jspf" %>
		<div class = "container">
			<h1>Your Todos</h1> 
			<table class="table">
				<thead>
					<tr>
						<th>Description</th>
						<th>Target Date </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td> <a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
							<td> <a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="add-todo" class="btn btn-success">Add Todo</a> 
		</div>
		<%@include file="common/footer.jspf" %>
	</body>
</html>