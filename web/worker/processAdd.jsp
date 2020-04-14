<%-- 
    Document   : processAdd
    Created on : Dec 19, 2019, 12:34:22 AM
    Author     : U S E R
--%>

<%@page import="com.DAO"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Worker.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="worker" scope="request" class="com.Worker">
            <jsp:setProperty name="worker" property="*"/>
        </jsp:useBean>
        <%
            DBConnection connection = new DBConnection();
            DAO dao = new DAO();
            int result = dao.addWorker(worker);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success add record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addWorker.jsp");
                rd.forward(request, response);
            }
            connection.closeConnection();

        %>
    </body>
</html>
