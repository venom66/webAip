/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testDB;
import java.sql.*;

/**
 *
 * @author BartD
 */

public class testBD {
    
    public testBD(){}
    
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    private static final String CONN_STRING = "jdbc:mysql://localhost:3306/filmy";
    
    public static void main (String[] args) throws SQLException {
        Connection conn = null;
        
        conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
        System.out.println("Connected!!!!");
        
        
       Statement st = conn.createStatement();
       ResultSet rs = st.executeQuery("Select * From sklep");
  
            
        while(rs.next())
        {
            System.out.println(rs.getString(1));
            System.out.println(rs.getString(2));
            System.out.println(rs.getString(3));
            System.out.println(rs.getString(4));
            System.out.println(rs.getString(5));
            System.out.println("--------------------------");
        
        
        }
        }
    
    /**
     *
     * @return
     */
    public String show()
    {
    return "rs.getString(1)";
    
    }
    
    public String show2() throws SQLException
    {
     
            Connection conn = null;
        
        conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
        System.out.println("Connected!!!!");
        
        
       Statement st = conn.createStatement();
       ResultSet rs = st.executeQuery("Select * From sklep");
  
            
        while(rs.next())
        {
            System.out.println(rs.getString(1));
            System.out.println(rs.getString(2));
            System.out.println(rs.getString(3));
            System.out.println(rs.getString(4));
            System.out.println(rs.getString(5));
            System.out.println("--------------------------");
        
        
        }
        return null;
        }
    
    }
   
    
    
