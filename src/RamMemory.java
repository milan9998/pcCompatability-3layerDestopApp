/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
class RamMemory {
    public int ramMemoryId;
    public int ramGenId;
    public String ramMemoryName;

    public RamMemory(int ramMemoryId, int ramGenId, String ramMemoryName) {
        this.ramMemoryId = ramMemoryId;
        this.ramGenId = ramGenId;
        this.ramMemoryName = ramMemoryName;
    }

    public int getRamMemoryId() {
        return ramMemoryId;
    }

    public void setRamMemoryId(int ramMemoryId) {
        this.ramMemoryId = ramMemoryId;
    }

    public int getRamGenId() {
        return ramGenId;
    }

    public void setRamGenId(int ramGenId) {
        this.ramGenId = ramGenId;
    }

    public String getRamMemoryName() {
        return ramMemoryName;
    }

    public void setRamMemoryName(String ramMemoryName) {
        this.ramMemoryName = ramMemoryName;
    }

    @Override
    public String toString() {
        return ramMemoryName;
    }
    
}
