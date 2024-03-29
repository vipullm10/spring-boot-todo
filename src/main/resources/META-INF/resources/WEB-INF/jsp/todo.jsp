<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet"></link>
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.css"
	rel="stylesheet"></link>
<title>Add Todo Page</title>
</head>
<body>
	<%@ include file="common/navigation.jspf"%>
	<div class="container">
		<h1>Enter Todo Details</h1>
		<form:form method="post" modelAttribute="todo">
			<fieldset class="mb-3">
				<form:label path="description">Description:</form:label>
				<form:input type="text" required="required" path="description" />
				<form:errors path="description" cssClass="text-warning" />
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="targetDate">Description:</form:label>
				<form:input type="text" required="required" path="targetDate" />
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>
			<form:input type="text" hidden="true" path="done" />
			<form:input type="text" hidden="true" path="id" />
			<input type="submit" class="btn btn-success" />
		</form:form>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

	<script type="text/javascript">
		$('#targetDate').datepicker({
			format : "yyyy-mm-dd",
			startDate : "-3d"
		});
	</script>
</body>
</html>





