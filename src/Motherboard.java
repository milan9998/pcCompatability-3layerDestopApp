/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
class Motherboard {
    public int motherboardId;
    public int socketTypeId;
    public String motherboardName;
    public String chipsetName;
    public int ramMemoryGen;

    public Motherboard(int motherboardId, int socketTypeId, String motherboardName, String chipsetName, int ramMemoryGen) {
        this.motherboardId = motherboardId;
        this.socketTypeId = socketTypeId;
        this.motherboardName = motherboardName;
        this.chipsetName = chipsetName;
        this.ramMemoryGen = ramMemoryGen;
    }

    public int getMotherboardId() {
        return motherboardId;
    }

    public void setMotherboardId(int motherboardId) {
        this.motherboardId = motherboardId;
    }

    public int getSocketTypeId() {
        return socketTypeId;
    }

    public void setSocketTypeId(int socketTypeId) {
        this.socketTypeId = socketTypeId;
    }

    public String getMotherboardName() {
        return motherboardName;
    }

    public void setMotherboardName(String motherboardName) {
        this.motherboardName = motherboardName;
    }

    public String getChipsetName() {
        return chipsetName;
    }

    public void setChipsetName(String chipsetName) {
        this.chipsetName = chipsetName;
    }

    public int getRamMemoryGen() {
        return ramMemoryGen;
    }

    public void setRamMemoryGen(int ramMemoryGen) {
        this.ramMemoryGen = ramMemoryGen;
    }
    
public String toString(){
    
        return motherboardName + chipsetName + socketTypeId + motherboardId + ramMemoryGen;
}


    
}
  

