<html>
<head>
<title>Welcome Page</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet"></link>

</head>
<body>
	<%@ include file="common/navigation.jspf"%>
	<div class="container">
		<h1>Welcome ${name}</h1>
		<a href="list-todos">Manage</a> your todos
	</div>
</body>
</html>
