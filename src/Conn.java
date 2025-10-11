
import java.sql.*;

public class Conn {
    
    Connection c;
    Statement s;
    
    public Conn()
    {
        try{
            c = DriverManager.getConnection("jdbc:mysql:///hms","root","aust2021");
            s= c.createStatement();
            
        }
        catch(Exception e){
            
        }
        
        
    }
    
}
