<%-- 
    Document   : dashboard_employeeinfo
    Created on : Nov 23, 2014, 2:40:11 PM
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
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">Dashboard</a></li>
              <li><a href="#">Settings</a></li>
              <li><a href="#">Profile</a></li>
              <li><a href="#">Help</a></li>
            </ul>
            <form class="navbar-form navbar-right">
              <input type="text" class="form-control" placeholder="Search...">
            </form>
          </div>
        </div>
      </nav>

      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="ManagerInformation.jsp">Overview</a></li>
                <li class="active"><a href="dashboard_employeeinfo.jsp">Employee Information <span class="sr-only">(current)</span></a></li>
                <li><a href="dashboard_sales.jsp">Sales Analytics</a></li>
                <li><a href="dashboard_customerinfo.jsp">Customer Information</a></li>
            </ul>
          </div>
          <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Employee Information</h1>
                
            <div class="col-lg-6">
                <h2>Employees</h2>
                <div>
                    <button type="button" onclick="javascript:
                                        window.open('AddEmployee.jsp','_self');return;">Add New Employee</button>
                    <br/><br/>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>SSN</th>
                                <th>Role</th>
                                <th>Date Started</th>
                                <th>Hourly Rate</th>
                                <th>Password</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Address</th>
                                <th>City</th> 
                                <th>State</th>
                                <th>Zip Code</th>
                                <th>E-mail</th>
                                <th>Operation</th>
                             </tr>
                        </thead>
                        <tbody>
                        <%
                            String managerID = session.getAttribute("login").toString();
                            java.sql.Connection conn = null;
                            String Query = "SELECT * FROM employee E NATURAL JOIN person P WHERE E.Role = 'CustRep'";
                            java.sql.ResultSet rs =DBConnection.ExecQuery(Query);
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
                                <td>
                                    <input type=button onclick="javascript:
                                        window.open('dashboard_employeeinfo.jsp?crscode=<%=rs.getString(1).trim()%>','_self');return;"
                                        value="Edit">
                                    <input type="button" onclick="javascript:if (confirm('Are you sure that you want to delete this employee?')==true)
                                        {
                                            window.open('DeleteEmployee.jsp?userid=<%=managerID%>&employee=<%=rs.getString(1)%>','_self');
                                        };return;" value="Delete">
                                </td>
                            </tr>
                            <%      		
                            }
                            %>
                                    
                        </tbody>
                    </table>
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
