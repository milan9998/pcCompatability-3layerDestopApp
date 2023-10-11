package DAL.Models;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Milan
 */
public class SocketType {
    public int socketTypeId;
    public String description;

    public SocketType(int socketTypeId, String description) {
        this.socketTypeId = socketTypeId;
        this.description = description;
    }

    public int getSocketTypeId() {
        return socketTypeId;
    }

    public void setSocketTypeId(int socketTypeId) {
        this.socketTypeId = socketTypeId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
