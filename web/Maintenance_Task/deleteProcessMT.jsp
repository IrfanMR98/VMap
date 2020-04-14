<%-- 
    Document   : deleteMT
    Created on : Apr 13, 2020, 5:14:20 PM
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
        <title>Delete Maintenance Task</title>
    </head>
    <body>
        <%
            String taskID = (String)request.getParameter("taskID");
            DBConnection database = new DBConnection();
            DAO_MaintenanceTask oc = new DAO_MaintenanceTask();
            int result = oc. deleteMaintenanceTask(taskID);
            database.closeConnection();
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Deleted Successfully\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addMaintenanceTask.jsp");
                rd.include(request, response);
            }

        %>
    </body>
</html>
