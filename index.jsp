<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eventify</title>
<link rel="stylesheet" type="text/css" href="styleHack.css">
</head>

<body>3
<body>
	<!-- Header starts here -->
	<header>
		<div class="logo">Eventify</div>
		<nav class="navbar">
			<a class="nav-link" href="index.html">Home</a> <a class="nav-link"
				href="#">Events</a> <a class="nav-link" href="#">About</a> <a
				class="nav-link" href="ContactUs.jsp">Contact Us</a> <a
				class="nav-link" href="PrivacyPolicy.jsp">Privacy Policy</a>
		</nav>
		<div class="navbar-buttons">
			<a class="btn btn-login" href="SignIn.jsp">Sign in</a> <a
				class="btn btn-signup" href="Signup.jsp">Sign Up</a>
		</div>
	</header>
	<!-- Header ends here -->

	<!-- Main content starts here -->
	<section id="hero">
		<div class="hero-content">
			<h1>Discover Your Next Event</h1>
			<p>Find and join the best events near you.</p>
			<a class="cta" href="#">Explore Events</a>
		</div>
	</section>

	<section id="featured-events">
		<h2>Featured Events</h2>
		<div class="event-card">
			<img
				src="https://media.istockphoto.com/id/1366076847/photo/concert-and-festival-background-crowd-of-people-partying.jpg?b=1&s=170667a&w=0&k=20&c=oC3AzG1GSDeCo1VQCml0SnJpMoalO0a_DoiaEGdy6_o="
				alt="Event 1">
			<div class="event-details">
				<h3>Art Exhibition</h3>
				<p>May 15 - May 20, 2023</p>
				<a class="cta" href="Signup.jsp">Register</a>
			</div>
		</div>
		<div class="event-card">
			<img
				src="https://media.istockphoto.com/id/1366076847/photo/concert-and-festival-background-crowd-of-people-partying.jpg?b=1&s=170667a&w=0&k=20&c=oC3AzG1GSDeCo1VQCml0SnJpMoalO0a_DoiaEGdy6_o="
				alt="Event 1" alt="Event 2">
			<div class="event-details">
				<h3>Music Festival</h3>
				<p>June 1 - June 3, 2023</p>
				<a class="cta" href="Signup.jsp">Register</a>
			</div>
		</div>
		<div class="event-card">
			<img
				src="https://media.istockphoto.com/id/1366076847/photo/concert-and-festival-background-crowd-of-people-partying.jpg?b=1&s=170667a&w=0&k=20&c=oC3AzG1GSDeCo1VQCml0SnJpMoalO0a_DoiaEGdy6_o="
				alt="Event 1" alt="Event 3">
			<div class="event-details">
				<h3>Tech Conference</h3>
				<p>July 10 - July 12, 2023</p>
				<a class="cta" href="Signup.jsp">Register</a>
			</div>
		</div>
	</section>

	<footer>
		<p>&copy; 2023 Eventify. All rights reserved.</p>
	</footer>

	<script src="script.js"></script>
</body>
</html>
