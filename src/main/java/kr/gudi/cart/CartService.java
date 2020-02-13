package kr.gudi.cart;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired	CartDao cd;
	
	public List<Map<String, Object>> cartView(int no) {
		return cd.cartView(no);
	}
	
	public int repairCount(Map<String, Object> paramMap) {
		return cd.repairCount(paramMap);
	}
	
	public int repairColor(Map<String, Object> paramMap) {
		return cd.repairColor(paramMap);
	}
	
	public int delAllCart(String no) {
		return cd.delAllCart(no);
	}
	
	public int delSelectCart(List<Map<String, Object>> paramList) {
		return cd.delSelectCart(paramList);
	}
}
