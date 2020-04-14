<%-- 
    Document   : process-update-outsourcecompany2
    Created on : Apr 10, 2020, 12:02:46 AM
    Author     : U S E R
--%>

<%@page import="com.DAO_OutsourceCompany"%>
<%@page import="com.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*, com.Outsource_Company" %>
<jsp:useBean id="database" class="com.DBConnection" scope="request"/>
<jsp:useBean id="Dao_OutsourceCompany" class="com.DAO_OutsourceCompany" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Outsource Company</title>
    </head>
    <body style="font-family: century gothic;">
        <%
            String companyID = request.getParameter("companyID");
            String companyName = request.getParameter("companyName");
            String contract_start_date = request.getParameter("contract_start_date");
            String contract_end_date = request.getParameter("contract_end_date");
            int contract_period = Integer.parseInt(request.getParameter("contract_period"));
            String companyNoTel = request.getParameter("companyNoTel");

            DBConnection db = new DBConnection();
            DAO_OutsourceCompany dao = new DAO_OutsourceCompany();
            Outsource_Company oc = new Outsource_Company();
            oc.setCompanyID(companyID);
            oc.setCompanyName(companyName);
            oc.setContract_start_date(contract_start_date);
            oc.setContract_end_date(contract_end_date);
            oc.setContract_period(contract_period);
            oc.setCompanyNoTel(companyNoTel);

            int result = dao.updateOutsourceCompany(oc);
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Outsource Company Updated\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addOutsourceCompany.jsp");
                rd.include(request, response);
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\" Data Update is forbidden\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("addOutsourceCompany.jsp");
                rd.include(request, response);
            }

            db.closeConnection();
        %>
    </body>
</html>

