<%-- 
    Document   : addShipComponent
    Created on : Apr 16, 2020, 3:08:50 PM
    Author     : U S E R
--%>

<%@page import="com.DAO_Ship"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*, com.ship, com.ShipComponent" %>
<jsp:useBean id="database" class="com.DBConnection" scope="request"/>
<jsp:useBean id="Dao" class="com.DAO_Ship" scope="request"/>
<jsp:useBean id="Dao_ShipComponent" class="com.DAO_ShipComponent" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../css/style.css"/>

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>

        <title>Ship Component</title>
        <style>
            body {
                /*background: url('https://static-communitytable.parade.com/wp-content/uploads/2014/03/rethink-target-heart-rate-number-ftr.jpg') fixed;*/   
                background-size: cover;
            }

            *[role="form"] {
                max-width: 530px;
                padding: 15px;
                margin: 0 auto;
                border-radius: 0.3em;
                background-color: #f2f2f2;
                overflow-x: auto;
            }

            *[role="form"] h2 { 
                font-family: 'Open Sans' , sans-serif;
                font-size: 40px;
                font-weight: 600;
                color: #000000;
                margin-top: 5%;
                text-align: center;
                text-transform: uppercase;
                letter-spacing: 4px;
            }



        </style>

    </head>
    <body  style="background-color: #ccebff">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="../mainmenu.jsp"><img src="vmap.png" width="50px" height="50px">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link active" href="../mainmenu.jsp">Home <span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="../worker/addWorker.jsp">Worker</a>
                        <a class="nav-item nav-link" href="addShip.jsp">Ship</a>
                        <a class="nav-item nav-link" href="../Outsource_Company/addOutsourceCompany.jsp">Outsource Company</a>
                        <a class="nav-item nav-link" href="../Maintenance_Task/addMaintenanceTask.jsp">Maintenance Task</a>
                        <a class="nav-item nav-link" href="#">Schedule</a>
                        <a class="nav-item nav-link" href="contact.jsp">Contact</a>
                        <a class="nav-item nav-link" href="index.jsp">Logout</a>


                    </div>
                </div>

        </nav> 



        <div class="container">
            <%
                String shipID = request.getParameter("shipID");
                DBConnection db = new DBConnection();
                System.out.println(shipID);
                DAO_Ship dao = new DAO_Ship();
                ship ship = dao.retrieveOneShipID(shipID);
                db.closeConnection();

            %>
            <form class="form-horizontal" role="form" action="processAddSC.jsp" method="post">
                <h3 style="text-align:center"><strong>Ship Component Form</strong></h3>

                <div class="form-group">

                    <input type="hidden" value="<%= ship.getShipID()%>" name="shipID" >
                   
                </div> 

                <div class="form-group">
                    <label for="componentID" class="col-sm-3 control-label">Component ID</label>
                    <div class="col-sm-9">
                        <input type="text" id="componentID" placeholder="Component ID" class="form-control" autofocus name="componentID">
                    </div>
                </div> 
                <div class="form-group">
                    <label for="componentName" class="col-sm-3 control-label">Component Name </label>
                    <div class="col-sm-9">
                        <input type="text" id="componentName" placeholder="Component Name" class="form-control" name= "componentName">
                    </div>
                </div>
                <div class="form-group">
                    <label for="componentModel" class="col-sm-3 control-label">Component Model</label>
                    <div class="col-sm-9">
                        <input type="text" id="componentModel" placeholder="Component Model" class="form-control" name="componentModel">
                    </div>
                </div>


                <button type="submit" class="btn btn-primary btn-block" id="contact-submit" data-submit="...Sending">Register</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->







        <div class="footer" align="center">
            <footer>Copyright &copy Vessel Maintenance Scheduling App 2020</footer>
        </div>

    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>

