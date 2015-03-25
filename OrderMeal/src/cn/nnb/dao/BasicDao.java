package cn.nnb.dao;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BasicDao extends BaseDao {

	Statement stat;
	ResultSet rs;

	private void close() {
		try {

			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stat != null) {
				stat.close();
				stat = null;
			}
			if (conn != null) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//public int update(String tableName, String[] cols,
	//		Map<String, String> where){
		
//	}
	
	
	public <T> List<T> query(String tableName, String[] cols,
			Map<String, String> where) {
		List<T> list = new ArrayList<T>();

		try {
			StringBuilder sql = new StringBuilder("select ");
			if (cols == null) {
				sql.append(" * ");
			} else {
				for (int i = 0; i < cols.length; i++) {
					if (i != 0) {
						sql.append(" , ");
					}
					sql.append(cols[i]);
				}
			}

			sql.append(" from " + tableName + " where 1 = 1 ");
			Iterator<String> it = where.keySet().iterator();
			String key;
			while (it.hasNext()) {
				key = it.next();
				sql.append(" and " + key + " = ");
				sql.append(where.get(key));
			}
			this.openconnection();
			stat = conn.createStatement();
			rs = stat.executeQuery(sql.toString());
			while(rs.next()){
				T obj = (T)new Object();
				Class claxx = obj.getClass();
				for(Field field: claxx.getDeclaredFields()){
					String name = field.getName();
//					claxx.getMethod("set"+name.substring(0,1).toUpperCase()+name.substring(1,name.length()-1), field.getClass()).in;
				}
			}
			
//			rs.get
		} catch (Exception e) {

			// TODO: handle exception
		} finally {
			close();
		}
		return list;
	}

	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("d", "v");
		Iterator<String> it = map.keySet().iterator();
		while (it.hasNext()) {
			System.out.println();
		}
	}

}
