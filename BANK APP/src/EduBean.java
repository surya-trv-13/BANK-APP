import java.sql.Connection;
import java.sql.PreparedStatement;

public class EduBean {
	String name,gen,adhar,pan,add,mob,email,noc;
	Long acno;
	Integer mon;
	Float inst,loan,percent;
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
	public String getNoc() {
		return noc;
	}
	public void setNoc(String noc) {
		this.noc = noc;
	}
	public Long getAcno() {
		return acno;
	}
	public void setAcno(Long acno) {
		this.acno = acno;
	}
	public Integer getMon() {
		return mon;
	}
	public void setMon(Integer mon) {
		this.mon = mon;
	}
	public Float getInst() {
		return inst;
	}
	public void setInst(Float inst) {
		this.inst = inst;
	}
	public Float getLoan() {
		return loan;
	}
	public void setLoan(Float loan) {
		this.loan = loan;
	}
	public Float getPercent() {
		return percent;
	}
	public void setPercent(Float percent) {
		this.percent = percent;
	}
	public java.sql.Date getDob() {
		return dob;
	}
	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}
	public boolean validiate()
	{	Connection cn=null;
	PreparedStatement ps=null;
	try {
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("insert into eduloan values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2,gen);
		ps.setString(3,adhar);
		ps.setDate(4, dob);
		ps.setString(5,pan);
		ps.setString(6,add);
		ps.setFloat(7,percent);
		ps.setString(8,mob);
		ps.setString(9,email);
		ps.setLong(10, acno);
		ps.setString(11, noc);
		ps.setFloat(12,loan);
		ps.setInt(13,mon);
		ps.setFloat(14, inst);
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
