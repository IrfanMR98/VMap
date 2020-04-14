<%-- 
    Document   : process-update-mt2
    Created on : Apr 13, 2020, 8:24:43 PM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO_MaintenanceTask"%>
<%@page import="com.MaintenanceTask" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Worker</title>
    </head>
    <body>
         <%
            String taskID = request.getParameter("taskID");
            String taskName = request.getParameter("taskName");
           
            DBConnection db = new DBConnection();
            DAO_MaintenanceTask dao = new DAO_MaintenanceTask();
            MaintenanceTask mt = new MaintenanceTask();
            
            mt.setTaskID(taskID);
            mt.setTaskName(taskName);
           

           

            int result = dao.updateMaintenanceTask(mt);
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Task Updated\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addMaintenanceTask.jsp");
                rd.include(request, response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Forbidden Data !!! \n Re-enter the data\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addMaintenanceTask.jsp");
                rd.include(request, response); 
            }
            db.closeConnection();
        %>
    </body>
</html>
