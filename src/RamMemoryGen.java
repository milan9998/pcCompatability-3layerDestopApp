/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
class RamMemoryGen {
    public int ramGenId;
    public String genDescription;

    public RamMemoryGen(int ramGenId, String genDescription) {
        this.ramGenId = ramGenId;
        this.genDescription = genDescription;
    }

    public int getRamGenId() {
        return ramGenId;
    }

    public void setRamGenId(int ramGenId) {
        this.ramGenId = ramGenId;
    }

    public String getGenDescription() {
        return genDescription;
    }

    public void setGenDescription(String genDescription) {
        this.genDescription = genDescription;
    }
    
}
