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
public class ShipComponent {
    private ship shipID;
    private String componentID, componentName, componentModel;

    public ship getShipID() {
        return shipID;
    }

    public void setShipID(ship shipID) {
        this.shipID = shipID;
    }

    public String getComponentID() {
        return componentID;
    }

    public void setComponentID(String componentID) {
        this.componentID = componentID;
    }

    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public String getComponentModel() {
        return componentModel;
    }

    public void setComponentModel(String componentModel) {
        this.componentModel = componentModel;
    }
    public ShipComponent(){
        
    }
    
    
}
