
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class OracleConnector {
    
    private static final String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
    private static final String dbuser = "jing";
    private static final String dbpass = "zhu88jie";
    
    private Connection con;
    private Statement stmt;
    private ResultSet rs;
    
    static{
        try{
            //*** Load the jdbc-odbc bridge driver
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        }catch(Exception ex){
             System.out.println(ex.getMessage());
             Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }
    
    private void connect(){
        try {
            con = DriverManager.getConnection(url, dbuser, dbpass);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void executeQuery(String query){
        if(con != null){
            try {
                stmt = con.createStatement();
                rs = stmt.executeQuery(query);

            } catch (SQLException ex) {
                 System.out.println(ex.getMessage());
                 Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    private void disconnect(){
        try {
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getStackTrace());
            Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public List<Map<String, String>> getRecords(String query){
        List<Map<String, String>> records = new ArrayList<Map<String, String>>();
        connect();
        executeQuery(query);
        if(rs!=null){
            try{
                int numCols = rs.getMetaData().getColumnCount();
                while(rs.next()){
                    Map<String, String> record = new HashMap<String, String>();
                    for(int i = 1; i <= numCols; i++){
                        String key = rs.getMetaData().getColumnName(i).toLowerCase();
                        String value = rs.getString(i);
                        record.put(key, value);
                    }
                    records.add(record);
                }
                
            } catch (SQLException ex){
            	ex.printStackTrace();
                Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
               
            }
            
        }
        disconnect();
        return records;
    }
    
    	public boolean insertUpdateRecord(String query){
        connect();
		executeQuery(query);
		disconnect();
        return true;
        
    	}
    
}
