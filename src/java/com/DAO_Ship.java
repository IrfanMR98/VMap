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
public class DAO_Ship {

    private final Connection connection;
    private int result;

    public DAO_Ship() {
        connection = DBConnection.getConnection();
    }

    public int addShip(ship ship) {

        try {
            String mySqlQuery = "INSERT INTO ship(shipID, shipName, shipFlag, portOfRegistry, yearOfBuild, shipOwner, shipBuilder) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);

            myPs.setString(1, ship.getShipID());
            myPs.setString(2, ship.getShipName());
            myPs.setString(3, ship.getShipFlag());
            myPs.setString(4, ship.getPortOfRegistry());
            myPs.setString(5, ship.getYearOfBuild());
            myPs.setString(6, ship.getShipOwner());
            myPs.setString(7, ship.getShipBuilder());

            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;

    }

    public List<ship> retrieveAllShip() {
        List<ship> shipAll = new ArrayList<ship>();
        ship ship;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from ship";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                ship = new ship();
                ship.setShipID(myRs.getString(1));
                ship.setShipName(myRs.getString(2));
                ship.setShipFlag(myRs.getString(3));
                ship.setPortOfRegistry(myRs.getString(4));
                ship.setYearOfBuild(myRs.getString(5));
                ship.setShipOwner(myRs.getString(6));
                ship.setShipBuilder(myRs.getString(7));
                shipAll.add(ship);

            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return shipAll;
    }
    
     public List<ship> retrieveAllShipID() {
        List<ship> shipAll = new ArrayList<ship>();
        ship ship;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select shipID from ship";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                ship = new ship();
                ship.setShipID(myRs.getString(1));
                
                shipAll.add(ship);

            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return shipAll;
    }

    public ship retrieveOneShip(String shipID) {
        ship ship = new ship();
        try {
            String myQuery = "select * from ship where shipID= ?";
            PreparedStatement ps = connection.prepareStatement(myQuery);
            ps.setString(1, shipID);
            ResultSet myRs = ps.executeQuery();
            while (myRs.next()) {

                ship.setShipID(myRs.getString(1));
                ship.setShipName(myRs.getString(2));
                ship.setShipFlag(myRs.getString(3));
                ship.setPortOfRegistry(myRs.getString(4));
                ship.setYearOfBuild(myRs.getString(5));
                ship.setShipOwner(myRs.getString(6));
                ship.setShipBuilder(myRs.getString(7));

            }

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return ship;
        
    }
    

    public int updateShip(ship ship) {
        try {

            String mySqlQuery = "UPDATE `ship` SET `shipName`=?,`shipFlag`=?,`portOfRegistry`=?,`yearOfBuild`=?,`shipOwner`=?,`shipBuilder`=? WHERE shipID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, ship.getShipName());
            myPs.setString(2, ship.getShipFlag());
            myPs.setString(3, ship.getPortOfRegistry());
            myPs.setString(4, ship.getYearOfBuild());
            myPs.setString(5, ship.getShipOwner());
            myPs.setString(6, ship.getShipBuilder());
            myPs.setString(7, ship.getShipID());

            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is; " + e);
        }
        return result;
    }

    public int deleteShip(String shipID) {
        try {
            String mySqlQuery = "delete from ship where shipID=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, shipID);
            result = myPs.executeUpdate();

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return result;
    }

}
