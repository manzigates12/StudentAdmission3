<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Menu</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="menu">
    <div class="logo">
        <img src="images/k-logo.png" alt="Logo" width="100">
    </div>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="admission.jsp">Admission</a></li>
    </ul>
    <div class="login">
        <a href="login.jsp">Login</a>
    </div>
</div>
<div class="main">
    <h1>Student Admission</h1>
    <form id="admissionForm" action="register" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required><br><br>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required><br><br>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required><br><br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select><br><br>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea><br><br>

        <label for="course">Course:</label>
        <input type="text" id="course" name="course" required><br><br>

        <label for="semester">Semester:</label>
        <input type="number" id="semester" name="semester" min="1" required><br><br>

        <label for="photo">Photo:</label>
        <input type="file" id="photo" name="photo"><br><br>

        <input type="submit" value="Submit">
    </form>
</div>
<script src="js/script.js"></script>
</body>
</html>