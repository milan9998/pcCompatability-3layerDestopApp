/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
class StorageDeviceType {
    public int storageDevicesId;
    public String description;

    public StorageDeviceType(int storageDevicesId, String description) {
        this.storageDevicesId = storageDevicesId;
        this.description = description;
    }

    public int getStorageDevicesId() {
        return storageDevicesId;
    }

    public void setStorageDevicesId(int storageDevicesId) {
        this.storageDevicesId = storageDevicesId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
