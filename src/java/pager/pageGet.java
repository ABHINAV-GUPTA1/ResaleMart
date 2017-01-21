/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */

public class pageGet {
     public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver"); // Load Driver
            con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");  
        }catch(ClassNotFoundException | SQLException e){System.out.println("Error in connection paging");}  
        return con;  
    }
    public static List<search> getRecords(int start, int total, String t1, String t2, String t3, String t4) {
        List<search> list=new ArrayList<search>();
        try{  
            Connection con=getConnection();
            PreparedStatement smt;
            if(!t4.equals("")){
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad where email=? limit "+(start-1)+","+total);
                smt.setString(1,t4);
            }else if(t2.equals("all") && !t1.equals("all")){
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad where city=? limit "+(start-1)+","+total);
                smt.setString(1, t1);
            }else if(t1.equals("all") && !t2.equals("all")){
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad where category=? limit "+(start-1)+","+total);
                smt.setString(1, t2);
            }else if(!t1.equals("all") &&!t2.equals("all")){
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad where city=? and category=? limit "+(start-1)+","+total);
                smt.setString(1, t1);
                smt.setString(2,t2);
            } else if(t2.equals("all") && t1.equals("all") && !t3.equals("")){
                t3 = "%"+t3+"%";
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad where title like ? limit "+(start-1)+","+total);
                smt.setString(1, t3);
            } else{
                smt=(PreparedStatement) con.prepareStatement("select * from post_ad limit "+(start-1)+","+total);
            }
            ResultSet rs=smt.executeQuery();
            while(rs.next()){  
                search s=new search();  
                s.setCategory(rs.getString("category"));
                s.setPhoto(rs.getString("photo"));
                s.setCity(rs.getString("city"));
                s.setCost(rs.getString("cost"));
                s.setDate(rs.getString("date"));
                s.setPost_id(rs.getString("post_id"));
                s.setTitle(rs.getString("title"));
                list.add(s);  
            }  
            con.close();  
        }catch(Exception e){System.out.println("Error with database");}  
        return list; 
    }
}
