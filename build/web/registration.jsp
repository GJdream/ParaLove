<%-- 
    Document   : registration
    Created on : Nov 20, 2014, 9:26:53 PM
    Author     : Jessica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>ParaLove</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/registration.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                      <a class="navbar-brand" href="index.html">ParaLove</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                      <li><a href="helpmenu.jsp">Help</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

    <div class="container">

        <div class="form-holder center">
            <form method="post" action="registration_complete.jsp">
                <h1 class="text-center">Registration</h1>
                <h2 class="text-center page-header">Personal Information</h2>
                <div class="form-group">
                    <label for="ssn">SSN:</label>
                    <input type="text" class="form-control" name="ssn" placeholder="xxx-xx-xxxx" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <label for="firstname">First Name:</label>
                    <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name:</label>
                    <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
                </div>
                <div class="form-group">
                    <label for="addr">Address: </label>
                    <input type="text" class="form-control" name="addr" placeholder="Address">
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" name="city" placeholder="City">
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <input type="text" class="form-control" name="state" placeholder="State">
                </div>
                <div class="form-group">
                    <label for="zip">Zip Code:</label>
                    <input type="text" class="form-control" name="zip" placeholder="Zip Code">
                </div>
                <div class="form-group">
                    <label for="email">E-mail:</label>
                    <input type="text" class="form-control" name="email" placeholder="E-mail" required>
                </div>
                <div class="form-group">
                    <label for="telephone">Telephone:</label>
                    <input type="text" class="form-control" name="telephone" placeholder="(xxx) xxx-xxxx">
                </div>
                
                <h2 class="text-center page-header">Account Information</h2>
                <div class="form-group">
                    <label for="card">Credit Card Number:</label>
                    <input type="text" class="form-control" name="card" placeholder="xxxxxxxxxxxxxxxx">
                </div>
                <div class="form-group">
                    <label for="acctnum">Account Number:</label>
                    <input type="text" class="form-control" name="acctnum" placeholder="xxxxx">
                </div>
                <div class="form-group">
                    <label for="ppp">Profile Placement Priority:</label>
                    <select class="form-control" name="ppp">
                        <option>User-User</option>
                        <option>Good-User</option>
                        <option>Super-User</option>
                    </select>
                </div>
                
                <h2 class="text-center page-header">Profile</h2>
                <div class="form-group">
                    <label for="profileid">Profile ID:</label>
                    <input type="text" class="form-control" name="profileid" placeholder="Profile ID" required>
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" class="form-control" name="age" placeholder="Age" required>
                </div>
                <div class="form-group">
                    <label for="agestart">Dating Age Range Start:</label>
                    <input type="text" class="form-control" name="agestart" placeholder="Age Range Start" required>
                </div>
                <div class="form-group">
                    <label for="ageend">Dating Age Range End:</label>
                    <input type="text" class="form-control" name="ageend" placeholder="Age Range End" required>
                </div>
                <div class="form-group">
                    <label for="georange">Dating Geo Range:</label>
                    <input type="text" class="form-control" name="georange" placeholder="Geo Range" required>
                </div>
                <div class="form-group">
                    <label for="mf">Gender:</label>
                    <select class="form-control" name="mf">
                        <option>Female</option>
                        <option>Male</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="hobbies">Hobbies (Separated by commas):</label>
                    <input type="text" class="form-control" name="hobbies" placeholder="Hobbies" required>
                </div>
                <div class="form-group">
                    <label for="height">Height:</label>
                    <input type="text" class="form-control" name="height" placeholder="Height" required>
                </div>
                <div class="form-group">
                    <label for="weight">Weight:</label>
                    <input type="number" class="form-control" name="weight" placeholder="Weight" required>
                </div>
                <div class="form-group">
                    <label for="hair">Hair Color:</label>
                    <input type="text" class="form-control" name="hair" placeholder="Hair Color" required>
                </div>
                <button type="submit" class="btn btn-default">Join Now</button>
            </form>
        </div>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>