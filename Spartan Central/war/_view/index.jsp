<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<title>Spartan Central</title>
<link rel="stylesheet" href="CSS/index.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Fredoka One">
<style>
body {
	background-image: url("resources/Background.png");
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}
h1 {
	color: white;
}

.pennant {
	float: right;
	position: relative;
}
.pennant:hover {
	cursor: pointer;
}

#studentInput:hover+#studentText {
	color: white;
}
#studentText:hover {
	color: white;
}
#findInput:hover+#findText {
	color: white;
}
#findText:hover {
	color: white;
}
#aboutInput:hover+#aboutText {
	color: white;
}
#aboutText:hover {
	color: white;
}

.slideshowContainer {
	max-width: 640px;
	margin: 0 auto;
	text-align: center;
}
.slideshowContainer div {
	background-color: white;
	width: 100%;
	display: inline-block;
	display: none;
}
.slideshowContainer img {
	width: 100%;
	height: auto;
}

.container {
	max-width: 640px;
	margin: 0 auto;
	border-radius: 25px;
	text-align: center;
	background-color: rgb(15, 200, 90);
}

.update {
	color: rgb(220, 220, 200);
}
.header {
	font-family: Georgia;
	font-size: 32px;
}
.content {
	font-family: Georgia;
	font-size: 18px;
}
</style>
</head>

<body>
	<div class="pennant">
		<form action="${pageContext.servletContext.contextPath}/index" method="get">
			<input type="image" src="resources/Pennant.png">
		</form>
	</div>
	<div class="pennant">
		<form action="${pageContext.servletContext.contextPath}/theStudents" method="get">
			<input id="studentInput" type="image" src="resources/Small Pennant.png">
			<p id="studentText" class="imageText">The Students</p>
		</form>
	</div>
	<div class="pennant">
		<form action="${pageContext.servletContext.contextPath}/findUs" method="get">
			<input id="findInput" type="image" src="resources/Small Pennant.png">
			<p id="findText" class="imageText">Find Us</p>
		</form>
	</div>
	<div class="pennant">
		<form action="${pageContext.servletContext.contextPath}/about" method="get">
			<input id="aboutInput" type="image" src="resources/Small Pennant.png">
			<p id="aboutText" class="imageText">About</p>
		</form>
	</div>
	
	<div style="height: 400px"></div>
	
	<c:forEach items="${updateList}" var="update">
		<br>
		<div class="container">
			<a class="update header">${update.fancyDate}: ${update.name}</a>
			<br>
			<a class="update content">${update.text}</a>
		</div>
	</c:forEach>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</body>
</html>
