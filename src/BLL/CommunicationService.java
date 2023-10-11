package BLL;
import DAL.ComponentsRepository;
import DAL.Models.*;

import java.util.ArrayList;
import java.sql.*;
public class CommunicationService {
    private ComponentsRepository componentsRepository = new ComponentsRepository();

private ArrayList<CpuType> getCPUtype(){

    return componentsRepository.getCPUtype();
}
public ArrayList<Cpu> getAllCpus(){
    return componentsRepository.getAllCPUs();
}
public ArrayList<SocketType> getSocketTypes(){
    return componentsRepository.getSocketType();
}
public ArrayList<Motherboard> getMotherboardsByCpu(Cpu cpu){
    return componentsRepository.getMotherboardsByCpu(cpu);
}
public ArrayList<RamMemoryGen> getRamMemoryGen(){

    return componentsRepository.getMemoryGen();
}
public ArrayList<RamMemory> getRamByMotherboard(Motherboard motherboard){
    return componentsRepository.getRamByMotherboard(motherboard);
}


public ArrayList<StorageDevice> getStorageDevices(){
    return componentsRepository.getStorageDevices();
}
public ArrayList<GpuBrand> getGpuBrands(){
    return componentsRepository.getGpuBrand();
}
public ArrayList<Gpu> getGpus(){

    return componentsRepository.getAllGpus();
}
public ArrayList<Psu>getPsu(double totalConsumption){

    return componentsRepository.getReqPsu(totalConsumption);
}


}
