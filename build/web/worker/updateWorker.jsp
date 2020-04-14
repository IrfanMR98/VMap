<%-- 
    Document   : updateWorker
    Created on : Dec 19, 2019, 2:04:19 AM
    Author     : MOHAMMAD IRFAN BIN MAHADI S48613
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.DBConnection, com.DAO"%>
<%@page import="com.Worker" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String workerID = (request.getParameter("workerID"));
            DBConnection connection = new DBConnection();
            DAO dao = new DAO();
            Worker worker = dao.retrieveOneWorker(workerID);
            connection.closeConnection();

        %>

        <form action="process-update-worker.jsp">
            <fieldset>
                <legend>Add Worker</legend>

            <label>Worker ID: </label>
            <input type="text" name="workerID" /><br/><br/>
            <label>First Name: </label>
            <input type="text" name="firstName"/><br/><br/>
            <label>Last Name: </label>
            <input type="text" name="lastName"/><br/><br/>
            <label>Identification No: </label>
            <input  type="text" name="icno"/><br/><br/>
            <label>Address: </label>
            <input type="text" name="address"/><br/><br/>
            <label>Phone No: </label>
            <input type="text" name="phoneNo"/><br/><br/>
            <label>Position: </label>
            <input type="text" name="position"/><br/><br/>
            <label>Type of Worker: </label>
            <input type="text" name="type_of_Worker"/><br/><br/>
            <label>Username: </label>
            <input type="text" name="username"/><br/><br/>
            <label>Password: </label>
            <input type="password" name="password"/><br/><br/>

                <input type="submit" value="submit"/>
            </fieldset></form>
    </body>
</html>
