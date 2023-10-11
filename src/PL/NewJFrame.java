package PL;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
import BLL.CommunicationService;
import DAL.Models.*;

import java.sql.*;
import javax.swing.*;

import DAL.ComponentsRepository;
/**
 *
 * @author Milan
 */
public class NewJFrame extends javax.swing.JFrame {

    /**
     * Creates new form NewJFrame
     */
    public Cpu selectedCpu;
    public Motherboard selectedMotherboard;
    public RamMemory selectedRamMem;
    public Gpu selectedGpu;
    public StorageDevice selectedSD;
    public Psu selectedPsu;
    public double totalConsumption;
    Connection conn;
    private CommunicationService communicationService;
    boolean cpuFirstTime = true;
    boolean gpuFirstTime = true;
    boolean mbdFirstTime = true;
    boolean ramFirstTime = true;
    boolean ssdFirstTime = true;

    
    public NewJFrame() {

        communicationService = new CommunicationService();

        try {
            // Get the database connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pcConfiguration", "root", "milanp25");
            System.out.println("Connected successful");
        } catch (SQLException ex) {
            System.out.println("Database connection failed: " + ex.getMessage());
        }
        initComponents();

    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Complete = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        motherboardComboBox = new javax.swing.JComboBox<>();
        cpuComboBox = new javax.swing.JComboBox<>();
        ramComboBox = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        gpuComboBox = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        psuComboBox = new javax.swing.JComboBox<>();
        storageDeviceComboBox = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        Complete.setText("complete");
        Complete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CompleteActionPerformed(evt);
            }
        });

        jLabel1.setText("Select Motherboard");

        motherboardComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        motherboardComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                motherboardComboBoxActionPerformed(evt);
            }
        });

        cpuComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cpuComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cpuComboBoxActionPerformed(evt);
            }
        });

        ramComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        ramComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ramComboBoxActionPerformed(evt);
            }
        });

        jLabel2.setText("Select Ram Memory");

        jLabel3.setText("Select Processor");

        jLabel4.setText("Select Graphic Card");

        gpuComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        gpuComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                gpuComboBoxActionPerformed(evt);
            }
        });

        jLabel5.setText("Select Storage Drive");

        jLabel6.setText("Minimum Required Power supply");

        psuComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        psuComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                psuComboBoxActionPerformed(evt);
            }
        });

        storageDeviceComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        storageDeviceComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                storageDeviceComboBoxActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(326, 326, 326)
                        .addComponent(Complete))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(43, 43, 43)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(storageDeviceComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cpuComboBox, 0, 177, Short.MAX_VALUE)
                                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(ramComboBox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(190, 190, 190)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(psuComboBox, 0, 263, Short.MAX_VALUE)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(motherboardComboBox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(gpuComboBox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel6))))))
                .addContainerGap(140, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(85, 85, 85)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(motherboardComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cpuComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(101, 101, 101)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(gpuComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ramComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(88, 88, 88)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel5))
                .addGap(28, 28, 28)
                .addComponent(storageDeviceComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(psuComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 233, Short.MAX_VALUE)
                .addComponent(Complete)
                .addGap(134, 134, 134))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void CompleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CompleteActionPerformed
        //  String userInput = jTextField1.getText();
        // jLabel1.setText(userInput);
        if (selectedCpu != null && selectedMotherboard != null) {
            String message = "Selected Procesor: " + selectedCpu.getCpuName() + "\n"
                    + "Selected Motherboard: " + selectedMotherboard.getMotherboardName() + "\n"
                    + "Selected Graphics Card: " + selectedGpu.getGpuName() + "\n"
                    + "Selected RAM memory: " + selectedRamMem.getRamMemoryName()+"\n"
                    + "Selected HDD/SSD:" + selectedSD.getName() + "\n"
                    +"Selected Power Supply" + selectedPsu.getPsuName();
            JOptionPane.showMessageDialog(this, message, "Selected item", JOptionPane.INFORMATION_MESSAGE);

            
        } else {
            JOptionPane.showMessageDialog(this, "Please select items ", "Error empty", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_CompleteActionPerformed

    private void motherboardComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_motherboardComboBoxActionPerformed


        var motherboards = communicationService.getMotherboardsByCpu(selectedCpu);

        if (mbdFirstTime) {
            motherboardComboBox.removeAllItems();
            mbdFirstTime = false;
        }

        for (Motherboard motherboard : motherboards) {
            String displayString = motherboard.getMotherboardName() + " - " + motherboard.getChipsetName();
            motherboardComboBox.addItem(displayString);
        }
        selectedMotherboard = motherboards.get(motherboardComboBox.getSelectedIndex());
        if (selectedMotherboard != null) {
            motherboardComboBox.setSelectedItem(selectedMotherboard.getMotherboardName());
        }

    }//GEN-LAST:event_motherboardComboBoxActionPerformed

    private void cpuComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cpuComboBoxActionPerformed


        var cpus = communicationService.getAllCpus();
        if (cpuFirstTime) {
            cpuComboBox.removeAllItems();
            cpuFirstTime = false;
        }

        for (Cpu cpu : cpus) {
            String displayString = cpu.getCpuName();
            cpuComboBox.addItem(displayString);
        }
        selectedCpu = cpus.get(cpuComboBox.getSelectedIndex());
        if (selectedCpu != null) {
            for (int i = 0; i < cpuComboBox.getItemCount(); i++) {
                if (cpuComboBox.getItemAt(i).equals(selectedCpu.getCpuName())) {
                    cpuComboBox.setSelectedIndex(i);
                    break;
                }
            }
        }
    }//GEN-LAST:event_cpuComboBoxActionPerformed

    private void ramComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ramComboBoxActionPerformed


        var ramMemories = communicationService.getRamByMotherboard(selectedMotherboard);

        if (ramFirstTime) {
            ramComboBox.removeAllItems();
            ramFirstTime = false;
        }

        for (RamMemory ramMemory : ramMemories) {
            String displayString = ramMemory.getRamMemoryName();
            ramComboBox.addItem(displayString);
        }
        selectedRamMem = ramMemories.get(ramComboBox.getSelectedIndex());
        if (selectedRamMem != null) {
            ramComboBox.setSelectedItem(selectedRamMem.getRamMemoryName());
        }
    }//GEN-LAST:event_ramComboBoxActionPerformed

    private void gpuComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_gpuComboBoxActionPerformed

        var gpus = communicationService.getGpus();

        if (gpuFirstTime) {
            gpuComboBox.removeAllItems();
            gpuFirstTime = false; //
        }
        for (Gpu gpu : gpus) {
            String displayString = gpu.getGpuName();
            gpuComboBox.addItem(displayString);
        }
        selectedGpu = gpus.get(gpuComboBox.getSelectedIndex());
        if (selectedGpu != null) {
            for (int i = 0; i < gpuComboBox.getItemCount(); i++) {
                if (gpuComboBox.getItemAt(i).equals(selectedGpu.getGpuName())) {
                    gpuComboBox.setSelectedIndex(i);
                    break;
                }
            }
        }


    }//GEN-LAST:event_gpuComboBoxActionPerformed

    private void storageDeviceComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_storageDeviceComboBoxActionPerformed

        var storageDevices = communicationService.getStorageDevices();

        if (ssdFirstTime) {
            storageDeviceComboBox.removeAllItems();
            ssdFirstTime = false; //
        }
        for (StorageDevice sd : storageDevices) {
            String displayString = sd.getName();
            storageDeviceComboBox.addItem(displayString);
        }
        selectedSD = storageDevices.get(storageDeviceComboBox.getSelectedIndex());
        if (selectedSD != null) {
            for (int i = 0; i < storageDeviceComboBox.getItemCount(); i++) {
                if (storageDeviceComboBox.getItemAt(i).equals(selectedSD.getName())) {
                    storageDeviceComboBox.setSelectedIndex(i);
                    break;
                }
            }
        }
    }//GEN-LAST:event_storageDeviceComboBoxActionPerformed

    private void psuComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_psuComboBoxActionPerformed

        var psus = communicationService.getPsu(selectedCpu.getPowerConsuming() + selectedGpu.getPowerConsuming()+200.0);
        for (Psu psu : psus) {
            String displayString = psu.getPsuName();
            psuComboBox.addItem(displayString);
        }
        selectedPsu = psus.get(psuComboBox.getSelectedIndex());
        if (selectedPsu != null) {
            for (int i = 0; i < psuComboBox.getItemCount(); i++) {
                if (psuComboBox.getItemAt(i).equals(selectedPsu.getPsuName())) {
                    psuComboBox.setSelectedIndex(i);
                    break;
                }
            }
        }

    }//GEN-LAST:event_psuComboBoxActionPerformed

    public class myFrame extends JFrame {

        JComboBox<String> cBox;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NewJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Complete;
    private javax.swing.JComboBox<String> cpuComboBox;
    private javax.swing.JComboBox<String> gpuComboBox;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JComboBox<String> motherboardComboBox;
    private javax.swing.JComboBox<String> psuComboBox;
    private javax.swing.JComboBox<String> ramComboBox;
    private javax.swing.JComboBox<String> storageDeviceComboBox;
    // End of variables declaration//GEN-END:variables
}
