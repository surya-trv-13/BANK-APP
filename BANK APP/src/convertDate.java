import java.text.SimpleDateFormat;

public class convertDate {
	public static java.sql.Date setDate(String d) throws Exception
	{
		SimpleDateFormat sdf1=new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date dd=sdf1.parse(d);
		java.sql.Date sqdd=new java.sql.Date(dd.getTime());
		return sqdd;
	}

}
