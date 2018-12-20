import java.sql.Connection;
import java.sql.PreparedStatement;

public class AgriBean {
String name,adhar,gen,pan,add,vote,mob,em,aop;
public String getVote() {
	return vote;
}
public void setVote(String vote) {
	this.vote = vote;
}
int ten;
long acno;
java.sql.Date dob;
Float loan;
boolean b=false;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAdhar() {
	return adhar;
}
public void setAdhar(String adhar) {
	this.adhar = adhar;
}
public String getGen() {
	return gen;
}
public void setGen(String gen) {
	this.gen = gen;
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
public String getEm() {
	return em;
}
public void setEm(String em) {
	this.em = em;
}
public String getAop() {
	return aop;
}
public void setAop(String aop) {
	this.aop = aop;
}
public int getTen() {
	return ten;
}
public void setTen(int ten) {
	this.ten = ten;
}
public long getAcno() {
	return acno;
}
public void setAcno(long acno) {
	this.acno = acno;
}
public java.sql.Date getDob() {
	return dob;
}
public void setDob(java.sql.Date dob) {
	this.dob = dob;
}
public Float getLoan() {
	return loan;
}
public void setLoan(Float loan) {
	this.loan = loan;
}
public boolean validiate()
{ 
	Connection cn=null;
	PreparedStatement ps=null;
	try {
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("insert into agriloan values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2,gen);
		ps.setString(3,adhar);
		ps.setDate(4, dob);
		ps.setString(5,pan);
		ps.setString(6,add);
		ps.setString(7,vote);
		ps.setString(8,mob);
		ps.setString(9,em);
		ps.setLong(10, acno);
		ps.setString(11,aop);
		ps.setFloat(12, loan);
		ps.setInt(13, ten);
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
