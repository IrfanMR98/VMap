<%-- 
    Document   : process-view-worker
    Created on : Dec 19, 2019, 12:40:41 AM
    Author     : Mohammad Irfan Bin Mahadi s48613
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*, com.Worker" %>
<jsp:useBean id="database" class="com.DBConnection" scope="request"/>
<jsp:useBean id="Dao" class="com.DAO" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ship Maintenance Scheduling App</title>
        <style>
            #data{
                overflow: flow;
                overflow-y: hidden;
                margin-bottom: 50px;
                
            }
             body {
                font-family: "Lato", sans-serif;
                transition: background-color .5s;
            }

            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidenav a:hover {
                color: #f1f1f1;
            }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            #main {
                transition: margin-left .5s;
                padding: 16px;
            }

            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }
        </style>
    </head>
    <body style="background-color: powderblue">
         </div>
             </div>
            <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="../mainmenu.jsp">Home</a>
            <a href="addWorker.jsp">Profile</a>
            <a href="#">Ship and Components</a>
            <a href="#">Maintenance Task</a>
            <a href="#">Schedule</a>
            <a href="#">Contact</a>

        </div>

        <div id="main">

            <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; MENU</span>
        </div>

        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
                document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
                document.body.style.backgroundColor = "white";
            }
        </script>
        
        <div class="container"style="margin-top: 70px;">
            <%
                List<Worker> WorkerAll = Dao.retrieveAllWorker();
            %>
            <h1>Display Worker List</h1>
            <div id="data">
                <table class="table table-striped" >
                    <tr>
                        <th>Worker ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Identification No</th>
                        <th>Address</th>
                        <th>Phone No</th>
                        <th>Position</th>
                        <th>Type of Worker</th>
                        <th>Username</th>
                        <th>Password</th>
                    </tr>
                    <%
                        for (int i = 0; i < WorkerAll.size(); i++) {
                    %>
                    <tr>
                        <td><%= WorkerAll.get(i).getWorkerID()%></td>
                        <td><%= WorkerAll.get(i).getFirstName()%></td>
                        <td><%= WorkerAll.get(i).getLastName()%></td>
                        <td><%= WorkerAll.get(i).getIcno()%></td>
                        <td><%= WorkerAll.get(i).getAddress()%></td>
                        <td><%= WorkerAll.get(i).getPhoneNo()%></td>
                        <td><%= WorkerAll.get(i).getPosition()%></td> 
                        <td><%= WorkerAll.get(i).getType_of_Worker()%></td>
                        <td><%= WorkerAll.get(i).getUsername()%></td>
                        <td><%= WorkerAll.get(i).getPassword()%></td>
                        <td>
                            <a style="margin-right: 10px;" href="process-update-worker.jsp?workerID=<%= WorkerAll.get(i).getWorkerID()%>"><i class="fas fa-edit"></i></a>
                            <a href="deleteProcess.jsp?workerID=<%= WorkerAll.get(i).getWorkerID()%>"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <%
                    database.closeConnection();
                %>
            </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
