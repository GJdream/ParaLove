<%@page import="javax.swing.JOptionPane"%>
<%@page import="DBWorks.DBConnection"%>
<%
	if ((request.getParameter("action") != null) && (request.getParameter("action").trim().equals("logout"))) {
		//session.putValue("login", "");
                session.setAttribute("login", "");
		response.sendRedirect("/");
		return;
	}

	String username = request.getParameter("username");
	String userpasswd = request.getParameter("userpasswd");
        String query=null;
	session.setAttribute("login", "");
	if ((username != null) && (userpasswd != null))
        {
            if (username.trim().equals("") || userpasswd.trim().equals("")) {
		response.sendRedirect("index.html");
            } 
            else {
                
                query = "SELECT * FROM person WHERE SSN = '" +
                            username + "' AND Password = '" + userpasswd  + "'";
               	java.sql.ResultSet rs = DBConnection.ExecQuery(query);
		if (rs.next()) {
                    // login success
                    session.setAttribute("login", username);
                    response.sendRedirect("ManagerInformation.jsp");
		} 
                
                else{
                        query = "SELECT * FROM Professor WHERE ID = '" +
                            username + "' AND Pswd = '" + userpasswd  + "'";
                        rs = DBConnection.ExecQuery(query);
                        if (rs.next()) {
                            session.setAttribute("login", username);
                            response.sendRedirect("FacultyInformation.jsp");
                        }
                        else {
				// username or password mistake
                            
                            out.print("Username or Password is not Correct!!!");
                            %>
                            <br/>
                            <a href="index.html"> Back to login page </a>
                            <%
                        }
                    }
			
            }
	}
    
%>