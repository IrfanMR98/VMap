<%-- 
    Document   : processAddSC
    Created on : Apr 16, 2020, 11:40:08 AM
    Author     : U S E R
--%>

<%@page import="com.ship"%>
<%@page import="com.ShipComponent"%>
<%@page import="com.DAO_ShipComponent"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ShipComponent.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Ship Component</title>
    </head>
    <body>
         
        <%
            ShipComponent sc = new ShipComponent();
            
            ship ship = new ship();
            ship.setShipID(request.getParameter("shipID"));
            
            sc.setShipID(ship);
            sc.setComponentID(request.getParameter("componentID"));
            sc.setComponentName(request.getParameter("componentName"));
            sc.setComponentModel(request.getParameter("componentModel"));
            
            DBConnection connection = new DBConnection();
            DAO_ShipComponent dao = new DAO_ShipComponent();
            int result = dao.addShipComponent(sc);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Ship Component Added\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addShip.jsp");
                rd.forward(request, response);
            }else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Key in Data Again\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addShip.jsp");
                rd.forward(request, response);
            }
            connection.closeConnection();

        %>
    </body>
</html>
