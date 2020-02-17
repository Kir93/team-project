package kr.gudi.admin;

import java.util.List;
import java.util.Map;

public interface AdminService {
 
	public int setbank(Map<String, Object> paramMap);
	public List<Map<String, Object>> getOrder();
	public List<Map<String, Object>> getSales();
	public List<Map<String, Object>> selectOrder(Map<String, Object> search);
	public List<Map<String, Object>> getDeposit();
	public List<Map<String, Object>> selectCancel();
	public int approve(List<Map<String, Integer>> paramMap);
	public int denial(List<Map<String, Integer>> paramMap);
	public List<Map<String, Object>> selectExchange();
	public List<Map<String, Object>> selectRefund();
	public List<Map<String, Object>> getExchange();
	public List<Map<String, Object>> getHome();
	
}
