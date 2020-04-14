<%-- 
    Document   : deleteShipProcess
    Created on : Apr 8, 2020, 8:54:46 PM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO_Ship"%>
<%@page import="com.ship" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Ship</title>
    </head>
    <body>
          <%
            String shipID = (String)request.getParameter("shipID");
            DBConnection database = new DBConnection();
            DAO_Ship shipDao = new DAO_Ship();
            int result = shipDao.deleteShip(shipID);
            database.closeConnection();
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addShip.jsp");
                rd.include(request, response);
            }

        %>

    </body>
</html>
