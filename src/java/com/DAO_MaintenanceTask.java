/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author U S E R
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAO_MaintenanceTask {

    private final Connection connection;
    private int result;

    public DAO_MaintenanceTask() {
        connection = DBConnection.getConnection();
    }

    public int addMaintenanceTask(MaintenanceTask mt) {

        try {
            String mySqlQuery = "INSERT INTO maintenancetask(taskID, taskName) VALUES (?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);

            myPs.setString(1, mt.getTaskID());
            myPs.setString(2, mt.getTaskName());

            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;

    }

    public List<MaintenanceTask> retrieveAllMaintenanceTask() {
        List<MaintenanceTask> maintenanceTaskAll = new ArrayList<MaintenanceTask>();
        MaintenanceTask mt;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from maintenancetask";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                mt = new MaintenanceTask();
                mt.setTaskID(myRs.getString(1));
                mt.setTaskName(myRs.getString(2));
                maintenanceTaskAll.add(mt);

            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return maintenanceTaskAll;
    }

    public MaintenanceTask retrieveOneMaintenanceTask(String taskID) {
        MaintenanceTask mt = new MaintenanceTask();
        try {
            String myQuery = "select * from maintenancetask where taskID= ?";
            PreparedStatement ps = connection.prepareStatement(myQuery);
            ps.setString(1, taskID);
            ResultSet myRs = ps.executeQuery();
            while (myRs.next()) {
                mt.setTaskID(myRs.getString(1));
                mt.setTaskName(myRs.getString(2));

            }

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return mt;

    }
    public int updateMaintenanceTask(MaintenanceTask mt) {
        try {

            String mySqlQuery = "UPDATE `maintenancetask` SET `taskName`=? WHERE taskID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, mt.getTaskName());
            myPs.setString(2, mt.getTaskID());
            
            
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is; " + e);
        }
        return result;
    }

    public int deleteMaintenanceTask(String taskID) {
        try {
            String mySqlQuery = "delete from maintenancetask where taskID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, taskID);
            result = myPs.executeUpdate();

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return result;
    }


}
