<%-- 
    Document   : dashboard_customerinfo
    Created on : Nov 23, 2014, 2:42:03 PM
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
              <a class="navbar-brand" href="ManagerInformation.jsp">ParaLove</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%out.print(session.getAttribute("login")); %> <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="helpmenu.jsp">Help</a></li>
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
                    <li><a href="ManagerInformation.jsp">Dashboard</a></li>
                    <li><a href="dashboard_sales.jsp">Sales Analytics</a></li>
                    <li class="active"><a href="dashboard_customerinfo.jsp">Customer Information <span class="sr-only">(current)</span></a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1>Customer Information</h1><br/><br/>

                <div>
                    <div>
                        <h2 class="page-header">Customers</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>SSN</th>
                                        <th>PPP</th>
                                        <th>Rating</th>
                                        <th>Date Of Last Act</th>
                                        <th>Password</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Address</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Zip Code</th>
                                        <th>E-Mail</th>
                                        <th>Telephone</th>
                                     </tr>
                                </thead>
                                <tbody>
                                <%
                                    String Query = "SELECT * FROM userlist;";
                                    java.sql.ResultSet rs = DBConnection.ExecQuery(Query);
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
                                        <td > <% out.print(rs.getString(7)); %> </td>
                                        <td > <% out.print(rs.getString(8)); %> </td>
                                        <td > <% out.print(rs.getString(9)); %> </td>
                                        <td > <% out.print(rs.getString(10)); %> </td>
                                        <td > <% out.print(rs.getString(11)); %> </td>
                                        <td > <% out.print(rs.getString(12)); %> </td>
                                        <td > <% out.print(rs.getString(13)); %> </td>
                                    </tr>
                                    <%      		
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div><br/><br/>
                    <div>
                        <h2 class="page-header">Most Active Customers</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>SSN</th>
                                        <th>DateOfLastAct</th>
                                        <th>NumDates</th>
                                        <th>LikesReceived</th>
                                        <th>NumLikes</th>
                                     </tr>
                                </thead>
                                <tbody>
                                <%
                                    Query = "SELECT U.SSN, U.DateOfLastAct, D.NumDates, T.LikesReceived, T.NumLikes FROM user U, DateCount D, TotalLikes T WHERE U.SSN=D.CustomerSSN AND U.SSN=T.CustomerSSN GROUP BY U.SSN, U.DateOfLastAct, D.NumDates ORDER BY (U.DateOfLastAct-NOW())+D.NumDates+ T.LikesReceived+T.NumLikes DESC;";
                                    rs = DBConnection.ExecQuery(Query);
                                    while(rs.next())
                                    {
                                    %>
                                    <tr>
                                        <td > <% out.print(rs.getString(1)); %> </td>
                                        <td > <% out.print(rs.getString(2)); %> </td>
                                        <td > <% out.print(rs.getString(3)); %> </td>
                                        <td > <% out.print(rs.getString(4)); %> </td>
                                        <td > <% out.print(rs.getString(5)); %> </td>
                                    </tr>
                                    <%      		
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div><br/><br/>
                    <div>
                        <h2 class="page-header">List of All Customers who have Dated a Particular Customer</h2>
                        <div class="form-holder">
                            <form class="form-inline" method="post" action="dated_customer.jsp">
                                <div class="form-group">
                                    <label for="snn">Enter Customer SSN:</label>
                                    <input type="text" class="form-control" name="ssn" placeholder="xxx-xx-xxxx">
                                </div>
                                <button type="submit" class="btn btn-default">Search</button>
                            </form>
                        </div>
                    </div><br/><br/>
                    <div>
                        <h2 class="page-header">Highest-Rated Customers</h2>
                        <div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Customer SSN</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Rating</th>
                                         </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        Query = "SELECT U.SSN, U.FirstName, U.LastName, U.Rating FROM UserList U WHERE 	U.Rating >= (SELECT MAX(U2.Rating) FROM UserList U2);";
                                        rs =DBConnection.ExecQuery(Query);
                                        while(rs.next())
                                        {
                                        %>
                                        <tr>
                                            <td > <% out.print(rs.getString(1)); %> </td>
                                            <td > <% out.print(rs.getString(2)); %> </td>
                                            <td > <% out.print(rs.getString(3)); %> </td>
                                            <td > <% out.print(rs.getString(4)); %> </td>
                                        </tr>
                                        <%      		
                                        }
                                    %>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div><br/><br/>
                    <div>
                        <h2 class="page-header">List of Highest-Rated Calendar Dates to Have a Date On</h2>
                        <div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Average Rating</th>
                                         </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        Query = "SELECT Date, MAX(AvgRating) FROM AvgDateRating;";
                                        rs =DBConnection.ExecQuery(Query);
                                        while(rs.next())
                                        {
                                        %>
                                        <tr>
                                            <td > <% out.print(rs.getString(1)); %> </td>
                                            <td > <% out.print(rs.getString(2)); %> </td>
                                        </tr>
                                        <%      		
                                        }
                                    %>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div><br/><br/>
                    <div>
                        <h2 class="page-header">List of Dates</h2>
                        <div>
                            <h3>By Calendar Date</h3>
                            <div class="form-holder">
                                <form class="form-inline" method="post" action="listdate_caldate.jsp">
                                    <div class="form-group">
                                        <label for="date">Enter Date:</label>
                                        <input type="date" class="form-control" name="date">
                                    </div>
                                    <button type="submit" class="btn btn-default">Search</button>
                                </form>
                            </div>
                        </div>
                        <div>
                            <h3>By Customer SSN</h3>
                            <div class="form-holder">
                                <form class="form-inline" method="post" action="listdate_cusssn.jsp">
                                    <div class="form-group">
                                        <label for="ssn">Enter Customer SSN:</label>
                                        <input type="text" class="form-control" name="ssn"  placeholder="xxx-xx-xxxx">
                                    </div>
                                    <button type="submit" class="btn btn-default">Search</button>
                                </form>
                            </div>
                        </div>
                    </div>
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
