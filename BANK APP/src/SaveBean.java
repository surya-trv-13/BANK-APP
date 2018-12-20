import java.sql.Connection;
import java.sql.PreparedStatement;

public class SaveBean{
String cotype,city,adhar,branch,sex,name,mstatus,nation,fname,mname,mobile,address,email,rstatus,aproof,idtype,id,noname,comm,rel;
long acno;
float bal=5000.0F;
java.sql.Date dob;
boolean b=false;
public java.sql.Date getDob() {
	return dob;
}

public void setDob(java.sql.Date dob) {
	this.dob = dob;
}

public String getCotype() {
	return cotype;
}

public void setCotype(String cotype) {
	this.cotype = cotype;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getAdhar() {
	return adhar;
}

public void setAdhar(String adhar) {
	this.adhar = adhar;
}

public String getBranch() {
	return branch;
}

public void setBranch(String branch) {
	this.branch = branch;
}

public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getMstatus() {
	return mstatus;
}

public void setMstatus(String mstatus) {
	this.mstatus = mstatus;
}

public String getNation() {
	return nation;
}

public void setNation(String nation) {
	this.nation = nation;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getMname() {
	return mname;
}

public void setMname(String mname) {
	this.mname = mname;
}

public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getRstatus() {
	return rstatus;
}

public void setRstatus(String rstatus) {
	this.rstatus = rstatus;
}

public String getAproof() {
	return aproof;
}

public void setAproof(String aproof) {
	this.aproof = aproof;
}

public String getIdtype() {
	return idtype;
}

public void setIdtype(String idtype) {
	this.idtype = idtype;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getNoname() {
	return noname;
}

public void setNoname(String noname) {
	this.noname = noname;
}

public String getComm() {
	return comm;
}

public void setComm(String comm) {
	this.comm = comm;
}

public String getRel() {
	return rel;
}

public void setRel(String rel) {
	this.rel = rel;
}

public long getAcno() {
	return acno;
}

public void setAcno(long acno) {
	this.acno = acno;
}

public boolean validiate() throws Exception{
	Connection cn=null;
	PreparedStatement ps=null,pq=null;
	try
	{
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("insert into saving values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, cotype);
		ps.setString(2,city);
		ps.setString(3,adhar);
		ps.setString(4,branch);
		ps.setString(5,sex);
		ps.setString(6, name);
		ps.setString(7,mstatus);
		ps.setString(8, nation);
		ps.setString(9,fname);
		ps.setDate(10, dob);
		ps.setString(11,mname);
		ps.setString(12, mobile);
		ps.setString(13,address);
		ps.setString(14,email);
		ps.setString(15,rstatus);
		ps.setString(16,aproof);
		ps.setString(17,idtype);
		ps.setString(18,id);
		ps.setString(19,noname);
		ps.setString(20,comm);
		ps.setString(21,rel);
		ps.setLong(22,acno);
		pq=cn.prepareStatement("insert into accounts values(?,?)");
		//for accounts table
		pq.setLong(1, acno);
		pq.setFloat(2, bal);
		int i=ps.executeUpdate();
		int j=pq.executeUpdate();
		if(i!=0 && j!=0)
		{
			b=true;
		}else {
			b=false;
		}
	}catch(Exception ee)
	{
	ee.printStackTrace();
}return b;
	
}}
