<%-- 
    Document   : processAddShip
    Created on : Apr 8, 2020, 10:18:14 AM
    Author     : U S E R
--%>

<%@page import="com.DAO_Ship"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ship.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ship" scope="request" class="com.ship">
            <jsp:setProperty name="ship" property="*"/>
        </jsp:useBean>
        <%
            DBConnection connection = new DBConnection();
            DAO_Ship dao = new DAO_Ship();
            int result = dao.addShip(ship);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success add record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addShip.jsp");
                rd.forward(request, response);
            }
            connection.closeConnection();

        %>
    </body>
</html>

