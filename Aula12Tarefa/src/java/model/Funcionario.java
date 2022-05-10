/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Filipe
 */
public class Funcionario {
    
    private int id;
    private String FirstName;
    private String LastName;
    
    
        public static ArrayList<Funcionario> getList() throws Exception{
        ArrayList<Funcionario> list = new ArrayList<>();
        
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Filipe\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT * FROM employees ORDER BY FirstName";
        ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
                int id = rs.getInt("EmployeeId");
                String FirstName = rs.getString("FirstName");
                String LastName = rs.getString("LastName");
                Funcionario a = new Funcionario(id, FirstName, LastName);
                list.add(a);
            }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
        
    public static int getCount() throws Exception {
        int count = 0;
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Filipe\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        String query = "SELECT count (*) as count FROM employees";
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }        
    
    

    public Funcionario(int id, String FirstName, String LastName) {
        this.id = id;
        this.FirstName = FirstName;
        this.LastName = LastName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }
    
    
    
}
