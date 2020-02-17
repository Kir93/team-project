package kr.gudi.item;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDao {
	
	@Autowired SqlSession session;
	
	public Map<String, Object> itemView(int no) {
		return session.selectOne("item.itemView", no);
	}
	
	public int setCart(Map<String, Object> paramMap) {
		return session.insert("item.setCart", paramMap);
	}
}
