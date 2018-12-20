import java.sql.Connection;
import java.sql.PreparedStatement;


public class LockBean {
String ctype,name,ad,ltype,mob,em;
Long acno;
int lno;
public int getLno() {
	return lno;
}
public void setLno(int lno) {
	this.lno = lno;
}
boolean b=false;
public String getCtype() {
	return ctype;
}
public void setCtype(String ctype) {
	this.ctype = ctype;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAd() {
	return ad;
}
public void setAd(String ad) {
	this.ad = ad;
}
public String getLtype() {
	return ltype;
}
public void setLtype(String ltype) {
	this.ltype = ltype;
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
public Long getAcno() {
	return acno;
}
public void setAcno(Long acno) {
	this.acno = acno;
}
public boolean validiate()
{	
	Connection cn=null;
	PreparedStatement ps=null;
	try {
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("insert into locker values(?,?,?,?,?,?,?,?)");
		ps.setString(1, ctype);
		ps.setLong(2, acno);
		ps.setString(3, name);
		ps.setString(4, ad);
		ps.setString(5, ltype);
		ps.setString(6, mob);
		ps.setString(7, em);
		ps.setInt(8, lno);
		int rs=ps.executeUpdate();
		if(rs!=0)
		{
		b=true;	
		}else {
			b=false;
		}
	}catch(Exception ee) {ee.printStackTrace();}
	return b;
}

}
