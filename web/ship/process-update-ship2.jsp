<%-- 
    Document   : process-update-ship2
    Created on : Apr 8, 2020, 10:20:40 PM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO_Ship"%>
<%@page import="com.ship" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Ship</title>
    </head>
    <body style="font-family: century gothic;">
        <%
            String shipID = request.getParameter("shipID");
            String shipName = request.getParameter("shipName");
            String shipFlag = request.getParameter("shipFlag");
            String portOfRegistry = request.getParameter("portOfRegistry");
            String yearOfBuild = request.getParameter("yearOfBuild");
            String shipOwner = request.getParameter("shipOwner");
            String shipBuilder = request.getParameter("shipBuilder");
           
            DBConnection db = new DBConnection();
            DAO_Ship dao = new DAO_Ship();
            ship ship = new ship();
            
            ship.setShipID(shipID);
            ship.setShipName(shipName);
            ship.setShipFlag(shipFlag);
            ship.setPortOfRegistry(portOfRegistry);
            ship.setYearOfBuild(yearOfBuild);
            ship.setShipOwner(shipOwner);
            ship.setShipBuilder(shipBuilder);
            

            int result = dao.updateShip(ship);
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Ship Updated\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addShip.jsp");
                rd.include(request, response);
            }
            db.closeConnection();
        %>
    </body>
</html>

