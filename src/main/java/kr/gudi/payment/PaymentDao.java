package kr.gudi.payment;

import java.util.List;
import java.util.Map;

public interface PaymentDao {

	public Map<String, Object> getbank();
	public List<Map<String, Object>> pickCart(Map<String, Object> ParamMap);
	public int setPay(Map<String, Object> ParamMap);
	public int updateCart(Map<String, Object> ParamMap);
}
