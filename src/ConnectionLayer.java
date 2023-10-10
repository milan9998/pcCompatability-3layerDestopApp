package Models;

import com.mysql.cj.protocol.Resultset;
import java.sql.*;
import java.util.ArrayList;



public class ConnectionLayer {
     Connection conn;
    
    
public ConnectionLayer() {
        try {
            // Get the database connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcConfiguration", "root", "milanp25");
            System.out.println("Connected successful");
        } catch (SQLException ex) {
            System.out.println("Database connection failed: " + ex.getMessage());
        }
    }   



public ArrayList<CpuType> getCPUtype() {
        var toReturn=new ArrayList<CpuType>();     
        try {
            
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT CpuTypeId,description FROM cpuType");
            
            
            while (rs.next()) {
                var CpuTypeId = rs.getInt("CpuTypeId");
                var description = rs.getString("description");
                var CpuType = new CpuType(CpuTypeId,description);
                toReturn.add(CpuType);
                System.out.println("ID: " + CpuTypeId + ", description: " + description);
            }
            
            
            
        } catch (SQLException ex) {
            System.out.println("Error retrieving CPUs: " + ex.getMessage());
        }
         return toReturn;
    }


public ArrayList<Cpu> getAllCPUs(){
            var toReturn = new ArrayList<Cpu>();
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT CpuId, CpuTypeID, CpuName, socketTypeId, powerConsuming FROM Cpu");
            
            while(rs.next()){
                var CpuId = rs.getInt("CpuId");
                var CpuTypeID = rs.getInt("CpuTypeID");
                var CpuName = rs.getString("CpuName");
                var socketTypeId = rs.getInt("socketTypeId");
                var powerConsuming = rs.getInt("powerConsuming");
                var AllCpu = new Cpu(CpuId,CpuTypeID,CpuName,socketTypeId,powerConsuming);
                toReturn.add(AllCpu);

            }
            
        }catch(SQLException ex){
            System.out.println("Error : " + ex.getMessage());

        }
        
         return toReturn;
    
}
public ArrayList<SocketType> getSocketType(){
        var toReturn=new ArrayList<SocketType>();
        
        try{
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT socketTypeId,description FROM socketType");
        
        while(rs.next()){
            var socketTypeId=rs.getInt("socketTypeId");
            var description =rs.getString("description");
            var socketInfo  = new SocketType(socketTypeId, description);
            toReturn.add(socketInfo);
        }
        
        }catch(SQLException ex){
            System.out.println("Error : " + ex.getMessage());
        }

         return toReturn;
    
}


public ArrayList<Motherboard> getMotherboardsByCpu(Cpu cpu){
        var toReturn=new ArrayList<Motherboard>();
    
        
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT motherboardId,socketTypeId,motherboardName,chipsetName,ramMemorygen FROM motherboard WHERE socketTypeId="+cpu.socketTypeId);
        while(rs.next()){
            var motherboardId = rs.getInt("motherboardId");
            var socketTypeId = rs.getInt("socketTypeId");
            var motherboardName = rs.getString("motherboardName");
            var chipsetName = rs.getString("chipsetName");
            var ramMemorygen = rs.getInt("ramMemorygen");
            var motherboards  = new Motherboard(motherboardId, socketTypeId, motherboardName, chipsetName, ramMemorygen);
            toReturn.add(motherboards);
            
        }
        }catch(SQLException ex){
            System.out.println("Error"+ex.getMessage());
        }
        
        
        
        return toReturn;
    
}


public ArrayList<RamMemoryGen> getMemoryGen(){
        var toReturn = new ArrayList<RamMemoryGen>();
        
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs   = stmt.executeQuery("SELECT ramGenId,genDescription FROM ramMemoryGen");
            while(rs.next()){
                var ramGenId = rs.getInt("ramGenId");
                var genDescription = rs.getString("genDescription");
                var genId = new RamMemoryGen(ramGenId, genDescription);
                toReturn.add(genId);
            }
            
        }catch(SQLException e){
            System.out.println("Error " + e.getMessage());
        }
        
        
        return toReturn;
    
}

public ArrayList<RamMemory> getRamByMotherboard(Motherboard motherboard){
        var toReturn = new ArrayList<RamMemory>();
        
        try{
            Statement stmt = conn.createStatement();                                
            ResultSet rs   = stmt.executeQuery("SELECT ramMemoryId,ramGenId,ramMemoryName FROM ramMemory WHERE ramGenId="+motherboard.ramMemoryGen); 
            while(rs.next()){
                var ramMemoryId = rs.getInt("ramMemoryId");
                var ramGenId    = rs.getInt("ramGenId");
                var ramMemoryName=rs.getString("ramMemoryName");
                var ramMemory  = new RamMemory(ramMemoryId, ramGenId, ramMemoryName);
                toReturn.add(ramMemory);
            }
            }catch(SQLException e){
                    System.out.println("Error " + e.getMessage());
                    }  
        return toReturn;
    
}

     
public ArrayList<StorageDevice> getStorageDevices(){
            var toReturn = new ArrayList<StorageDevice>();
            
         try{
            Statement stmt = conn.createStatement();
            ResultSet rs   = stmt.executeQuery("SELECT id,name FROM storageDevices");
            while(rs.next()){
                
                var id            = rs.getInt("id");
                var name          = rs.getString("name");
                var storageDevices= new StorageDevice(id,name);
                toReturn.add(storageDevices);
                
            }
        }catch(SQLException e){
                    System.out.println("Error " + e.getMessage());
                    }     

         return toReturn;
    
}

public ArrayList<GpuBrand> getGpuBrand(){
    var toReturn = new ArrayList<GpuBrand>();
    
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs   = stmt.executeQuery("SELECT gpuBrandId,description FROM gpuBrand");
            while(rs.next()){
                var gpuBrandId = rs.getInt("gpuBrandId");
                var description= rs.getString("description");
                var gpusBrand  = new GpuBrand(gpuBrandId, description);
                toReturn.add(gpusBrand);
            }
        }catch(SQLException e){
            System.out.println("Error " + e.getMessage());
        }
    
    
    
    
    
         return toReturn;
    
}
public ArrayList<Gpu> getAllGpus(){
    var toReturn = new ArrayList<Gpu>();
    
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs   = stmt.executeQuery("SELECT gpuId,gpuName,powerConsuming FROM gpu");
            while(rs.next()){
                var gpuId = rs.getInt("gpuId");
                var gpuName  = rs.getString("gpuName");
                var powerConsuming= rs.getInt("powerConsuming");
                var gpuS = new Gpu(gpuId, gpuName, powerConsuming);
                toReturn.add(gpuS);
            }
        }catch(SQLException e){
            System.out.println("Error " + e.getMessage());
        };
        
        return toReturn;

    
}    
     
public ArrayList<Psu> getPsu(){
        var toReturn = new ArrayList<Psu>();
    
    try{
            Statement stmt = conn.createStatement();
            ResultSet rs   = stmt.executeQuery("SELECT psuId,psuName,power FROM psu");
            while(rs.next()){
                var psuId = rs.getInt("psuId");
                var power= rs.getInt("power");
                var psuName  = rs.getString("psuName");
                var psu = new Psu(psuId, psuName, power);
                toReturn.add(psu);
            }
        }catch(SQLException e){
            System.out.println("Error " + e.getMessage());
        };
    
    
        
        
    
        return toReturn;
    
}    

}