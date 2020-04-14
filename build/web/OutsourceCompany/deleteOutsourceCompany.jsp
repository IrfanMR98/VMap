<%-- 
    Document   : deleteOutsourceCompany
    Created on : Apr 9, 2020, 11:14:52 PM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO_OutsourceCompany"%>
<%@page import="com.Outsource_Company" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Ship</title>
    </head>
    <body>
          <%
            String companyID = (String)request.getParameter("companyID");
            DBConnection database = new DBConnection();
            DAO_OutsourceCompany oc = new DAO_OutsourceCompany();
            int result = oc.deleteOutsourceCompany(companyID);
            database.closeConnection();
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Deleted Successfully\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addOutsourceCompany.jsp");
                rd.include(request, response);
            }

        %>

    </body>
</html>