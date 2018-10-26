/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 111643
 */

    
public class Connetor {
       Connection conn;
       
       public Connection connect(){
           
           try {
               Class.forName("com.mysql.jdbc.Driver");
               conn = DriverManager.getConnection("jdbc:mysql://localhost/mkulima", "root", "root");
               
               return conn;
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(Connetor.class.getName()).log(Level.SEVERE, null, ex);
           } catch (SQLException ex) {
               Logger.getLogger(Connetor.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           return null;
       }
}
