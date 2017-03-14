<!DOCTYPE html>

<html>
<head>
<title>Spartan Central</title>
<link rel="stylesheet" href="CSS/index.css">
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Fredoka One">
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
	<div id="findDiv" class="pennant">
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
	<div class="container">
		<div style="display: inline-block;">
			<img src="resources/Spartan Central (1).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (2).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (3).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (4).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (5).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (6).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (7).jpg" />
		</div>
		<div>
			<img src="resources/Spartan Central (8).jpg" />
		</div>
	</div>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>
