<%-- 
    Document   : listdate_cusssn
    Created on : Nov 30, 2014, 4:42:55 PM
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
                        String ssn = request.getParameter("ssn");
                        out.print("List of Dates For Customer " + ssn);
                    %>
                </h1>

                <div class="container">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>SSN</th>
                                    <th>Profile ID</th>
                                    <th>Dated</th>
                                    <th>Customer Representative</th>
                                    <th>Date Time</th>
                                    <th>Location</th>
                                    <th>Booking Fee</th>
                                    <th>Comments</th>
                                    <th>User 1 Rating</th>
                                    <th>User 2 Rating</th>
                                 </tr>
                            </thead>
                            <tbody>
                            <%
                                String query = "(SELECT SSN, ProfileID, Profile1, CustRep, Date_Time, Location, BookingFee, Comments, User1Rating, User2Rating FROM personprofiledates WHERE ProfileID=Profile2 AND SSN='777-77-7777') UNION (SELECT SSN, ProfileID, Profile2, CustRep, Date_Time, Location, BookingFee, Comments, User1Rating, User2Rating FROM personprofiledates WHERE ProfileID=Profile1 AND SSN='777-77-7777');";
                                java.sql.ResultSet rs =DBConnection.ExecQuery(query);
                                while(rs.next())
                                {
                                %>
                                <tr>
                                    <td > <% out.print(rs.getString(1)); %> </td>
                                    <td > <% out.print(rs.getString(2)); %> </td>
                                    <td > <% out.print(rs.getString(3)); %> </td>
                                    <td > <% out.print(rs.getString(4)); %> </td>
                                    <td > <% out.print(rs.getString(5)); %> </td>
                                    <td > <% out.print(rs.getString(6)); %> </td>
                                    <td > <% out.print("$" + rs.getString(7)); %> </td>
                                    <td > <% out.print(rs.getString(8)); %> </td>
                                    <td > <% out.print(rs.getString(9)); %> </td>
                                    <td > <% out.print(rs.getString(10)); %> </td>
                                </tr>
                                <%      		
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                    <a href="dashboard_customerinfo.jsp"> Back </a>
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

