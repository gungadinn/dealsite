package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import TO.MemberTO;
import TO.MessageTO;
import TO.sellTO;




/* Data Access Object
 * 테이블 당 한개의 DAO를 작성한다.
 * 
 * JSP_MEMBER 테이블과 연관된 DAO로
 * 회원 데이터를 처리하는 클래스이다.
 */
public class MemberDAO 
{

	Connection conn = null;
	PreparedStatement pstmt = null;
	

	void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" , "root" , "go_seokbin3438");

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
		public Date stringToDate(MemberTO member)
	{
		String year = member.getBirthyy();
		String month = member.getBirthmm();
		String day = member.getBirthdd();
		
		Date birthday = Date.valueOf(year+"-"+month+"-"+day);
		
		return birthday;
		
	} // end stringToDate()
	
	// 회원정보를 JSP_MEMBER 테이블에 저장하는 메서드
	public boolean insertMember(MemberTO member) throws SQLException
	{
		connect(); 

		
		try {
						
			
			StringBuffer sql = new StringBuffer();
			sql.append("insert into member values");
			sql.append("(?, ?, ?, ?, ?, ?, ?, ?)");		
			stringToDate(member);
		
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getGender());
			pstmt.setDate(5, stringToDate(member));
			pstmt.setString(6, member.getMail1()+"@"+member.getMail2());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getAddress());
			
			// 쿼리 실행
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// 오류시 롤백
			e.printStackTrace();
		
		} finally {
			// Connection, PreparedStatement를 닫는다.
			disconnect();
		}
		return true;
	} 
	public MemberTO getDB(String id) {
		connect();
		
		String sql = "select * from member where id='"+id+"'";
		MemberTO g = new MemberTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			// 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			rs.next();
			g.setId(rs.getString("id"));
			g.setPassword(rs.getString("password"));
			g.setName(rs.getString("name"));
			g.setPhone(rs.getString("phone"));
			g.setAddress(rs.getString("address"));
			
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return g;
	}
	public boolean updateDB(MemberTO g,String id) {
		connect();
		
		String sql ="update member set password=?, name=?, gender=?, phone=?, address=? where id='"+id+"'";		
		 
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, g.getPassword());
			pstmt.setString(2, g.getName());
			pstmt.setString(3, g.getGender());
			pstmt.setString(4, g.getPhone());
			pstmt.setString(5, g.getAddress());
	
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
	public int loginCheck(String id, String pw) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbPW ="";
		int x = -1;
		
		try {
			StringBuffer query = new StringBuffer();
			query.append("select password from member where id=?");
			
			connect();
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dbPW = rs.getString("password");
				if(dbPW.equals(pw)) x=1;
				else x=0;
			}else {
				x=-1;
			
			}
			return x;
		}catch(Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
			
		}finally {
			try {
				if(pstmt!=null){pstmt.close(); pstmt=null; }
				if( conn !=null) {conn.close(); conn=null;}
				
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
				
			}
		
	}
	
}

