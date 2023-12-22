<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Add User</title>
  <style>
    body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #333;
  color: #fff;
  padding: 10px;
}

.navbar {
  display: flex;
  justify-content: flex-start;
}

.navbar ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex; /* Display the list items horizontally */
}

.navbar li {
  margin-right: 20px;
}

.navbar a {
  text-decoration: none;
  color: #fff;
  font-size: 18px;
  padding: 5px 10px;
  border-radius: 5px;
}

.navbar a:hover {
  background-color: #555;
}

main {
  padding: 20px;
}

footer {
  background-color: #333;
  color: #fff;
  padding: 10px;
  position: absolute;
  bottom: 0;
  width: 100%;
}

.add-user-form {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.add-user-form h2 {
  text-align: center;
  margin-bottom: 20px;
}

.add-user-form form {
  display: flex;
  flex-direction: column;
}

.add-user-form label {
  margin-bottom: 5px;
  font-weight: bold;
}

.add-user-form input {
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.add-user-form button {
  background-color: #333;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.add-user-form button:hover {
  background-color: #555;
}

  </style>
</head>

<body>
  <header>
    <nav class="navbar">
      <ul>
        <li><a href="adminhome.jsp">Dashboard</a></li>
        <li><a href="adminadduser.jsp">Add User</a></li>
        <li><a href="viewallusers.jsp">View User</a></li>
        <li><a href="index.html">Logout</a></li>
      </ul>
    </nav>
  </header>
<p style="text-align: center;font-size: 20px;"><mark><b>${param.text}</b></mark></p>
  <main>
    <div class="add-user-form">
      <h2>Add User</h2>
      <form method = "post" action = "adminsetuser.jsp">
        <label for="username">Name:</label>
        <input type="text" id="username" name="name" required>
        
        <label for="gender" class="form-label">Gender</label>
        <input type="radio" class="form-check-input" id="gender" name="gender" value="male">
        <label class="form-check-label" for="male">Male</label>
        <input type="radio" class="form-check-input" id="gender" name="gender" value="female">
        <label class="form-check-label" for="female">Female</label>

        <label for="dateofbirth">Date Of Birth:</label>
        <input type="date" id="dateofbirth" name="dob" required>

        <label for="inc">Income:</label>
        <input type="number" id="inc" name="income" required>

        <label for="emailid">Email:</label>
        <input type="email" id="emailid" name="email" required>


        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pwd" required>

        <label for="con">Contact No:</label>
        <input type="number" id="con" name="contact" required>

        <button type="submit">Add User</button>
      </form>
    </div>
  </main>

  <footer>
    <!-- Your footer content goes here -->
  </footer>
</body>

</html>
