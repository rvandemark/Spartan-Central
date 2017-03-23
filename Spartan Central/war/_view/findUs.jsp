<!DOCTYPE html>

<html>
<head>
<title>Spartan Central</title>
<link rel="stylesheet" href="CSS/findUs.css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Fredoka One">
<style>
body {
	background-image: url("resources/Background.png");
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
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

.mapContainer {
	margin: 0 auto;
	border: 0;
	text-align: center;
	width: 1000px;
	height: 375px;
	left: 100px;
}

.mapContainer iframe {
	width: 750px;
	height: 300px;
	border: 0;
}

.mapContainer div {
	width: 250px;
	display: inline-block;
	float: right;
	color: white;
}

.stylized {
	font-family: "Times New Roman";
	font-style: oblique;
	color: white;
	text-shadow: -1px 0 rgb(15, 200, 90), 0 1px rgb(15, 200, 90), 1px 0 rgb(15, 200, 90), 0 -1px rgb(15, 200, 90);
}
.large {
	font-size: 50px;
	text-decoration: underline;
}
.small {
	font-size: 30px;
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
	
	<div style="height:250px"></div>
	
	<div class="mapContainer">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3058.020003076719!2d-
				76.73177848486525!3d39.963305479420505!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!
				4f13.1!3m3!1m2!1s0x89c88ea424ea8a8b%3A0x8343bf18b79f19cb!2sCentral+Market
				+House!5e0!3m2!1sen!2sus!4v1490148238987"
			frameborder="0" allowfullscreen>
		</iframe>
		<div>
			<a class="stylized large">Hours</a><br>
			<a class="stylized small">Tuesday, Thursday, and Saturday</a><br>
			<a class="stylized small">9:00 - 2:00</a><br><br><br>
			<a class="stylized small">Also visit us for First Fridays and special events announced on the homepage!</a>
		</div>
		<p class="stylized small">York Central Market: 34 W Philadelphia St, York, PA 17401</p>
	</div>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</body>
</html>