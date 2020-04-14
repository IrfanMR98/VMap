<%-- 
    Document   : process-update-worker2
    Created on : Dec 19, 2019, 2:24:06 AM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO"%>
<%@page import="com.Worker" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task2: Update Worker</title>
    </head>
    <body style="font-family: century gothic;">
        <%
            String workerID = request.getParameter("workerID");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String icno = request.getParameter("icno");
            String address = request.getParameter("address");
            String phoneNo = request.getParameter("phoneNo");
            String position = request.getParameter("position");
            String type_of_Worker = request.getParameter("type_of_Worker");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            DBConnection db = new DBConnection();
            DAO dao = new DAO();
            Worker worker = new Worker();

            worker.setWorkerID(workerID);
            worker.setFirstName(firstName);
            worker.setLastName(lastName);
            worker.setIcno(icno);
            worker.setAddress(address);
            worker.setPhoneNo(phoneNo);
            worker.setPosition(position);
            worker.setType_of_Worker(type_of_Worker);
            worker.setUsername(username);
            worker.setPassword(password);

           

            int result = dao.updateWorker(worker);
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Profile Updated\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addWorker.jsp");
                rd.include(request, response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Forbidden Data @ Wrong Data \n Please re-enter the data\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addWorker.jsp");
                rd.include(request, response);
            }
            db.closeConnection();
        %>
    </body>
</html>
