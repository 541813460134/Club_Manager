package club_dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import club_stu_meaasge.AllMessage;
import club_stu_meaasge.BaseMessage;
import club_stu_meaasge.Chatme;
import club_stu_meaasge.Others;
import club_util.C3P0Util;



public class Message_Dao {
	

	public void addMessage(AllMessage am) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			qr.update("INSERT INTO base_message VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)",
					am.getS_number(),am.getS_name(),am.getS_sex(),am.getS_birthp(),am.getS_h(),
					am.getS_w(),am.getS_prof(),am.getS_class(),am.getS_age(),am.getS_zs(),am.getS_size(),am.getS_shoe(),am.getS_nation());
			qr.update("INSERT INTO chat_me VALUES(?,?,?,?,?,?,?,?,?,?)",
					am.getS_number(),am.getC_ph(),am.getC_id(),
					am.getC_acard(),am.getC_gh(),am.getC_bk(),am.getC_qqn(),am.getC_email(),am.getC_ip(),am.getC_yx());
			qr.update("INSERT INTO others VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)",
					am.getS_number(),am.getO_faith(),am.getO_job(),am.getO_ps(),am.getO_isg(),
					am.getO_unit(),am.getO_loc(),am.getO_self(),am.getO_grsj(),am.getO_hobby(),am.getO_special(),am.getO_fzfx(),am.getO_jzzw());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public List<BaseMessage> findBasePerson() {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from base_message", new BeanListHandler<BaseMessage>(BaseMessage.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Chatme> findChatPerson() {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from chat_me", new BeanListHandler<Chatme>(Chatme.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Others> findOthers() {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from Others", new BeanListHandler<Others>(Others.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void deletePerson(String s_number) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			qr.update("delete from chat_me where s_number=?",s_number);
			qr.update("delete from others where s_number=?",s_number);
			qr.update("delete from base_message where s_number=?",s_number);
			qr.update("delete from s_photo where s_number=?",s_number);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	public BaseMessage findpersonbynum(String s_number) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from base_message where s_number=?", new BeanHandler<BaseMessage>(BaseMessage.class),s_number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
	
	public Chatme findpersonbynum2(String s_number) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from chat_me where s_number=?", new BeanHandler<Chatme>(Chatme.class),s_number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
	
	public Others findpersonbynum3(String s_number) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		try {
			return qr.query("select * from others where s_number=?", new BeanHandler<Others>(Others.class),s_number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}

	public void updateMessage(AllMessage am) {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		
		try {
			qr.update("update base_message set s_name=?,s_sex=?,s_birthp=?,s_h=?,s_w=?,s_prof=?,s_class=?,s_age=?,s_zs=?,s_size=?,s_shoe=?,s_nation=? where s_number=?",
					am.getS_name(),am.getS_sex(),am.getS_birthp(),am.getS_h(),am.getS_w(),am.getS_prof(),am.getS_class(),am.getS_age(),am.getS_zs(),am.getS_size(),am.getS_shoe(),am.getS_nation(),am.getS_number());
			qr.update("update chat_me set c_ph=?,c_id=?,c_acard=?,c_gh=?,c_bk=?,c_qqn=?,c_email=?,c_ip=?,c_yx=? where s_number=?",
					am.getC_ph(),am.getC_id(),am.getC_acard(),am.getC_gh(),am.getC_bk(),am.getC_qqn(),am.getC_email(),am.getC_ip(),am.getC_yx(),am.getS_number());
			qr.update("update others set o_faith=?,o_job=?,o_ps=?,o_isg=?,o_unit=?,o_loc=?,o_self=?,o_grsj=?,o_hobby=?,o_special=?,o_fzfx=?,o_jzzw=? where s_number=?",
					am.getO_faith(),am.getO_job(),am.getO_ps(),am.getO_isg(),am.getO_unit(),am.getO_loc(),am.getO_self(),am.getO_grsj(),am.getO_hobby(),am.getO_special(),am.getO_fzfx(),am.getO_jzzw(),am.getS_number());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	/**
	 * ÃÌº”Õº∆¨
	 * @param s_number
	 * @param allphoto
	 */

	public void addphoto(String s_number, List<String> allphoto) {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		Iterator<String> it = allphoto.iterator();
		while(it.hasNext()){
			String s_zs = it.next();
			try {
				qr.update("insert into s_photo values(?,?)",s_number,s_zs);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}	
	}

	public String[] getPassword() {
		// TODO Auto-generated method stub
		String[] s = new String[3];
		Connection conn = C3P0Util.getConnection();
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("select * from login");
			
			while(rs.next())
			{
				s[1] = rs.getString(1);
				s[2] = rs.getString(2);
				break;
	
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return s;
	}
	
	


}
