
package org.db;
import java.sql.*;
 
public class DBconn {
	public static Connection conn;     //Connection�������ӣ�
	//�������ݿ�
	public static Connection getConn(){
		try{
			//����ע��MYSQL��JDBC����
			Class.forName("com.mysql.cj.jdbc.Driver");
			//��д�����ַ������������һ�ȡ����
			conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/messageBoard?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT","root","123456");
			return conn;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public static void CloseConn(){
		try{
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

