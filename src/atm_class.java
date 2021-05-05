import java.sql.*;
import javax.swing.JOptionPane;
public class atm_class {
    Connection conn;
    public static Connection atm_class1()
    {
        String sql = "com.mysql.jdbc.Driver";
        try
        {
            Class.forName(sql);
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/atm_2018","root","");
            return conn;
        }
        catch(Exception ex)
        {
            
             JOptionPane.showMessageDialog(null,ex);
             return null;
        }
    }
}
    

