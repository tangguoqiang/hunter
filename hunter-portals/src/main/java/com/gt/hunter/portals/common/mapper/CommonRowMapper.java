package com.gt.hunter.portals.common.mapper;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import org.springframework.cglib.core.ReflectUtils;
import org.springframework.jdbc.core.RowMapper;

import com.gt.hunter.portals.common.utils.Utils;

/**
 * 共通rowMapper
 * @author gtang
 *
 * @param <T>
 */
public class CommonRowMapper<T>  implements RowMapper<T>{

	private Class<T> cls;
	/**
	 * 私有无参构造函数
	 */
	protected CommonRowMapper(){
		
	}
	
	public CommonRowMapper(Class<T> cls){
		this.cls = cls;
	}
	
	public T mapRow(ResultSet rs, int rowNum) throws SQLException {
		T t = null;
		try {
			t = cls.newInstance();
			PropertyDescriptor[] pds = ReflectUtils.getBeanProperties(cls);
			String name = null,value = null;
			Method m = null;
			ResultSetMetaData rsmd= rs.getMetaData();
			for(int i = 1,len = rsmd.getColumnCount() + 1;i < len;i++){
				name = rsmd.getColumnLabel(i);
				for(PropertyDescriptor pd : pds){
					if(name != null && name.equals(pd.getName())){
						m = pd.getWriteMethod();
						value = rs.getString(name);
						if(!Utils.isEmpty(value))
							m.invoke(t, value);
						else
							m.invoke(t, "");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return t;
	}

}
