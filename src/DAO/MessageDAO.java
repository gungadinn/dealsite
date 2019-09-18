package DAO;

import java.sql.*;
import java.util.*;

import TO.MessageTO;

public class MessageDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	

	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; 
	
	// DB연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url,"root","go_seokbin3438");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 수정된 주소록 내용 갱신을 위한 메서드
	public boolean updateDB(MessageTO messageinfo) {
		connect();
		
		String sql ="update message_table set mi_sendid=?, mi_receiveid=?, mi_content=? where mi_num=?";		
		 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,messageinfo.getMi_sendid());
			pstmt.setString(2,messageinfo.getMi_receiveid());
			pstmt.setString(3,messageinfo.getMi_content());
			pstmt.setInt(4,messageinfo.getMi_num());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// 특정 주소록 게시글 삭제 메서드
	public boolean deleteDB(int mi_num) {
		connect();
		
		String sql ="delete from message_table where mi_num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,mi_num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	// 신규 주소록 메시지 추가 메서드
	public boolean insertDB(MessageTO messageinfo) {
		connect();
		// sql 문자열 , gb_id 는 자동 등록 되므로 입력하지 않는다.
				
		String sql ="insert into message_table(mi_sendid, mi_receiveid, mi_content) values(?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, messageinfo.getMi_sendid());
			pstmt.setString(2, messageinfo.getMi_receiveid());
			pstmt.setString(3, messageinfo.getMi_content());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}

	// 특정 주소록 게시글 가져오는 메서드
	public MessageTO getDB(int mi_num) {
		connect();
		
		String sql = "select * from message_table where mi_num=?";
		MessageTO messageinfo = new MessageTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,mi_num);
			ResultSet rs = pstmt.executeQuery();
			
			// 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			rs.next();
			messageinfo.setMi_num(rs.getInt("mi_num"));
			messageinfo.setMi_sendid(rs.getString("mi_sendid"));
			messageinfo.setMi_receiveid(rs.getString("mi_receiveid"));
			messageinfo.setMi_content(rs.getString("mi_content"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return messageinfo;
	}
	
	// 전체 주소록 목록을 가져오는 메서드
	public ArrayList<MessageTO> getDBList(String id) {
		connect();
		ArrayList<MessageTO> datas = new ArrayList<MessageTO>();
		
		String sql = "SELECT * FROM message_table WHERE mi_receiveid='"+ id + "'";
		try {
		
			pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MessageTO messageinfo = new MessageTO();
				
				messageinfo.setMi_num(rs.getInt("mi_num"));
				messageinfo.setMi_sendid(rs.getString("mi_sendid"));
				messageinfo.setMi_receiveid(rs.getString("mi_receiveid"));
				messageinfo.setMi_content(rs.getString("mi_content"));
		
				datas.add(messageinfo);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
}
