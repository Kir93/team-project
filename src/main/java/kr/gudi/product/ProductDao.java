package kr.gudi.product;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class ProductDao {

	@Autowired	SqlSession session;
	
	public Map<String, Object> productStatus() {
		return session.selectOne("product.productStatus");
	}
	
	public Map<String, Object> findProduct(String no) {
		return session.selectOne("product.findProduct", no);
	}
	
	public Map<String, Object> productList() {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", session.selectList("product.productList"));
		return resultMap;
	}
	
	public int setProduct(Map<String, Object> paramMap) {
		return session.insert("product.setProduct", paramMap);
	}
	
	public int upProduct(Map<String, Object> paramMap) {
		return session.insert("product.upProduct", paramMap);
	}
	
	public int setImage(Map<String, Object> img) {
		System.out.println(img);
		return session.update("product.setImage", img);
	}
	
	public int getImgNo() {
		return session.selectOne("product.getImgNo");
	}
}
