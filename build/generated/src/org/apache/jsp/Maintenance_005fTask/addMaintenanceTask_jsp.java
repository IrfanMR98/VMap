package org.apache.jsp.Maintenance_005fTask;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.sql.*;
import com.MaintenanceTask;

public final class addMaintenanceTask_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      com.DBConnection database = null;
      synchronized (request) {
        database = (com.DBConnection) _jspx_page_context.getAttribute("database", PageContext.REQUEST_SCOPE);
        if (database == null){
          database = new com.DBConnection();
          _jspx_page_context.setAttribute("database", database, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');
      com.DAO_MaintenanceTask Dao_MaintenanceTask = null;
      synchronized (request) {
        Dao_MaintenanceTask = (com.DAO_MaintenanceTask) _jspx_page_context.getAttribute("Dao_MaintenanceTask", PageContext.REQUEST_SCOPE);
        if (Dao_MaintenanceTask == null){
          Dao_MaintenanceTask = new com.DAO_MaintenanceTask();
          _jspx_page_context.setAttribute("Dao_MaintenanceTask", Dao_MaintenanceTask, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/style.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"width=device-width, initial-scale=1;text/html; charset=UTF-8\">\n");
      out.write("        <title>Maintenance Task</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #ccebff\">\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("           <a href=\"../mainmenu.jsp\"> <img src=\"../vmap.png\" width=\"50px\" height=\"50px\">\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("                <div class=\"navbar-nav\">\n");
      out.write("                    <a class=\"nav-item nav-link active\" href=\"../mainmenu.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"addWorker.jsp\">Worker</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"../ship/addShip.jsp\">Ship</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"#\">Ship Component</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"../Outsource_Company/addOutsourceCompany.jsp\">Outsource Company</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"addMaintenanceTask.jsp\">Maintenance Task</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"#\">Schedule</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"contact.jsp\">Contact</a>\n");
      out.write("                    <a class=\"nav-item nav-link\" href=\"contact.jsp\">Logout</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <br><br><br>\n");
      out.write("        <div class=\"container mt-3\">\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <!-- Nav tabs -->\n");
      out.write("            <ul class=\"nav nav-tabs\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" data-toggle=\"tab\" href=\"#home\">Add Maintenance Task</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#menu1\">List Maintenance Task</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <!-- Tab panes -->\n");
      out.write("            <div class=\"tab-content\">\n");
      out.write("                <div id=\"home\" class=\"container tab-pane active\"><br>\n");
      out.write("                    <div class=\"container\">  \n");
      out.write("                        <form class=\"asset\" action=\"processAddMT.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <fieldset>\n");
      out.write("                                <label>Task ID</label>\n");
      out.write("                                <input name=\"taskID\" placeholder=\"Task ID\" type=\"text\" tabindex=\"1\" required autofocus>\n");
      out.write("                            </fieldset>\n");
      out.write("                            <fieldset>\n");
      out.write("                                <label>Task Name</label>\n");
      out.write("                                <input name=\"taskName\" placeholder=\"Task Name\" type=\"text\" tabindex=\"2\" required>\n");
      out.write("                            </fieldset>\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                            <br>\n");
      out.write("                            <fieldset>\n");
      out.write("                                <button name=\"submit\" type=\"submit\" id=\"contact-submit\" data-submit=\"...Sending\">Submit</button>\n");
      out.write("                            </fieldset>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div id=\"menu1\" class=\"container tab-pane fade\"><br>\n");
      out.write("                    <div class=\"container\"style=\"margin-top: 70px;\">\n");
      out.write("                        ");

                            List<MaintenanceTask> taskAll = Dao_MaintenanceTask.retrieveAllMaintenanceTask();
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <div id=\"data\">\n");
      out.write("                            <table class=\"table table-striped\" >\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Task ID</th>\n");
      out.write("                                    <th>Task Name</th>\n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                    for (int i = 0; i < taskAll.size(); i++) {
                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>");
      out.print( taskAll.get(i).getTaskID());
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print( taskAll.get(i).getTaskName());
      out.write("</td>\n");
      out.write("                                   \n");
      out.write("                                    <td> </td>\n");
      out.write("\n");
      out.write("                                    <td>\n");
      out.write("                                        <a style=\"margin-right: 10px;\" href=\"process-update-mt.jsp?taskID=");
      out.print( taskAll.get(i).getTaskID());
      out.write("\"><i class=\"fa fa-edit\" style=\"font-size:20px\"></i></a>\n");
      out.write("                                        <a href=\"deleteProcessMT.jsp?taskID=");
      out.print( taskAll.get(i).getTaskID());
      out.write("\"><i class=\"fa fa-trash\" style=\"font-size:20px\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                            ");

                                database.closeConnection();
                            
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                   </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <script>\n");
      out.write("\n");
      out.write("            </script>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
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
