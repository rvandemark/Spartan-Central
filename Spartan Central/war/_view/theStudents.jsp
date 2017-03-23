<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<title>Spartan Central</title>
<link rel="stylesheet" href="CSS/theStudents.css">
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

.stylized {
	font-family: "Times New Roman";
	color: white;
	text-shadow: -1px 0 rgb(15, 200, 90), 0 1px rgb(15, 200, 90), 1px 0 rgb(15, 200, 90), 0 -1px rgb(15, 200, 90);
}

.intro {
	max-width: 800px;
	position: relative;
	left: 50px;
	font-style: oblique;
}
.large {
	font-size: 64px;
}
.small {
	font-size: 26px;
}

.bioContainer {
	width: 800px;
	min-height: 200px;
	border-radius: 25px;
	position: relative;
	left: 50px;
	background-color: rgb(56, 146, 68);
}
.bioContainer img {
	width: 200px;
	height: 200px;
	float: left;
}

.indented {
	position: relative;
	width: 780px;
	left: 20px;
	top: 10px;
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
	
	<div style="height:85px"></div>
	
	<a class="stylized intro large">The Students Behind the Business</a>
	<p class="stylized intro small">The Graham Innovation Scholars are a group of students that come from a 
		variety of backgrounds and each have a unique plan for their future. However, they all have
		something in common, and that is a mind for business and blah blah some other sappy stuff</p>
	
	<div style="height:30px"></div>
	
	<c:forEach items="${bios}" var="bio">
		<div class="bioContainer">
			<img src="${bio.imageUrl}">
			<h1 class="stylized indented">${bio.name}: ${bio.position}</h1>
			<h2 class="stylized indented">${bio.disciplines}</h2>
			<p class="stylized indented">${bio.text}</p>
		</div>
		<br>
	</c:forEach>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</body>
</html>