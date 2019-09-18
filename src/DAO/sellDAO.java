package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import TO.sellTO;

public class sellDAO { 
	HttpServletRequest request;
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	/* Oracle 연결정보
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@220.68.14.7:1521";
	*/
	
	/* MySQL 연결정보 */
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
	
	public  void readCount(int _num ){
		
		try{
			connect();
			String query = "UPDATE goods SET hit = hit + 1 WHERE num="+ _num;
			  pstmt = conn.prepareStatement( query );
			  int n=pstmt.executeUpdate( );

		}catch( Exception e){ 
			e.printStackTrace();
		}finally{
			try {
				if( pstmt!= null) pstmt.close();
				if( conn!= null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}//end finally
  }

	// 수정된 주소록 내용 갱신을 위한 메서드
	public boolean updateDB(sellTO g) {
		connect();
		
		String sql ="update goods set item=?, price=?, detail=?, img=?, location=?, state=?,imagename=? where num=?";		
		 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getItem());
			pstmt.setString(2, g.getPrice());
			pstmt.setString(3, g.getDetail());
			pstmt.setString(4, g.getImg());
			pstmt.setString(5, g.getLocation());
			pstmt.setString(6, g.getState());
			pstmt.setString(7, g.getImagename());
			pstmt.setInt(8, g.getNum());
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
	public boolean deleteDB(int gb_id) {
		connect();
		
		String sql ="delete from goods where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
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
	public boolean insertDB(sellTO g) throws IOException {
		connect();
		// sql 문자열 , gb_id 는 자동 등록 되므로 입력하지 않는다.
		
		String sql ="insert into goods(item,price, detail, img,location,state,imagename,uid,time)values(?,?,?,?,?,?,?,?,sysdate())";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getItem());
			pstmt.setString(2, g.getPrice());
			pstmt.setString(3, g.getDetail());
			pstmt.setString(4, g.getImg());
			pstmt.setString(5, g.getLocation());
			pstmt.setString(6, g.getState());
			pstmt.setString(7, g.getImagename());
			pstmt.setString(8, g.getUid());
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
	public sellTO getDB(int gb_id) {
		connect();
		
		
		String sql = "select * from goods where num=?";
		sellTO g = new sellTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,gb_id);
			ResultSet rs = pstmt.executeQuery();
			
			// 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
			rs.next();
			g.setItem(rs.getString("item"));
			g.setNum(rs.getInt("num"));
			g.setPrice(rs.getString("price"));
			g.setDetail(rs.getString("detail"));
			g.setHit(rs.getInt("hit"));
			g.setState(rs.getString("state"));
			g.setLocation(rs.getString("location"));
			g.setTime(rs.getString("time"));
			g.setImagename(rs.getString("imagename"));
			g.setUid(rs.getString("uid"));
			rs.close();
			readCount(gb_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return g;
	}
	public ArrayList<sellTO> getIDList(String id) {
		connect();
		ArrayList<sellTO> datas = new ArrayList<sellTO>();
		
		String sql = "select * from goods where uid='"+ id + "'";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				sellTO g = new sellTO();
				
				g.setItem(rs.getString("item"));
				g.setNum(rs.getInt("num"));
				g.setPrice(rs.getString("price"));
				g.setDetail(rs.getString("detail"));
				g.setImg(rs.getString("img"));
				g.setState(rs.getString("state"));
				g.setLocation(rs.getString("location"));
				g.setTime(rs.getString("time"));
				g.setHit(rs.getInt("hit"));
				g.setUid(rs.getString("uid"));
			
				
				datas.add(g);
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
	
	// 전체 주소록 목록을 가져오는 메서드
	public ArrayList<sellTO> getDBList() {
		connect();
		ArrayList<sellTO> datas = new ArrayList<sellTO>();
		
		String sql = "select * from goods order by num desc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				sellTO g = new sellTO();
				
				g.setItem(rs.getString("item"));
				g.setNum(rs.getInt("num"));
				g.setPrice(rs.getString("price"));
				g.setDetail(rs.getString("detail"));
				g.setImg(rs.getString("img"));
				g.setState(rs.getString("state"));
				g.setLocation(rs.getString("location"));
				g.setTime(rs.getString("time"));
				g.setHit(rs.getInt("hit"));
			
				
				datas.add(g);
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