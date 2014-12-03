<%-- 
    Document   : registration_complete
    Created on : Dec 1, 2014, 11:10:58 PM
    Author     : Jessica
--%>

<%@page import="DBWorks.DBConnection"%>
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

        <div class="center">
            <% 
                String ssn = request.getParameter("ssn");
                String password = request.getParameter("password");
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String addr = request.getParameter("addr");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                int zip = Integer.parseInt(request.getParameter("zip"));
                String email = request.getParameter("email");
                String telephone = request.getParameter("telephone");
                String card = request.getParameter("card");
                String acctnum = request.getParameter("acctnum");
                String ppp = request.getParameter("ppp");
                String profileid = request.getParameter("profileid");
                int age = Integer.parseInt(request.getParameter("age"));
                int agestart = Integer.parseInt(request.getParameter("agestart"));
                int ageend = Integer.parseInt(request.getParameter("ageend"));
                int georange = Integer.parseInt(request.getParameter("georange"));
                String mf = request.getParameter("mf");
                String hobbies = request.getParameter("hobbies");
                double height = Double.parseDouble(request.getParameter("height"));
                int weight = Integer.parseInt(request.getParameter("weight"));
                String hair = request.getParameter("hair");
                
                String query= "INSERT INTO person VALUES ('" + ssn + "', '" + password + "', '" + firstname 
                        + "', '" + lastname + "', '" + addr + "', '" + city + "', '" + state + "', " + zip 
                        + ", '" + email + "', '" + telephone + "');";
                DBConnection.ExecUpdateQuery(query);
                
                query= "INSERT INTO user VALUES ('" + ssn + "', '" + ppp + "', null, NOW());";
                DBConnection.ExecUpdateQuery(query);
                                
                query= "INSERT INTO account VALUES ('" + ssn + "', '" + card + "', '" + acctnum + "');";
                DBConnection.ExecUpdateQuery(query);
                
                query= "INSERT INTO profile VALUES ('" + profileid + "', '" + ssn + "', " + agestart 
                        + ", " + ageend + ", " + georange + ", '" + mf + "', '" + hobbies + "', " + height 
                        + ", " + weight + ", '" + hair + "', NOW(), NOW(), " + age + ");";
                DBConnection.ExecUpdateQuery(query);
            %>
            <h1 class="text-center">Registration Complete!</h1>
            <p class="text-center">Congratulations! You are now part of the ParaLove network, where people interconnect 
                and find their soul mates.</p>
            <p class="text-center">Click below to log in and get started!</p>
            <a class="text-center" href="index.html">Log In and Get Started Now!</a>
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