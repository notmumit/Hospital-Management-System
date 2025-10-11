
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.JOptionPane;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
public class ManageDoctor extends javax.swing.JFrame {

    /**
     * Creates new form ManageDoctor
     */
    public ManageDoctor() {
        initComponents();
        showData();
        
        
    }
    public void showData(){
        
        try{
            
            Connection c = DriverManager.getConnection("jdbc:mysql:///hms","root","aust2021");
            Statement s= c.createStatement();
        String sql = "select * from doctor";
        ResultSet rs= s.executeQuery(sql);
        DefaultTableModel tb1 =(DefaultTableModel)jTable1.getModel();
        
        while(rs.next()){
            String data[]={rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)};
            tb1.addRow(data);
        }
        
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        firstName = new javax.swing.JTextField();
        dob = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        addButton = new javax.swing.JButton();
        specielity = new javax.swing.JComboBox<>();
        lastName = new javax.swing.JTextField();
        email = new javax.swing.JTextField();
        phone = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        degree = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        bloodGroup = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        clearButton = new javax.swing.JButton();
        deleteButton = new javax.swing.JButton();
        updateButton = new javax.swing.JButton();
        homeButton = new javax.swing.JButton();
        ch1 = new javax.swing.JTextField();
        ch2 = new javax.swing.JTextField();
        id = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 36)); // NOI18N
        jLabel1.setText("Manage Doctor");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(451, 25, 242, 44);

        jLabel2.setText("FIRST NAME:");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(330, 100, 97, 20);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Dr ID", "NAME", "DATE OF BIRTH", "PHONE", "EMAIL", "SPACIELITY", "DEGREE", "BLOOD GROUP", "Councilling Hours"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jPanel1.add(jScrollPane1);
        jScrollPane1.setBounds(28, 520, 1110, 151);
        jPanel1.add(firstName);
        firstName.setBounds(330, 130, 210, 35);
        jPanel1.add(dob);
        dob.setBounds(891, 129, 210, 35);

        jLabel3.setText("DATE OF BIRTH (dd/mm/yyyy)");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(891, 100, 230, 20);

        jLabel4.setText("SPACIELITY");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(40, 260, 88, 20);

        addButton.setText("ADD");
        addButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addButtonActionPerformed(evt);
            }
        });
        jPanel1.add(addButton);
        addButton.setBounds(1036, 378, 65, 29);

        specielity.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Internists", "Anesthesiologists", "Neurologists", "Psychiatrists", "Allergists", "Pediatricians", "Gastroenterologists", "Urologists", "Endocrinologists", "Radiologists", "Dermatologists", "Cardiologists", "Obstetricians and gynecologists", "Dentist" }));
        jPanel1.add(specielity);
        specielity.setBounds(40, 290, 210, 35);
        jPanel1.add(lastName);
        lastName.setBounds(620, 130, 210, 35);
        jPanel1.add(email);
        email.setBounds(40, 210, 500, 35);
        jPanel1.add(phone);
        phone.setBounds(891, 210, 210, 35);

        jLabel5.setText("EMAIL");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(40, 180, 46, 20);

        jLabel6.setText("LAST NAME");
        jPanel1.add(jLabel6);
        jLabel6.setBounds(620, 100, 86, 20);

        jLabel7.setText("PHONE NUMBER");
        jPanel1.add(jLabel7);
        jLabel7.setBounds(891, 181, 119, 20);
        jPanel1.add(degree);
        degree.setBounds(330, 290, 210, 35);

        jLabel8.setText("DEGREE");
        jPanel1.add(jLabel8);
        jLabel8.setBounds(340, 260, 59, 20);

        bloodGroup.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-" }));
        jPanel1.add(bloodGroup);
        bloodGroup.setBounds(891, 296, 210, 26);

        jLabel9.setText("BLOOD GROUP");
        jPanel1.add(jLabel9);
        jLabel9.setBounds(891, 263, 110, 20);

        clearButton.setText("CLEAR");
        clearButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                clearButtonActionPerformed(evt);
            }
        });
        jPanel1.add(clearButton);
        clearButton.setBounds(891, 378, 81, 29);

        deleteButton.setText("DELETE");
        deleteButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deleteButtonActionPerformed(evt);
            }
        });
        jPanel1.add(deleteButton);
        deleteButton.setBounds(736, 378, 89, 29);

        updateButton.setText("UPDATE");
        updateButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                updateButtonActionPerformed(evt);
            }
        });
        jPanel1.add(updateButton);
        updateButton.setBounds(589, 378, 93, 29);

        homeButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/home button.jpg"))); // NOI18N
        homeButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                homeButtonActionPerformed(evt);
            }
        });
        jPanel1.add(homeButton);
        homeButton.setBounds(10, 10, 60, 60);
        jPanel1.add(ch1);
        ch1.setBounds(650, 290, 60, 35);
        jPanel1.add(ch2);
        ch2.setBounds(760, 290, 60, 35);
        jPanel1.add(id);
        id.setBounds(40, 130, 210, 35);

        jLabel13.setText("Dr ID");
        jPanel1.add(jLabel13);
        jLabel13.setBounds(40, 100, 39, 20);

        jLabel11.setText("Councilling Hours");
        jPanel1.add(jLabel11);
        jLabel11.setBounds(650, 260, 140, 20);

        jLabel12.setText("to");
        jPanel1.add(jLabel12);
        jLabel12.setBounds(730, 300, 20, 20);

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/manage dr bg.jpg"))); // NOI18N
        jPanel1.add(jLabel10);
        jLabel10.setBounds(0, 0, 1170, 720);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1171, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 722, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void addButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addButtonActionPerformed
        // TODO add your handling code here:
        
        if(firstName.getText().equals("")&& dob.getText()== null && specielity.getSelectedItem().toString().equals("")){
           
            JOptionPane.showMessageDialog(null,"enter");
        }
        else{
            
            try{
                Conn c =new Conn();
                String data[]= {id.getText(),firstName.getText()+" "+ lastName.getText(),dob.getText(),phone.getText(),email.getText(),specielity.getSelectedItem().toString(),degree.getText(),bloodGroup.getSelectedItem().toString(),ch1.getText()+" to "+ch2.getText()};
            
                String query ="insert into doctor values('"+data[0]+"','"+data[1]+"','"+data[2]+"','"+data[3]+"','"+data[4]+"','"+data[5]+"','"+data[6]+"','"+data[7]+"','"+data[8]+"')";
                c.s.executeUpdate(query);
                DefaultTableModel tb1 =(DefaultTableModel)jTable1.getModel();
                tb1.addRow(data);
            
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
            
            id.setText("");
            firstName.setText("");
            lastName.setText("");
            dob.setText("");
            email.setText("");
            phone.setText("");
            degree.setText("");
           ch1.setText("");
           ch2.setText("");
            
            JOptionPane.showMessageDialog(null,"Adder successfully");
            
        }
    }//GEN-LAST:event_addButtonActionPerformed

    
    
    
    private void homeButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_homeButtonActionPerformed
        // TODO add your handling code here:
        HomePage hmpg= new HomePage();
        hmpg.show();
        dispose();
    }//GEN-LAST:event_homeButtonActionPerformed

    private void clearButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_clearButtonActionPerformed
        // TODO add your handling code here:
        firstName.setText("");
        lastName.setText("");
        dob.setText("");
        email.setText("");
        phone.setText("");
        degree.setText("");
        
    }//GEN-LAST:event_clearButtonActionPerformed

    private void deleteButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deleteButtonActionPerformed
        // TODO add your handling code here:
        DefaultTableModel tb1 =(DefaultTableModel)jTable1.getModel();
        if(jTable1.getSelectedRowCount()==1){
            
            tb1.removeRow(jTable1.getSelectedRow());
        }else {
            if(jTable1.getSelectedRowCount()==0){
            JOptionPane.showMessageDialog(null,"please select a row","warning",2);
            }
            else{
            JOptionPane.showMessageDialog(null,"Please select one row");
            }
        }
    }//GEN-LAST:event_deleteButtonActionPerformed

    private void updateButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_updateButtonActionPerformed
        // TODO add your handling code here:
        DefaultTableModel tb1 =(DefaultTableModel)jTable1.getModel();
        if(jTable1.getSelectedRowCount()==1){
            String data[]= {firstName.getText()+" "+ lastName.getText(),dob.getText(),phone.getText(),email.getText(),specielity.getSelectedItem().toString(),degree.getText(),bloodGroup.getSelectedItem().toString()};
            
           
            
            tb1.setValueAt(data[0],jTable1.getSelectedRow(), 0);
            tb1.setValueAt(data[1],jTable1.getSelectedRow(), 1);
            tb1.setValueAt(data[2],jTable1.getSelectedRow(), 2);
            tb1.setValueAt(data[3],jTable1.getSelectedRow(), 3);
            tb1.setValueAt(data[4],jTable1.getSelectedRow(), 4);
            tb1.setValueAt(data[5],jTable1.getSelectedRow(), 5);
            tb1.setValueAt(data[6],jTable1.getSelectedRow(), 6);
            
            
        }
        else{
            JOptionPane.showMessageDialog(null,"Please select one row where you want to update");
        }
    }//GEN-LAST:event_updateButtonActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ManageDoctor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ManageDoctor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ManageDoctor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ManageDoctor.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                
                new ManageDoctor().setVisible(true);
               
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addButton;
    private javax.swing.JComboBox<String> bloodGroup;
    private javax.swing.JTextField ch1;
    private javax.swing.JTextField ch2;
    private javax.swing.JButton clearButton;
    private javax.swing.JTextField degree;
    private javax.swing.JButton deleteButton;
    private javax.swing.JTextField dob;
    private javax.swing.JTextField email;
    private javax.swing.JTextField firstName;
    private javax.swing.JButton homeButton;
    private javax.swing.JTextField id;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField lastName;
    private javax.swing.JTextField phone;
    private javax.swing.JComboBox<String> specielity;
    private javax.swing.JButton updateButton;
    // End of variables declaration//GEN-END:variables
}
