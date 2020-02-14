package kr.gudi.cart;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao {

	@Autowired	SqlSession session;
	
	public List<Map<String, Object>> cartView(int no) {
		return session.selectList("cart.cartView", no);
	}
	
	public int repairCount(Map<String, Object> paramMap) {
		return session.update("cart.repairCount", paramMap);
	}
	
	public int repairColor(Map<String, Object> paramMap) {
		return session.update("cart.repairColor", paramMap);
	}
	
	public int delAllCart(String no) {
		return session.update("cart.delAllCart", no);
	}
	
	public int delSelectCart(List<Map<String, Object>> paramList) {
		int result = 0;
		for(int i = 0; i < paramList.size(); i++) {
			System.out.println(paramList.get(i));
			result += session.update("cart.delSelectCart", paramList.get(i));
		}
		return result;
	}
}