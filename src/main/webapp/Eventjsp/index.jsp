<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Eventify</title>
  <link rel="stylesheet" type="text/css" href="index.css" />
  <script src="https://unpkg.com/typewriter-effect@latest/dist/core.js"></script>
</head>

<body>
  <!-- Header starts here -->
  <header>
		<div class="logo">Eventify</div>
		<nav class="navbar">
			<a class="nav-link" href="index.html">Home</a> 
			<a class="nav-link" href="event.jsp">Events</a> 
			<a class="nav-link" href="AboutUs.jsp">About Us</a> 
			<a class="nav-link" href="ContactUs.jsp">Contact Us</a> 
			<a class="nav-link" href="PrivacyPolicy.jsp">Privacy Policy</a>
			 <div class="middle-section">
        <input class="search-bar" type="text" placeholder="Search">
        <button class="search-button">
           <a href="#featured-events">
          <img class="search-icon" src="img/icons8-search.gif">
          
          <div class="tooltip">Search</div>
          </a>
          </button>
		</nav>
		<div class="navbar-buttons">
			<a class="btn btn-login" href="SignIn.jsp">Sign in</a> 
			<a
				class="btn btn-signup" href="SignUp.jsp">Sign Up</a>
		</div>
	</header>
  <!-- Header ends here -->

  <!-- Main content starts here -->
  <section id="hero">
    <div class="hero-content">
      <h1>Discover Your Next Event</h1>
      <p>Events Like</p>
      <p id="typewriter"></p>
      <a class="cta" href="event.jsp">Explore Events</a>
    </div>
  </section>
  <hr />
  <h1>Featured Events</h1>
  <section id="featured-events">
    <div class="event-card">
      <img
        src="https://images.hindustantimes.com/img/2021/03/06/1600x900/pjimage_-_2021-03-06T192427.069_1615038899966_1615038907778.jpg"
        alt="Event 1" />
      <div class="event-details">
        <h3>Art Exhibition</h3>
        <p>May 15 - May 20, 2023</p>
        <a class="cta" href="BookTickets.jsp">Register</a>
      </div>
    </div>
    <div class="event-card">
      <img
        src="https://images.pexels.com/photos/3052360/pexels-photo-3052360.jpeg?cs=srgb&dl=pexels-rahul-pandit-3052360.jpg&fm=jpg"
        alt="Event 2" />
      <div class="event-details">
        <h3>Music Festival</h3>
        <p>June 1 - June 3, 2023</p>
        <a class="cta" href="BookTickets.jsp">Register</a>
      </div>
    </div>
    <div class="event-card">
      <img src="https://www.marsdd.com/wp-content/uploads/2020/01/blog-tech-conferences.jpg" alt="Event 3" />
      <div class="event-details">
        <h3>Tech Conference</h3>
        <p>July 10 - July 12, 2023</p>
        <a class="cta" href="BookTickets.jsp">Register</a>
      </div>
    </div>
  </section>

<footer>
		<div class="footer-content">
			<p>Copyright © 2023 Eventify</p>
			<ul>
				<li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
			</ul>
		</div>
	</footer>

  <script src="index.js"></script>
</body>

</html>
