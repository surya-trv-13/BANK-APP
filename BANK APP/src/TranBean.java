import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TranBean {
Long acno;
float amt;
String uname=LoginServlet.uname;
int b=0;
public Long getAcno() {
	return acno;
}
public void setAcno(Long acno) {
	this.acno = acno;
}
public float getAmt() {
	return amt;
}
public void setAmt(float amt) {
	this.amt = amt;
}
public int validiate() throws Exception
{
	Connection cn=null;
	PreparedStatement ps=null,p=null;
	try {
		cn=DBmanager.getConnection();
		cn.setAutoCommit(false);
		ps=cn.prepareStatement("select * from accounts where acno=(?)");
		ps.setLong(1, acno);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			p=cn.prepareStatement("select * from accounts,inbank where inbank.acno=accounts.acno and uname=(?)");
			p.setString(1, uname);
			ResultSet r=p.executeQuery();
			if(r.next()) {
				float amount=r.getFloat("bal");
				Long acc=r.getLong("acno");
				if(amount>=amt)
				{
					ps=cn.prepareStatement("update accounts set bal=bal+(?) where acno=(?)");
					ps.setFloat(1, amt);
					ps.setLong(2, acno);
					ps.executeUpdate();
					p=cn.prepareStatement("update accounts set bal=(?) where acno=(?)");
					p.setFloat(1,amount-amt);
					p.setLong(2, acc);
					p.executeUpdate();
					b=10;
				}else {
					b=2;
				}
				p.close();
			}else {
				b=1;
			}
			
		}else {
			b=0;
		}
		cn.commit();
		cn.close();
		ps.close();
	}catch(Exception ee) {
		ee.printStackTrace();
	}
	return b;
}
}
