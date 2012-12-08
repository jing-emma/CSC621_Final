/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;
import java.util.List;
import java.util.Map;

import db.OracleConnector;

/**
 *
 * @author admin
 */
public class OracleConnectorTest {
    
    public static void main(String[] args){
        OracleConnector con = new OracleConnector();
        List<Map<String, String>> result = con.getRecords("select username, password from users");
        System.out.println(result.size());
        System.out.println("test");
        
    }
    
}
