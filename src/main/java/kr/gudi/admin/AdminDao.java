package kr.gudi.admin;

import java.util.List;
import java.util.Map;

public interface AdminDao { 

	public int setbank(Map<String, Object> paramMap);
	public List<Map<String, Object>> getOrder();
	public Map<String, Object> getTotSales();
	public Map<String, Object> getMonthSales();
	public Map<String, Object> lastMonthSales();
	public List<Map<String, Object>> selectOrder(Map<String, Object> search);
	public List<Map<String, Object>> getDeposit();
	public List<Map<String, Object>> selectCancel();
	public int approve(Map<String, Integer> paramMap);
	public int denial(Map<String, Integer> paramMap);
	public List<Map<String, Object>> selectExchange();
	public List<Map<String, Object>> selectRefund();
	public Map<String, Object> countExchange();
	public Map<String, Object> countRefund();
	public Map<String, Object> finishExchange();
	public Map<String, Object> finishRefund();
	public Map<String, Object> pay();
	public Map<String, Object> SelectUserCount();
	public Map<String, Object> monthUserSignup();
	public Map<String, Object> todaySales();
	public Map<String, Object> todayLogin();
	public Map<String, Object> monthLogin();
	
}
