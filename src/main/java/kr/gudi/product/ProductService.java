package kr.gudi.product;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired	ProductDao pd;
	
	public int setProduct(Map<String, Object> paramMap) {
		return pd.setProduct(paramMap);
	}
}
