<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="userreg.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
   <div class="LoginPageContainer">
    <div class="LoginPageInnerContainer">
        <div class="ImageContianer">
            <img src="https://i.imgur.com/MYZd7of.png" class="GroupImage">
        </div>
        <div class="LoginFormContainer">
            <div class="LoginFormInnerContainer">
            <p style="text-align: center;font-size: 20px;"><mark><b>${param.text}</b></mark></p>
                <header class="header">Sign Up</header>
                <header class="subHeader">Welcome to <b>SpendSmart!</b> Please Enter your Details</header>

                <form method="post" action="adduser.jsp">
                    <div class="inputContainer">
                        <label class="label" for="emailAddress"><img src="https://i.imgur.com/Hn13wvm.png" class="labelIcon"><span>
                                Name*</span></label>
                        <input type="text" class="input" name="name" id="emailAddress" placeholder="Enter your Name" required>
                    </div>
                    <div class="inputContainer">
                        <label for="gender" class="form-label">Gender</label>
                        <input type="radio" class="form-check-input" id="gender" name="gender" value="male">
                        <label class="form-check-label" for="male">Male</label>
                        <input type="radio" class="form-check-input" id="gender" name="gender" value="female">
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="dateofbirth"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Date of Birth*</span></label>
                        <input type="date" class="input" name="dob" id="dateofbirth" required>
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="inc"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Income*</span></label>
                        <input type="number" class="input" name="income" id="inc" placeholder="Enter your Income(Rs.)" required>
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="emailid"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Email*</span></label>
                        <input type="email" class="input" name="email" id="emailid" placeholder="Enter your Email" required>
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="pass"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Password*</span></label>
                        <input type="password" class="input" name="pwd" id="pass" placeholder="Enter your Password" required>
                    </div>
                    <div class="inputContainer">
                        <label class="label" for="con"><img src="https://i.imgur.com/g5SvdfG.png"
                                class="labelIcon"><span>Contact No.*</span></label>
                        <input type="number" class="input" name="contact" id="con" placeholder="Enter your Contact No." required>
                    </div>
                    <div class="OptionsContainer">
                        <div class="checkboxContainer">
                            <input type="checkbox" id="RememberMe" class="checkbox"> <label for="RememberMe">Remember
                                me</label>
                        </div>
                        <a href="#" class="ForgotPasswordLink">Forgot Password?</a>
                    </div>
                    <button type="submit"  class="LoginButton">Register</button>
                    <a href="userlogin.jsp" class="LoginButton" style="text-align: center;">Login</a>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>