/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.io.InputStream;
import javax.servlet.http.Part;

/**
 *
 * @author MOHAMMAD IRFAN BIN MAHADI S48613
 */
public class DAO {

    private final Connection connection;
    private int result;

    public DAO() {
        connection = DBConnection.getConnection();

    }

    public int addWorker(Worker worker) {
        
        try {
            String mySqlQuery = "INSERT INTO worker(workerID,firstName,lastName,icno,address, phoneNo, position, type_of_Worker, username,password) VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
           
           
            myPs.setString(1, worker.getWorkerID());
            myPs.setString(2, worker.getFirstName());
            myPs.setString(3, worker.getLastName());
            myPs.setString(4, worker.getIcno());
            myPs.setString(5, worker.getAddress());
            myPs.setString(6, worker.getPhoneNo());
            myPs.setString(7, worker.getPosition());
            myPs.setString(8, worker.getType_of_Worker());
            myPs.setString(9, worker.getUsername());
            myPs.setString(10, worker.getPassword());
          
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;

    }

    public List<Worker> retrieveAllWorker() {
        List<Worker> WorkerAll = new ArrayList<Worker>();
        Worker worker;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from worker";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                worker = new Worker();
                worker.setWorkerID(myRs.getString(1));
                worker.setFirstName(myRs.getString(2));
                worker.setLastName(myRs.getString(3));
                worker.setIcno(myRs.getString(4));
                worker.setAddress(myRs.getString(5));
                worker.setPhoneNo(myRs.getString(6));
                worker.setPosition(myRs.getString(7));
                worker.setType_of_Worker(myRs.getString(8));
                worker.setUsername(myRs.getString(9));
                worker.setPassword(myRs.getString(10));
                WorkerAll.add(worker);
            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return WorkerAll;
    }

    public Worker retrieveOneWorker(String workerID) {
        Worker worker = new Worker();
        try {
            String myQuery = "select * from worker where workerID= ?";
            PreparedStatement ps = connection.prepareStatement(myQuery);
            ps.setString(1, workerID);
            ResultSet myRs = ps.executeQuery();
            while (myRs.next()) {

                worker.setWorkerID(myRs.getString(1));
                worker.setFirstName(myRs.getString(2));
                worker.setLastName(myRs.getString(3));
                worker.setIcno(myRs.getString(4));
                worker.setAddress(myRs.getString(5));
                worker.setPhoneNo(myRs.getString(6));
                worker.setPosition(myRs.getString(7));
                worker.setType_of_Worker(myRs.getString(8));
                worker.setUsername(myRs.getString(9));
                worker.setPassword(myRs.getString(10));

            }

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return worker;
    }

    public int updateWorker(Worker worker) {
        try {

            String mySqlQuery = "UPDATE `worker` SET `firstName`=?,`lastName`=?,`icno`=?,`address`=?,`phoneNo`=?,`position`=?,`type_of_Worker`=?,`username`=?,`password`=? WHERE workerID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, worker.getFirstName());
            myPs.setString(2, worker.getLastName());
            myPs.setString(3, worker.getIcno());
            myPs.setString(4, worker.getAddress());
            myPs.setString(5, worker.getPhoneNo());
            myPs.setString(6, worker.getPosition());
            myPs.setString(7, worker.getType_of_Worker());
            myPs.setString(8, worker.getUsername());
            myPs.setString(9, worker.getPassword());
            myPs.setString(10, worker.getWorkerID());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is; " + e);
        }
        return result;
    }

    public int deleteWorker(String workerID) {
        try {
            String mySqlQuery = "delete from worker where workerID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, workerID);
            result = myPs.executeUpdate();

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return result;
    }
}
