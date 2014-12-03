<%-- 
    Document   : monthly_sales
    Created on : Nov 30, 2014, 1:18:49 PM
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
                    <li><a href="dashboard_customerinfo.jsp">Customer Information</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">
                    <%
                        String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};    
                        String month = request.getParameter("month");
                        out.print("Sales Report for " + months[Integer.parseInt(month)-1]);
                    %>
                </h1>

                <div class="container">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Month</th>
                                    <th>Sales</th>
                                 </tr>
                            </thead>
                            <tbody>
                            <%
                                java.sql.Connection conn = null;
                                String Query = "SELECT 	MONTH(D.Date_Time) AS Month, SUM(D.BookingFee) FROM date D WHERE " + month + " = MONTH(D.Date_Time);";
                                java.sql.ResultSet rs =DBConnection.ExecQuery(Query);
                                while(rs.next())
                                {
                                %>
                                <tr>
                                    <td > <% out.print(rs.getString(1)); %> </td>
                                    <td > <% out.print("$" + rs.getString(2)); %> </td>
                                </tr>
                                <%      		
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                    <a href="dashboard_sales.jsp"> Back </a>
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
