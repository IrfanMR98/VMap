<%-- 
    Document   : process-update-ship
    Created on : Apr 8, 2020, 9:51:25 PM
    Author     : mohammad irfan
--%>
<%@page import="java.sql.*, com.DBConnection, com.DAO_Ship"%>
<%@page import="com.ship" %>
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


        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>

        <title>VMap Home</title>
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
      <%
        String shipID = request.getParameter("shipID");
        DBConnection db = new DBConnection();
        DAO_Ship dao = new DAO_Ship();
        ship ship = dao.retrieveOneShip(shipID);
        db.closeConnection();
    %>
    <body  style="background-color: #ccebff">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <img src="vmap.png" width="50px" height="50px">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="../mainmenu.jsp">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="worker/addWorker.jsp">Worker</a>
                    <a class="nav-item nav-link" href="addShip.jsp">Ship</a>
                    <a class="nav-item nav-link" href="#">Ship Component</a>
                    <a class="nav-item nav-link" href="#">Outsource Company</a>
                    <a class="nav-item nav-link" href="#">Maintenance Task</a>
                    <a class="nav-item nav-link" href="#">Schedule</a>
                    <a class="nav-item nav-link" href="contact.jsp">Contact</a>
                    <a class="nav-item nav-link" href="contact.jsp">Logout</a>


                </div>
            </div>

        </nav> 

        <div class="container">
            <form class="form-horizontal" role="form" action="process-update-ship2.jsp" method="post">
                <h2>Ship Registration</h2>
                <div class="form-group">
                    <label for="shipID" class="col-sm-3 control-label">Ship ID*</label>
                    <div class="col-sm-9">
                        <input type="text" id="shipID" class="form-control" autofocus name="shipID" value="<%= ship.getShipID()%>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="shipName" class="col-sm-3 control-label">Ship Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="shipName"  class="form-control" autofocus name="shipName" value="<%= ship.getShipName()%>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="shipFlag" class="col-sm-3 control-label">Ship Flag* </label>
                    <div class="col-sm-9">
                        <input type="text" id="shipFlag" placeholder="Ship Flag" class="form-control" name= "shipFlag" value="<%= ship.getShipFlag() %>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="portOfRegistry" class="col-sm-3 control-label">Port of Registry*</label>
                    <div class="col-sm-9">
                        <input type="text" id="portOfRegistry" class="form-control" name="portOfRegistry"value="<%= ship.getPortOfRegistry() %>" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="yearOfBuild" class="col-sm-3 control-label">Year of Build*</label>
                    <div class="col-sm-9">
                        <input type="text" id="yearOfBuild"  class="form-control" name="yearOfBuild" value="<%= ship.getYearOfBuild() %>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="shipOwner" class="col-sm-3 control-label">Ship Owner*</label>
                    <div class="col-sm-9">
                        <input type="text" id="shipOwner"  class="form-control" name="shipOwner" value="<%= ship.getShipOwner() %>" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="shipBuilder" class="col-sm-3 control-label">Ship Builder*</label>
                    <div class="col-sm-9">
                        <input type="text" id="shipBuilder"  class="form-control" name="shipBuilder" value="<%= ship.getShipBuilder() %>" >

                    </div>
                </div>

                <button type="submit" class="btn btn-primary btn-block" id="contact-submit" data-submit="...Sending">Update Ship</button>
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

