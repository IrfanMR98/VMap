<%-- 
    Document   : processAddMT.jsp
    Created on : Apr 13, 2020, 4:56:00 PM
    Author     : U S E R
--%>

<%@page import="com.DAO_MaintenanceTask"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.MaintenanceTask.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Maintenance Task</title>
    </head>
    
    <body>
       <jsp:useBean id="MaintenanceTask" scope="request" class="com.MaintenanceTask">
            <jsp:setProperty name="MaintenanceTask" property="*"/>
        </jsp:useBean>
        <%
            DBConnection connection = new DBConnection();
            DAO_MaintenanceTask dao = new DAO_MaintenanceTask();
            int result = dao.addMaintenanceTask(MaintenanceTask);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Maintenance Task Added\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addMaintenanceTask.jsp");
                rd.forward(request, response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Forbidden Data\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addMaintenanceTask.jsp");
                rd.forward(request, response);
            }
            connection.closeConnection();

        %>
    </body>
    </body>
</html>
