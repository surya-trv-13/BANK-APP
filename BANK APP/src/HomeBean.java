import java.sql.Connection;
import java.sql.PreparedStatement;

public class HomeBean {
	String name,gen,adhar,pan,add,vote,mob,email,aop;
	Long acno;
	Float est,loan,oth;
	java.sql.Date dob;
	boolean b=false;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public String getAdhar() {
		return adhar;
	}
	public void setAdhar(String adhar) {
		this.adhar = adhar;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getVote() {
		return vote;
	}
	public void setVote(String vote) {
		this.vote = vote;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAop() {
		return aop;
	}
	public void setAop(String aop) {
		this.aop = aop;
	}
	public Long getAcno() {
		return acno;
	}
	public void setAcno(Long acno) {
		this.acno = acno;
	}
	public Float getEst() {
		return est;
	}
	public void setEst(Float est) {
		this.est = est;
	}
	public Float getLoan() {
		return loan;
	}
	public void setLoan(Float loan) {
		this.loan = loan;
	}
	public Float getOth() {
		return oth;
	}
	public void setOth(Float oth) {
		this.oth = oth;
	}
	public java.sql.Date getDob() {
		return dob;
	}
	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}
	public boolean validiate()
	{
		Connection cn=null;
		PreparedStatement ps=null;
		try {
			cn=DBmanager.getConnection();
			ps=cn.prepareStatement("insert into homeloan values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2,gen);
			ps.setString(3,adhar);
			ps.setDate(4, dob);
			ps.setString(5,pan);
			ps.setString(6,add);
			ps.setString(7,vote);
			ps.setString(8,mob);
			ps.setString(9,email);
			ps.setLong(10, acno);
			ps.setString(11, aop);
			ps.setFloat(12,est);
			ps.setFloat(13,loan);
			ps.setFloat(14, oth);
			int i=ps.executeUpdate();
			if(i!=0)
			{
				b=true;
			}else {
				b=false;
			}
			cn.close();
			ps.close();
			}catch(Exception ee) {ee.printStackTrace();}
		return b;
	}
}
