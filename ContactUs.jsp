<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Eventify</title>
    <link rel="stylesheet" type="text/css" href="ContactUs.css">
</head>

<body>
    <!-- Header starts here -->
    <header>
        <div class="logo">Eventify</div>
        <nav class="navbar">
            <a class="nav-link" href="index.jsp">Home</a>
            <a class="nav-link" href="#">Events</a>
            <a class="nav-link" href="#">About</a>
            <a class="nav-link active" href="ContactUs.jsp">Contact Us</a>
            <a class="nav-link" href="PrivacyPolicy.jsp">Privacy Policy</a>
        </nav>
        <div class="navbar-buttons">
            <a class="btn btn-login" href="SignIn.jsp">Sign In</a>
            <a class="btn btn-signup" href="Signup.jsp">Sign Up</a>
        </div>
    </header>
    <!-- Header ends here -->

    <!-- Main content starts here -->
    <section id="contact">
        <div class="form-box">
            <h2>Contact Us</h2>
            <form>
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>

                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" placeholder="Enter your feedback here" required></textarea>

                <button type="submit">Send</button>
            </form>
        </div>
        <div class="details-box">
            <h2>Contact Details</h2>
            <ul>
                <li><strong>Address:</strong> 123 Main St, Anytown USA</li>
                <li><strong>Phone:</strong> 555-123-4567</li>
                <li><strong>Email:</strong> info@eventify.com</li>
            </ul>
        </div>
    </section>

    <footer>
        <div class="footer-content">
            <p>Copyright © 2023 Eventify</p>
            <ul>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms of Use</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>
    </footer>


    <script src="script.js"></script>
</body>

</html>
