<%-- 
    Document   : addOutSourceCompany
    Created on : Apr 9, 2020, 12:02:58 PM
    Author     : U S E R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*, com.Outsource_Company" %>
<jsp:useBean id="database" class="com.DBConnection" scope="request"/>
<jsp:useBean id="Dao_OutsourceCompany" class="com.DAO_OutsourceCompany" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../css/style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="width=device-width, initial-scale=1;text/html; charset=UTF-8">
        <title>Outsource Company</title>
        <style>


        </style>
    </head>
    <body style="background-color: #ccebff">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="../mainmenu.jsp"> <img src="..\vmap.png" width="50px" height="50px" >
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="../mainmenu.jsp">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="../worker/addWorker.jsp">Worker</a>
                    <a class="nav-item nav-link" href="../ship/addShip.jsp">Ship</a>
                    <a class="nav-item nav-link" href="../ship/addShipComponent">Ship Component</a>
                    <a class="nav-item nav-link" href="addOutsourceCompany.jsp">Outsource Company</a>
                    <a class="nav-item nav-link" href="#">Maintenance Task</a>
                    <a class="nav-item nav-link" href="#">Schedule</a>
                    <a class="nav-item nav-link" href="contact.jsp">Contact</a>
                    <a class="nav-item nav-link" href="contact.jsp">Logout</a>


                </div>
            </div>

        </nav>

        <br><br><br>
        <div class="container mt-3">

            <br>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#home">Register Outsource Company</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#menu1">List Outsource Company</a>
                </li>

            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div id="home" class="container tab-pane active"><br>
                    <div class="container">  
                        <form class="asset" action="processAddOC.jsp" method="post">


                            <fieldset>
                                <label align="center">Company ID</label>
                                <input name="companyID" placeholder="Company ID" type="text" tabindex="1" required autofocus>
                            </fieldset>
                            <fieldset>
                                <label align="center">Company Name</label>
                                <input name="companyName" placeholder="Company Name" type="text" tabindex="2" required>
                            </fieldset>
                            <fieldset>
                                <label align="center">Contract Start Date</label>
                                <input name="contract_start_date" type="date" tabindex="3" required>
                            </fieldset>
                            <fieldset>
                                <label align="center">Contract End Date</label>
                                <input name="contract_end_date"  type="date" tabindex="4" required>
                            </fieldset>
                            <fieldset>
                                <label align="center">Contract Period (month)</label>
                                <input name="contract_period" placeholder="Contract Period" type="text" pattern="[1-9]2" tabindex="5" required>
                            </fieldset>
                            <fieldset>
                                <label align="center">Company Tel No</label>
                                <input name="companyNoTel" placeholder="**-********" type="tel" pattern="[0-9]{2}-[0-9]{4}[0-9]{4}" tabindex="6" required>
                            </fieldset>

                            <br>
                            <fieldset>
                                <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Register</button>
                            </fieldset>


                        </form>
                    </div>

                </div>
                <div id="menu1" class="container tab-pane fade"><br>
                    <div class="container"style="margin-top: 70px;">
                        <%
                            List<Outsource_Company> outsourceCompanyAll = Dao_OutsourceCompany.retrieveAllOutsourceCompany();
                        %>

                        <div id="data">
                            <table class="table table-striped" >
                                <tr>
                                    <th>No</th>
                                    <th>Company ID</th>
                                    <th>Company Name</th>
                                    <th>Contract Start Date</th>
                                    <th>Contract End Date</th>
                                    <th>Contract Period</th>
                                    <th>Company No Tel</th>


                                </tr>
                                <%
                                    for (int i = 0; i < outsourceCompanyAll.size(); i++) {
                                %>
                                <tr>
                                    <td> <%=i%> </td>
                                    <td><%= outsourceCompanyAll.get(i).getCompanyID()%></td>
                                    <td><%= outsourceCompanyAll.get(i).getCompanyName()%></td>
                                    <td><%= outsourceCompanyAll.get(i).getContract_start_date()%></td>
                                    <td><%= outsourceCompanyAll.get(i).getContract_end_date()%></td>
                                    <td><%= outsourceCompanyAll.get(i).getContract_period()%></td>
                                    <td><%= outsourceCompanyAll.get(i).getCompanyNoTel()%></td>

                                    <td> </td>

                                    <td>
                                        <a style="margin-right: 10px;" href="process-update-outsourcecompany.jsp?companyID=<%= outsourceCompanyAll.get(i).getCompanyID()%>"><i class="fa fa-edit" style="font-size:20px"></i></a>
                                        <a href="deleteOutsourceCompany.jsp?companyID=<%= outsourceCompanyAll.get(i).getCompanyID()%>"><i class="fa fa-trash" style="font-size:20px"></i></a>
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
                    </div>

                </div>
            </div>




            <script>

            </script>
        </div>
        <div class="footer" align="center" style="background-color: #99c2ff;overflow-x: auto">
            <footer>Copyright &copy Vessel Maintenance Scheduling App 2020</footer>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    </body>
</html>
