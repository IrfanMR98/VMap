<%-- 
    Document   : processAddOC
    Created on : Apr 9, 2020, 2:36:29 PM
    Author     : U S E R
--%>

<%@page import="com.DAO_OutsourceCompany"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Outsource_Company.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Add OC</title>
    </head>
    <body>
        <jsp:useBean id="Outsource_Company" scope="request" class="com.Outsource_Company">
            <jsp:setProperty name="Outsource_Company" property="*"/>
        </jsp:useBean>
        <%
            DBConnection connection = new DBConnection();
            DAO_OutsourceCompany dao = new DAO_OutsourceCompany();
            int result = dao.addOutsourceCompany(Outsource_Company);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Register Successfully\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addOutsourceCompany.jsp");
                rd.forward(request, response);
            }
            connection.closeConnection();

        %>
    </body>
</html>
