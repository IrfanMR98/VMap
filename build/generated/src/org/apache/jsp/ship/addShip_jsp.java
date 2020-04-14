package org.apache.jsp.ship;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.sql.*;
import com.ship;

public final class addShip_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      com.DBConnection database = null;
      synchronized (request) {
        database = (com.DBConnection) _jspx_page_context.getAttribute("database", PageContext.REQUEST_SCOPE);
        if (database == null){
          database = new com.DBConnection();
          _jspx_page_context.setAttribute("database", database, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');
      com.DAO_Ship Dao = null;
      synchronized (request) {
        Dao = (com.DAO_Ship) _jspx_page_context.getAttribute("Dao", PageContext.REQUEST_SCOPE);
        if (Dao == null){
          Dao = new com.DAO_Ship();
          _jspx_page_context.setAttribute("Dao", Dao, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <!------ Include the above in your HEAD tag ---------->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-2.1.3.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>VMap Home</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                /*background: url('https://static-communitytable.parade.com/wp-content/uploads/2014/03/rethink-target-heart-rate-number-ftr.jpg') fixed;*/   \n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            *[role=\"form\"] {\n");
      out.write("                max-width: 530px;\n");
      out.write("                padding: 15px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                border-radius: 0.3em;\n");
      out.write("                background-color: #f2f2f2;\n");
      out.write("                overflow-x: auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            *[role=\"form\"] h2 { \n");
      out.write("                font-family: 'Open Sans' , sans-serif;\n");
      out.write("                font-size: 40px;\n");
      out.write("                font-weight: 600;\n");
      out.write("                color: #000000;\n");
      out.write("                margin-top: 5%;\n");
      out.write("                text-align: center;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                letter-spacing: 4px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body  style=\"background-color: #ccebff\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <img src=\"vmap.png\" width=\"50px\" height=\"50px\">\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("                <div class=\"navbar-nav\">\n");
      out.write("                    <a class=\"nav-item nav-link active\" href=\"../mainmenu.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"../worker/addWorker.jsp\">Worker</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"addShip.jsp\">Ship</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"#\">Ship Component</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"../OutsourceCompany/addOutsourceCompany.jsp\">Outsource Company</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"../MaintenanceTask/addMaintenanceTask.jsp\">Maintenance Task</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"#\">Schedule</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"contact.jsp\">Contact</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"index.jsp\">Logout</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </nav> \n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form class=\"form-horizontal\" role=\"form\" action=\"processAddShip.jsp\" method=\"post\">\n");
      out.write("                <h2>Ship Registration</h2>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"shipID\" class=\"col-sm-3 control-label\">Ship ID*</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"shipID\" placeholder=\"Ship Identification\" class=\"form-control\" autofocus name=\"shipID\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"shipName\" class=\"col-sm-3 control-label\">Ship Name</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"shipName\" placeholder=\"Ship Name\" class=\"form-control\" autofocus name=\"shipName\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"shipFlag\" class=\"col-sm-3 control-label\">Ship Flag* </label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"shipFlag\" placeholder=\"Ship Flag\" class=\"form-control\" name= \"shipFlag\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"portOfRegistry\" class=\"col-sm-3 control-label\">Port of Registry*</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"portOfRegistry\" placeholder=\"Port Of Registry\" class=\"form-control\" name=\"portOfRegistry\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"yearOfBuild\" class=\"col-sm-3 control-label\">Year of Build*</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"yearOfBuild\" placeholder=\"Year of Build*\" class=\"form-control\" name=\"yearOfBuild\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"shipOwner\" class=\"col-sm-3 control-label\">Ship Owner*</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"shipOwner\" placeholder=\"Ship Owner\" class=\"form-control\" name=\"shipOwner\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"shipBuilder\" class=\"col-sm-3 control-label\">Ship Builder*</label>\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("                        <input type=\"text\" id=\"shipBuilder\" placeholder=\"Ship Builder\" class=\"form-control\" name=\"shipBuilder\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary btn-block\" id=\"contact-submit\" data-submit=\"...Sending\">Register</button>\n");
      out.write("            </form> <!-- /form -->\n");
      out.write("        </div> <!-- ./container -->\n");
      out.write("        <div class=\"container\"style=\"margin-top: 70px;overflow-x: auto\">\n");
      out.write("            ");

                List<ship> shipAll = Dao.retrieveAllShip();
            
      out.write("\n");
      out.write("\n");
      out.write("            <div id=\"data\">\n");
      out.write("                <table class=\"table table-striped\" >\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Ship ID</th>\n");
      out.write("                        <th>Ship Name</th>\n");
      out.write("                        <th>Ship Flag</th>\n");
      out.write("                        <th>Port of Registry</th>\n");
      out.write("                        <th>Year of Build</th>\n");
      out.write("                        <th>Ship Owner</th>\n");
      out.write("                        <th>Ship Builder</th>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        for (int i = 0; i < shipAll.size(); i++) {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getShipID());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getShipName());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getShipFlag());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getPortOfRegistry());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getYearOfBuild());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getShipOwner());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( shipAll.get(i).getShipBuilder());
      out.write("</td> \n");
      out.write("\n");
      out.write("                        <td> </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <a style=\"margin-right: 10px;\" href=\"process-update-ship.jsp?shipID=");
      out.print( shipAll.get(i).getShipID());
      out.write("\"><i class=\"fa fa-edit\" style=\"font-size:20px\"></i></a>\n");
      out.write("                            <a href=\"deleteShipProcess.jsp?shipID=");
      out.print( shipAll.get(i).getShipID());
      out.write("\"><i class=\"fa fa-trash\" style=\"font-size:20px\"></i></a>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("                ");

                    database.closeConnection();
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"footer\" align=\"center\">\n");
      out.write("            <footer>Copyright &copy Vessel Maintenance Scheduling App 2020</footer>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
