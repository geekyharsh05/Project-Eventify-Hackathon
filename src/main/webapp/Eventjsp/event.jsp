<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Event Listing Page</title>
  <link rel="stylesheet" href="event.css">
</head>
<body>
  <!-- Header starts here -->
  <header>
    <div class="logo">Eventify</div>
    <nav class="navbar">
      <a class="nav-link" href="index.jsp">Home</a>
      <a class="nav-link" href="event.jsp">Events</a>
      <a class="nav-link" href="AboutUs.jsp">About Us</a>
      <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
      <a class="nav-link" href="Privacypolicy.jsp">Privacy Policy</a
      >
    </nav>
    <div class="navbar-buttons">
      <a class="btn btn-login" href="#">Login</a>
      <a class="btn btn-signup" href="#">Sign Up</a>
    </div>
  </header>
<!-- Header ends here -->
<h1>Our Upcoming Events</h1>
<section id="event-grid">
  <div class="event-card">
    <img src="https://images.hindustantimes.com/img/2021/03/06/1600x900/pjimage_-_2021-03-06T192427.069_1615038899966_1615038907778.jpg" alt="Event 1">
    <h3>Art Exhibition</h3>
    <p>May 15 - May 20, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://images.pexels.com/photos/3052360/pexels-photo-3052360.jpeg?cs=srgb&dl=pexels-rahul-pandit-3052360.jpg&fm=jpg" alt="Event 2">
    <h3>Music Festival</h3>
    <p>June 1 - June 3, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://www.marsdd.com/wp-content/uploads/2020/01/blog-tech-conferences.jpg" alt="Event 3">
    <h3>Tech Conference</h3>
    <p>July 10 - July 12, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://www.dailypioneer.com/uploads/igallery/today-s-photo---models-walk-the-ramp-at-india-fashion-week-4-2019-03-16.jpg" alt="Event 4">
    <h3>Fashion Show</h3>
    <p>August 5 - August 7, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://hindi.thebridge.in/h-upload/2022/05/07/26853-khelo-india-youth-games.webp" alt="Event 5">
    <h3>Sports Meet</h3>
    <p>September 15 - September 18, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/05/Popular-Food-Festival-In-India.jpg?fit=1024%2C683&ssl=1" alt="Event 6">
    <h3>Food Festival</h3>
    <p>October 20 - October 22, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/05/Popular-Food-Festival-In-India.jpg?fit=1024%2C683&ssl=1" alt="Event 6">
    <h3>Food Festival</h3>
    <p>October 20 - October 22, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
  <div class="event-card">
    <img src="https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/05/Popular-Food-Festival-In-India.jpg?fit=1024%2C683&ssl=1" alt="Event 6">
    <h3>Food Festival</h3>
    <p>October 20 - October 22, 2023</p>
    <a class="cta" href="#">Register</a>
  </div>
</section>
<footer>
  <div class="footer-content">
    <p>Copyright © 2023 Eventify</p>
    <ul>
      <li><a href="#">Privacy Policy</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</footer>
</body>
</html>