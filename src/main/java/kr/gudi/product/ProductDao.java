package kr.gudi.product;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	@Autowired	SqlSession session;
	
	public int setProduct(Map<String, Object> paramMap) {
		return session.insert("product.setProduct", paramMap);
	}
	
}
