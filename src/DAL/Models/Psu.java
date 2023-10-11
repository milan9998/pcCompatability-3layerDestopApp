package DAL.Models;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
public class Psu {
    public int psuId;
    public String psuName;
    public int power;

    public Psu(int psuId, String psuName, int power) {
        this.psuId = psuId;
        this.psuName = psuName;
        this.power = power;
    }

    public int getPsuId() {
        return psuId;
    }

    public void setPsuId(int psuId) {
        this.psuId = psuId;
    }

    public String getPsuName() {
        return psuName;
    }

    public void setPsuName(String psuName) {
        this.psuName = psuName;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }
    
}
