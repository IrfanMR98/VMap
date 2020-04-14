/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.-
 */
package com;

/**
 *
 * @author Mohammad Irfan
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.io.InputStream;
import javax.servlet.http.Part;

public class DAO_OutsourceCompany {

    private final Connection connection;
    private int result;

    public DAO_OutsourceCompany() {
        connection = DBConnection.getConnection();
    }

    public int addOutsourceCompany(Outsource_Company oc) {

        try {
            String mySqlQuery = "INSERT INTO outsourcecompany(companyID, companyName, contract_start_date, contract_end_date, contract_period, companyNoTel) VALUES (?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);

            myPs.setString(1, oc.getCompanyID());
            myPs.setString(2, oc.getCompanyName());
            myPs.setString(3, oc.getContract_start_date());
            myPs.setString(4, oc.getContract_end_date());
            myPs.setInt(5, oc.getContract_period());
            myPs.setString(6, oc.getCompanyNoTel());

            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;

    }

    public List<Outsource_Company> retrieveAllOutsourceCompany() {
        List<Outsource_Company> outsourceCompanyAll = new ArrayList<Outsource_Company>();
        Outsource_Company oc;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from outsourcecompany";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                oc= new Outsource_Company();
                oc.setCompanyID(myRs.getString(1));
                oc.setCompanyName(myRs.getString(2));
                oc.setContract_start_date(myRs.getString(3));
                oc.setContract_end_date(myRs.getString(4));
                oc.setContract_period(myRs.getInt(5));
                oc.setCompanyNoTel(myRs.getString(6));
                
                outsourceCompanyAll.add(oc);

            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return outsourceCompanyAll;
    }

    public Outsource_Company retrieveOneOutsourceCompany(String companyID) {
        Outsource_Company oc = new Outsource_Company();
        try {
            String myQuery = "select * from outsourcecompany where companyID= ?";
            PreparedStatement ps = connection.prepareStatement(myQuery);
            ps.setString(1, companyID);
            ResultSet myRs = ps.executeQuery();
            while (myRs.next()) {
                oc.setCompanyID(myRs.getString(1));
                oc.setCompanyName(myRs.getString(2));
                oc.setContract_start_date(myRs.getString(3));
                oc.setContract_end_date(myRs.getString(4));
                oc.setContract_period(myRs.getInt(5));
                oc.setCompanyNoTel(myRs.getString(6));

                

            }

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return oc;
    }

    public int updateOutsourceCompany(Outsource_Company oc) {
        try {

            String mySqlQuery = "UPDATE `outsourcecompany` SET `companyName`=?,`contract_start_date`=?,`contract_end_date`=?,`contract_period`=?,`companyNoTel`=? WHERE companyID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, oc.getCompanyName());
            myPs.setString(2, oc.getContract_start_date());
            myPs.setString(3, oc.getContract_end_date());
            myPs.setInt(4, oc.getContract_period());
            myPs.setString(5, oc.getCompanyNoTel());
            myPs.setString(6, oc.getCompanyID());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is; " + e);
        }
        return result;
    }

    public int deleteOutsourceCompany(String companyID) {
        try {
            String mySqlQuery = "delete from outsourcecompany where companyID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, companyID);
            result = myPs.executeUpdate();

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return result;
    }

}
