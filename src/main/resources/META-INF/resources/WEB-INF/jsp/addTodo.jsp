<%@include file="common/header.jspf" %>
<html>
	<head>
		<link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel = "stylesheet">
		<link href="/webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet" >
		<title>Add Todo</title>
	</head>
	<body>
		<%@include file="common/navigation.jspf" %>
		<div class = "container">
			<h2>Add Todo</h2>
			<pre>${errorMessage}</pre>
			<form:form method = "post" modelAttribute = "todo">
				<fieldset class="mb-3">				
					<form:label path="description">Description</form:label>
					<form:input type="text" path="description" required="required"/>
					<form:errors path="description" cssClass="text-warning"/>
				</fieldset>
				<fieldset class="mb-3">				
					<form:label path="targetDate">Target Date</form:label>
					<form:input type="text" path="targetDate" required="required"/>
					<form:errors path="targetDate" cssClass="text-warning"/>
				</fieldset>
				<form:input type="hidden" path="id" />
				<input type="submit" class = "btn btn-success" />
			</form:form>
		</div>
		<%@include file="common/footer.jspf" %>
		<script type="text/javascript">
			$('#targetDate').datepicker({
	    		format: 'yyyy-mm-dd'
			});
		</script>
	</body>
</html> 