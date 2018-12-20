import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginBean {
String uname,pass;
boolean b=false;
public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}
public boolean validate()throws Exception {
	Connection cn=null;
	PreparedStatement ps=null;
	try {
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("select * from inbank where uname=(?) and pass=(?)");
		ps.setString(1, uname);
		ps.setString(2,pass);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			b=true;
		}else {
			b=false;
		}
		ps.close();
		rs.close();
		cn.close();
	}catch(Exception ee)
	{
		ee.printStackTrace();
	}return b;
}
}
