<%-- 
    Document   : deleteProcess
    Created on : Dec 19, 2019, 2:18:05 AM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO"%>
<%@page import="com.Worker" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Worker</title>
    </head>
    <body>
          <%
            String workerID = (String)request.getParameter("workerID");
            DBConnection database = new DBConnection();
            DAO workerDao = new DAO();
            int result = workerDao.deleteWorker(workerID);
            database.closeConnection();
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addWorker.jsp");
                rd.include(request, response);
            }

        %>

    </body>
</html>
