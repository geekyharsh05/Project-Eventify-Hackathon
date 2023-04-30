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


<body style="background: url(img/istockphoto-1311934969-612x612.jpg); background-size: cover; background-attachment: fixed;">

<!-- Header starts here -->
<header>
    <div class="logo">Eventify</div>
    <nav class="navbar">
        <a class="nav-link" href="index.jsp">Home</a>
        <a class="nav-link" href="event.jsp">Events</a>
        <a class="nav-link" href="AboutUs.jsp">About Us</a>
        <a class="nav-link active" href="ContactUs.jsp">Contact Us</a>
        <a class="nav-link" href="PrivacyPolicy.jsp">Privacy Policy</a>
    </nav>
    <div class="navbar-buttons">
        <a class="btn btn-login" href="SignIn.jsp">Sign In</a>
        <a class="btn btn-signup" href="SignUp.jsp">Sign Up</a>
    </div>
</header>
<!-- Header ends here -->

<!-- Main content starts here -->
<!-- Main content starts here -->
<section id="contact">
    <div class="form-box">
        <h2>Feedback</h2>
        <form>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>

            <label for="phone">Contact Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your contact number" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" rows="5" placeholder="Enter your feedback here" required></textarea>

            <button type="submit">Send</button>
        </form>
    </div>
    <div class="details-box">
        <h2>Contact Details</h2>
        <ul>
            <li><strong>Address:</strong> Banglore,Karnataka</li>
            <li><strong>Phone:</strong> 0011223344</li>
            <li><strong>Email:</strong> info@eventify.com</li>
            <li><strong>Venue:</strong> <a style="color:rgb(1, 7, 126);text-decoration: underline;"
                    href="https://www.google.com/maps/place/iNeuron.ai/@13.0540612,77.758858,17z/data=!3m2!4b1!5s0x3bae0fee1dc816c3:0xa3ac2874cd65313f!4m6!3m5!1s0x3bae133c7c77828d:0x89fbcd">Get
                    Directions</a>
            </li>
        </ul>

        <div class="customer-support-box">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH0AAAB9CAMAAAC4XpwXAAAA6lBMVEX///8wNk02O1H29/gzOU+nqbKLjpnh4uX7+/x7fotDSV5aXm9FSl02VeBJTmGkp6+0t77Z2t6GiJQ/RFnr6+0nbuYAofIjdOg7Td4AlfARku8ag+uXmqQNmPBgZHTx8fO+wMYwX+PKzNEAqPOPsPFvc4HL5/zm+P4Vi+3A5/woL0ggeukqaeUtZOTl6PuyuvKj3PuYzfhIs/Sp0vhmt/Q4nvHt8v3I3PmUwPRfk+xzxfeGwva73vo8iOtopfDa7fyK0Phfr/OBjemequ52mu1SfuhSme4mP9xijOu/0vfBx/SJo+5dbuSnv/Op3IjFAAAEjElEQVRoge2WaVfbOBRAJVm25Th4ibKQ1LGNiZPgLC1pE6Bsw0ynNFP6///OPMlxcBY6tNA5c+bofsA+SNbV8t5TEFIoFAqFQqFQKBQKhUKhUCgUCoVC8X8itgxTPE27xuChJUFNZ8/5cHDy7uV2N6v44hlkJEGIBZxm1j/ZB/3TWbPbbb7crmNH2pNKWIe5YFINve/1Z4v3H+btdrvbbB6/nh2ZIEchqSaa9mTnxdn55zdvhp1Ou/vKdgGrEOvJnme9i1FrNCrs3X12tpp68RQvbPXCyt1Yyc5W/TWwR/Jlvf7HjehNxq0WyIW904XN3zl3LTYsyxVBrFtWvibXssSemnrNMmIxFvPcGLrVAtmu00otCOrIS9M62LmTpjHyrNpqcnFqru3jRitf+3DYmd99fLcd84md4QxjrMNnGQ7kfDi2NRFOWQZtIYwVOZhiTCmVHXTKSQY93Iybwg4x76MaruRr9jJc27AL/XB+eXW7GxyaTSqGF8DfBJkOCeWEMAGJx0no6hYnqejFuROmNuE0lnbbDsT0qma+dki4GnHk6PWQOOsM6E0a40bj+ub97Y4436aMu/DwqxA7LCVc7HhAOeSxTRyxgwbBvphj6msoCjgBkTh3EQMrex51hd2vYLd07qOL3tlCvrNFf4H6s9ns42/rYApoVZ5lShxYLsGwNC0ldh3VCZEbmHDsgZ3KU41SAilexPxeu+xfMF1O8xfWP72bt/vopNMEBqtmZpCqubb7nBgM+Y4Yz6TE2LEjg9p77Kxkj8v23DFd3lyPRNiDvb1tTyJA2plctU5ILO1WPYq0LTv+MTtbLGXKi6jfa+d2GIapw53ixC154CblVWhJw5+y//7HW6D36c/xRCZdnvL77ERmE+Zym2kQ2XI4sHMCDZhmP2G/Pzw8PDg8ODqaFBkvFg/25mx2fFy2p1bNCFzPgzGikKSrrQO7DQ1GoHvmj9uFHJB2qYcJzD8MEBsMBrcn2tpOHZM9ltOAOinHprSTYN3wDDssI3rC3miMPp9fLdAuwi6nkYsSDPstS44pSw4QsV17ddfuirogZ7Gyr/WjT9+m+Wq12/7V1aBkdzF3I1ZPrDhXQd0kq3JLbJ9ppi5K/qbdw7JCbdoTKEQm05Jqvvb7e3n0jS+9Zb7o26vLuzncNZ2Tkt3HYAkdgkO5bxDwXBQ68UYJD+0KFYNt2k1OeFDfsmshIU4IFVnap0sI+b+W04X8Stzx18U1W7Yj3SGUwodGbo+5qGZy61MiWngYCzvO7TVhR15VTlbntrDT/H73QQ9UtqsNZPx1q3TJb9iRD/ep4fmrAIuSpPjlEMk7NRGzYsV//SSR2xwIQ9032WMTqgepbRvuo30BO/C1dXRUyvjOtv2VKdW6h4mIuyLnZMYPO+1fbY9Xr1BuIOiPJg15ybdGw/nd5enp4DsfvxiD0KSw5zk3HjfGreub8/7gWT/6X0AUQABHm/aDSevrcl+teX17mJF1yB/IjL/4Nv03zBJfX/+kRA8PX96eLX71disUCoVCoVAoFAqFQqFQKBQKhUKh+C/wN6J6fTWN2bbSAAAAAElFTkSuQmCC"
                alt="Eventify logo">
            <h3>Need Help?</h3>
            <p>Contact our customer support team for assistance.</p>
            <a class="btn btn-contact" href="https://web.whatsapp.com">Get in Touch</a>
        </div>


    </div>
</section>
<footer>
    <div class="footer-content">
        <p>Copyright © 2023 Eventify</p>
        <ul>
            <li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
            <li><a href="ContactUs.jsp">Contact Us</a></li>
        </ul>
    </div>
</footer>


</body>

</html>
