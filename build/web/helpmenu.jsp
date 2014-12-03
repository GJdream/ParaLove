<%-- 
    Document   : helpmenu
    Created on : Dec 2, 2014, 7:52:21 PM
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
        <link href="css/dashboard.css" rel="stylesheet">
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
                <a class="navbar-brand" href="index.html">ParaLove</a>
            </div>
        </div>
    </nav>

    <div class="container">

        <div class="help-center">
            <h1 class="page-header">Help Menu</h1>
            <p>This help menu provides information on ParaLove's user interface
            and how to use it. </p>
            <br/>
            
            <h2 class="page-header">Login</h2>
            <p>lsdkfjaksdjf</p>
            
            <h2 class="page-header">Manager UI</h2>
            <p>This sub-section will describe the user interface for a manager account. </p>

            <h3>On Login</h3>
            <p>After a user’s login information (SSN and Password) is identified to be an 
                account belonging to a manager, the user will be directed to the 
                ManagerInformation.jsp page/dashboard.</p>

            <h3>Template</h3>
            <p>This dashboard template was derived from Bootstrap’s sample Dashboard template, 
                and is the template for all of pages for the manager account. </p>

            <p>At the top of the page is a black navigation bar. ParaLove’s 
                brand name is to the far left, where the user is able to click to bring 
                themselves back to the initial ManagerInformation.jsp page. To the far right of 
                the navigation bar is a dropdown menu. It displays the manager’s SSN, which is 
                used to identify his/her account. When the dropdown menu is selected, a menu is 
                displayed with two options: help and logout. When the help menu option is 
                selected, the user is taken to a help menu page. The logout option logs the manager 
                out of his/her account, ends his/her session, and brings him/her back to the login 
                page. </p>

            <p>On the left side of the template is a menu list, which consists 
                of: Dashboard, Sales Analytics, and Customer Information options. When the user has 
                selected and is currently on one of those three pages, the corresponding page will 
                be highlighted in blue.</p>
            
            <p>These menu options are selectable throughout all the transactions within the Manager
            account/dashboard.</p>

            <h3>Dashboard Page</h3>
            <p>This is the page a manager is directed to on login. It displays employee information. 
                This page gives an overview of employee information, and allows a manager to add new 
                employees, edit employee information, and delete employees. Each row of the Employees 
                table represents one employee. At the end of each row are two operations that allow 
                the manager to Edit and Delete. Right above the table is a button to “Add New Employee”. </p>

            <p>When the button “Add New Employee” is selected, the manager is redirected to a form 
                (addemployee_Success.jsp) that allows the manager to input information to add an 
                employee. After submitting the form information, the manager is directed to a 
                confirmation page (addemployee_success.jsp) that acknowledges that the employee was 
                successfully added. </p>

            <p>Similarly, the "Edit" button at the end of an employee's row on the table leads to
            a form (edit_employeeinfo.jsp). The form already has the current information for that 
            employee filled in, but the manager is able to edit this information. The only field that 
            cannot be altered is the SSN field, which is unique to each employee and person. After 
            submitting the form, the user is directed to a confirmation page, where the user can select
            "Back" to return back to the Dashboard page.</p>
            
            <p>When the "Delete" button is selected, a pop-up confirmation box is shown to confirm that
            the user wants to delete the selected employee. If the user presses "OK", the user is 
            directed to a confirmation page confirming that the employee was successfully deleted. The
            user may, again, select the "Back" link to be directed back to the Dashboard page.</p>
            
            <h3>Sales Analytics Page</h3>
            <p>This page contains several sections: "Sales Report for a Particular Month", "Revenue", 
                "Customer Representative Who Generated Most Revenue", and "Customer Who Generated Most 
                Revenue". The last two sections are tables for viewing. </p>
            
            <p>Under the "Sales Report for a Particular Month" and "Revenue" headers are forms that 
                take user input. These forms direct the user to a page that displays a table for the 
                inputted query. They also have a "Back" link to be directed back to the Sales Analytics 
                page.</p>
            
            <p>When filling out the "Sales Report for a Particular Month" form, the user may enter any
            number between, and including, 1 to 12, for the months in a year.</p>
            
            <p>The "Revenue" section contains two different forms. One form is for "Revenue Generated 
                by Dates Involving a Particular Customer", which takes in an SSN input that must be in the 
            form xxx-xx-xxxx, as displayed on the form. The other form is for "Revenue Generated by Dates 
            on a Particular Calendar Date", which takes in a date input. The user can also click on the
            carat on the right of the form (shown when hovering over the form), to which a calendar will
            show up, and the user can select a date from the calendar. </p>
            
            <h3>Customer Information Page</h3>
            <p>This page contains the sections: "Customers", "Most Active Customers", "List of All 
                Customers who have Dated a Particular Customer", "Highest-Rated Customers", "List of 
                Highest-Rated Calendar Dates to Have a Date On", and "List of Dates".</p>
            
            <p>The "Customers" section in-depth information about each customer of ParaLove. The "Most 
            Active Customers" section contains a table that displays the most active customers in 
            descending order from top to bottom. The criteria for this is the number of dates they went
            on, the likes their profile received, and the number of profiles they liked. The "Highest-Rated
            Customers" sections also displays row(s) that have the users with the highest
            user rating. Lastly, the "List of Highest-Rated Calendar Dates to Have a Date On" lists in a 
            table the calendar dates that have the highest average rating from customer dates, along with
            its corresponding rating. </p>
            
            <p>The "List of All Customers who have Dated a Particular Customer" section contains a form
            that takes in an input for for customer's SSN, and must be in the form of xxx-xx-xxxx. Once
            the SSN is inputted and the user selects "Search", the user will be directed to a page that 
            contains a table where each row lists a user's SSN and name of the person who dated the person
            that the inputted SSN matches. The user may press the "Back" link to return to the Customer
            Information page. </p>
            
            <p>The "List of Dates" sections contains two sub-section forms. The first form labeled "By 
                Calendar Date" takes in a date input, which can be selected from the dropdown carat 
                symbol on the right side of the form, and goes to another page that lists all dates that 
                customers went on for the inputted date. The "By Customer SSN" sub-section takes in a SSN
                input in the form of xxx-xx-xxxx. Once "Search" is pressed and the user is redirected to 
                another page, the page will display the same SSN and Profile ID for all rows and information
                about the dates he/she went on. As usual, the pages that the forms are directed 
                to have a "Back" link that directs the user back to the Customer Information page.</p>
            
            <h2 class="page-header">Customer-Representative UI</h2>
            
            <h2 class="page-header">Customer UI</h2>
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