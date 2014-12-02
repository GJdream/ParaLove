<%-- 
    Document   : edit_employeeinfo
    Created on : Dec 1, 2014, 8:00:42 PM
    Author     : Jessica
--%>

<%@page import="DBWorks.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>ParaLove</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Custom styles for this template -->
        <link href="css/dashboard.css" rel="stylesheet">
    
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">ParaLove</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%out.print(session.getAttribute("login")); %> <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Inbox</a></li>
                        <li><a href="#">Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
      </nav>

      <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
              <ul class="nav nav-sidebar">
                  <li><a href="ManagerInformation.jsp">Overview</a></li>
                  <li><a href="dashboard_sales.jsp">Sales Analytics</a></li>
                  <li><a href="dashboard_customerinfo.jsp">Customer Information</a></li>
              </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">
                    <%
                        String ssn = request.getParameter("employee");
                        out.print("Edit Employee Information for " + ssn);
                    %>
                </h1>

                <div class="container">
                    <div class="form-holder">
                        <form method="post" action="edit_success.jsp">
                            <%
                                String query = "SELECT * FROM employee E NATURAL JOIN person P WHERE E.Role = 'CustRep' AND E.SSN='" + ssn + "'";
                                java.sql.ResultSet rs = DBConnection.ExecQuery(query);
                                while(rs.next())
                                {
                                    String role = rs.getString(2);
                                    String datestarted = rs.getString(3);
                                    String hrlyrate = rs.getString(4);
                                    String password = rs.getString(5);
                                    String firstname = rs.getString(6);
                                    String lastname = rs.getString(7);
                                    String addr = rs.getString(8);
                                    String city = rs.getString(9);
                                    String state = rs.getString(10);
                                    String zip = rs.getString(11);
                                    String email = rs.getString(12);
                                %>
                                <div class="form-group">
                                    <label for="ssn">SSN:</label>
                                    <input type="text" class="form-control" name="ssn" value="<%out.print(ssn);%>">
                                </div>
                                <div class="form-group">
                                    <label for="role">Role:</label>
                                    <input type="text" class="form-control" name="role" value="<%out.print(role);%>">
                                </div>
                                <div class="form-group">
                                    <label for="datestarted">Date Started:</label>
                                    <input type="date" class="form-control" name="datestarted" value="<%out.print(datestarted);%>">
                                </div>
                                <div class="form-group">
                                    <label for="hrlyrate">Hourly Rate</label>
                                    <input type="number" class="form-control" name="hrlyrate" value="<%out.print(Integer.parseInt(hrlyrate));%>">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password:</label>
                                    <input type="text" class="form-control" name="password" value="<%out.print(password);%>">
                                </div>
                                <div class="form-group">
                                    <label for="firstname">First Name:</label>
                                    <input type="text" class="form-control" name="firstname" value="<%out.print(firstname);%>">
                                </div>
                                <div class="form-group">
                                    <label for="lastname">Last Name:</label>
                                    <input type="text" class="form-control" name="lastname" value="<%out.print(lastname);%>">
                                </div>
                                <div class="form-group">
                                    <label for="addr">Address:</label>
                                    <input type="text" class="form-control" name="addr" value="<%out.print(addr);%>">
                                </div>
                                <div class="form-group">
                                    <label for="city">City:</label>
                                    <input type="text" class="form-control" name="city" value="<%out.print(city);%>">
                                </div>
                                <div class="form-group">
                                    <label for="state">State:</label>
                                    <input type="text" class="form-control" name="state" value="<%out.print(state);%>">
                                </div>
                                <div class="form-group">
                                    <label for="zip">Zip Code:</label>
                                    <input type="number" class="form-control" name="zip" value="<%out.print(zip);%>">
                                </div>
                                <div class="form-group">
                                    <label for="email">E-mail:</label>
                                    <input type="email" class="form-control" name="email" value="<%out.print(email);%>">
                                </div>
                                <button type="submit" class="btn btn-default">Submit</button>
                                <%      		
                                }
                            %>
                        </form>
                    </div>
                  </div>
            </div>
      </div>

      <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
    </body>
</html>
