import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisBean {
String uname,pass,mob,em;
long acno;
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
public String getMob() {
	return mob;
}
public void setMob(String mob) {
	this.mob = mob;
}
public String getEm() {
	return em;
}
public void setEm(String em) {
	this.em = em;
}
public long getAcno() {
	return acno;
}
public void setAcno(long acno) {
	this.acno = acno;
}
public boolean validate()throws Exception {
	Connection cn=null;
	PreparedStatement ps=null,p=null;
	try {
	cn=DBmanager.getConnection();
	p=cn.prepareStatement("select * from accounts where acno=(?)");
	p.setLong(1, acno);
	ResultSet rs=p.executeQuery();
	if(rs.next())
	{
		ps=cn.prepareStatement("insert into inbank values(?,?,?,?,?)");
		ps.setString(1, uname);
		ps.setString(2, pass);
		ps.setLong(3, acno);
		ps.setString(4, mob);
		ps.setString(5, em);
		int i=ps.executeUpdate();
		if(i!=0)
		{
			b=true;
		}else {
			b=false;
		}
	}else {
		b=false;
	}
	
	}catch(Exception ee) {
		ee.printStackTrace();
	}
	 return b;
	}

}


