<%@include file="common/header.jspf" %>
<html>
	<head>
		<link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel = "stylesheet">
		<title>Home</title>
	</head>
	<body>
	<%@include file="common/navigation.jspf" %>
		<div class = "container">
			<h1>Hello ! ${name}</h1>
		</div>
		<%@include file="common/footer.jspf" %>
	</body>
</html>