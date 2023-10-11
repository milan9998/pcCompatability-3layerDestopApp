package DAL.Models;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
public class Gpu {
    public int gpuId;
    public String gpuName;
    public int powerConsuming;

    public Gpu(int gpuId, String gpuName, int powerConsuming) {
        this.gpuId = gpuId;
        this.gpuName = gpuName;
        this.powerConsuming = powerConsuming;
    }

    public int getGpuId() {
        return gpuId;
    }

    public void setGpuId(int gpuId) {
        this.gpuId = gpuId;
    }

    public String getGpuName() {
        return gpuName;
    }

    public void setGpuName(String gpuName) {
        this.gpuName = gpuName;
    }

    public int getPowerConsuming() {
        return powerConsuming;
    }

    public void setPowerConsuming(int powerConsuming) {
        this.powerConsuming = powerConsuming;
    }
    
}
