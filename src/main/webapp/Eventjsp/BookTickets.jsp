<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="register.css" />

    <title>Ticket Sales</title>
    <style>
      .price {
        text-align: center;
        font-size: 24px;
        margin-top: 50px;
        display: block;
        border: 1px solid #ccc;
        padding: 10px;
        margin: 10px;
      }

      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }

      h1 {
        text-align: center;
        margin-top: 50px;
      }

      form {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
      }

      label {
        font-size: 18px;
        margin-bottom: 10px;
      }

      input[type="number"],
      input[type="date"] {
        padding: 10px;
        font-size: 18px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-bottom: 20px;
        width: 50%;
        box-sizing: border-box;
      }

      input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: all 0.3s ease;
      }

      input[type="submit"]:hover {
        background-color: #0056b3;
      }
    </style>
  </head>

  <body>
    <h1>Ticket Sales</h1>
    <form>
      <label for="tickets">Number of Tickets:</label>
      <input
        type="number"
        id="tickets"
        name="tickets"
        min="1"
        max="10"
        required
      />

      <label for="date">Date:</label>
      <input type="date" id="date" name="date" required />

      <label for="price">Price:</label>
      <div class="price" id="price"></div>

      <input type="submit" value="Buy Tickets" />
    </form>

    <script>
      const ticketsInput = document.getElementById("tickets");
      const dateInput = document.getElementById("date");
      const priceDiv = document.getElementById("price");

      ticketsInput.addEventListener("input", updatePrice);
      dateInput.addEventListener("input", updatePrice);

      function updatePrice() {
        const tickets = parseInt(ticketsInput.value);
        const date = new Date(dateInput.value);
        const dayOfWeek = date.getDay();

        let price = 0;

        if (tickets >= 1 && tickets <= 3) {
          price = 10;
        } else if (tickets >= 4 && tickets <= 6) {
          price = 8;
        } else if (tickets >= 7 && tickets <= 10) {
          price = 5;
        }

        if (dayOfWeek === 6 || dayOfWeek === 0) {
          price *= 2;
        }

        priceDiv.innerHTML = `Total Price: ₹${price * tickets}`;
      }
    </script>
  </body>
</html>
