package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dashboard_005fsales_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <link rel=\"icon\" href=\"../../favicon.ico\">\n");
      out.write("\n");
      out.write("        <title>ParaLove</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/dashboard.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"navbar-header\">\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("              <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("            </button>\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">ParaLove</a>\n");
      out.write("          </div>\n");
      out.write("          <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("              <li><a href=\"#\">Dashboard</a></li>\n");
      out.write("              <li><a href=\"#\">Settings</a></li>\n");
      out.write("              <li><a href=\"#\">Profile</a></li>\n");
      out.write("              <li><a href=\"#\">Help</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <form class=\"navbar-form navbar-right\">\n");
      out.write("              <input type=\"text\" class=\"form-control\" placeholder=\"Search...\">\n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-3 col-md-2 sidebar\">\n");
      out.write("            <ul class=\"nav nav-sidebar\">\n");
      out.write("                <li><a href=\"ManagerInformation.jsp\">Overview</a></li>\n");
      out.write("                <li><a href=\"dashboard_employeeinfo.jsp\">Employee Information</a></li>\n");
      out.write("                <li class=\"active\"><a href=\"dashboard_sales.jsp\">Sales Analytics <span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("                <li><a href=\"dashboard_customerinfo.jsp\">Customer Information</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main\">\n");
      out.write("            <h1 class=\"page-header\">Sales Analytics</h1>\n");
      out.write("\n");
      out.write("            <div class=\"col-lg-6 \">\n");
      out.write("                <div>\n");
      out.write("                    <h2>Sales Report for a Particular Month</h2>\n");
      out.write("                    <div class=\"form-holder\">\n");
      out.write("                        <form class=\"form-inline\" method=\"post\" action=\"addemployee_success.jsp\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"ssn\">Enter Month:</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"month\" placeholder=\"e.g. 10 for October\">\n");
      out.write("                            </div>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <h2>Revenue</h2>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Revenue Generated by a Particular Customer</h3>\n");
      out.write("                        <div class=\"form-holder\">\n");
      out.write("                            <form class=\"form-inline\" method=\"post\" action=\"#\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"firstname\">Enter First Name:</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"firstname\" placeholder=\"First Name\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"lastname\">Enter Last Name:</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"lastname\" placeholder=\"Last Name\">\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Revenue Generated by Calendar Date</h3>\n");
      out.write("                        <div class=\"form-holder\">\n");
      out.write("                            <form class=\"form-inline\" method=\"post\" action=\"#\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"ssn\">Enter Month:</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"month\" placeholder=\"e.g. 10 for October\">\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h3>Revenue Generated by Customer Representative</h3>\n");
      out.write("                        <div class=\"form-holder\">\n");
      out.write("                            <form class=\"form-inline\" method=\"post\" action=\"monthly_sales.jsp\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label for=\"ssn\">Enter Month:</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"month\" placeholder=\"e.g. 10 for October\">\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <h2>Customer Who Generated Most Revenue</h2>\n");
      out.write("                \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Bootstrap core JavaScript\n");
      out.write("      ================================================== -->\n");
      out.write("      <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("      <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\n");
      out.write("      <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
