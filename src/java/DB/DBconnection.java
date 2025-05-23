package DB;
import java.sql.*;
public class DBconnection {
  public Connection con=null;  
  public Statement stmt=null;
  public PreparedStatement pstmt=null;
  public ResultSet rst=null;
  public DBconnection()
  {
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crimeprevention","root","root");
  }
  catch(Exception e)
  {
  e.printStackTrace();
  }
  }
  }
