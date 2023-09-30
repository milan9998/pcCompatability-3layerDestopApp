/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *CpuId,CpuTypeID,CpuName,socket,powerConsuming
 * @author Milan
 */
class Cpu {
    public int CpuId;
    public int CpuTypeId;
    public String CpuName;
    public int socketTypeId;
    public String powerConsuming;

    public Cpu(int CpuId, int CpuTypeId, String CpuName, int socketTypeId, String powerConsuming) {
        this.CpuId = CpuId;
        this.CpuTypeId = CpuTypeId;
        this.CpuName = CpuName;
        this.socketTypeId = socketTypeId;
        this.powerConsuming = powerConsuming;
    }

    public int getCpuId() {
        return CpuId;
    }

    public void setCpuId(int CpuId) {
        this.CpuId = CpuId;
    }

    public int getCpuTypeId() {
        return CpuTypeId;
    }

    public void setCpuTypeId(int CpuTypeId) {
        this.CpuTypeId = CpuTypeId;
    }

    public String getCpuName() {
        return CpuName;
    }

    public void setCpuName(String CpuName) {
        this.CpuName = CpuName;
    }

    public int getSocketTypeId() {
        return socketTypeId;
    }

    public void setSocketTypeId(int socketTypeId) {
        this.socketTypeId = socketTypeId;
    }

    public String getPowerConsuming() {
        return powerConsuming;
    }

    public void setPowerConsuming(String powerConsuming) {
        this.powerConsuming = powerConsuming;
    }
   
}
