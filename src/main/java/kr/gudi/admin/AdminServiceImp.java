package kr.gudi.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired AdminDao adminDao;
 
	@Override
	public int setbank(Map<String, Object> paramMap) {
		return adminDao.setbank(paramMap);
	}

	@Override
	public List<Map<String, Object>> getOrder() {
		return adminDao.getOrder();
	}

	@Override
	public List<Map<String, Object>> getSales() {
		List<Map<String, Object>> salesList = new ArrayList<Map<String, Object>>();
		salesList.add(adminDao.getTotSales());
		salesList.add(adminDao.getMonthSales());
		salesList.add(adminDao.lastMonthSales());
		return salesList;
	}

	@Override
	public List<Map<String, Object>> selectOrder(Map<String, Object> search) {
		return adminDao.selectOrder(search);
	}

	@Override
	public List<Map<String, Object>> getDeposit() {
		return adminDao.getDeposit();
	}

	@Override
	public List<Map<String, Object>> selectCancel() {
		return adminDao.selectCancel();
	}

	@Override
	public int approve(List<Map<String, Integer>> paramMap) {
		if(paramMap != null) {
			for(int i = 0; i < paramMap.size(); i++) {
				adminDao.approve(paramMap.get(i));
			}
			return 1;
		}
		return -1;
	}

	@Override
	public int denial(List<Map<String, Integer>> paramMap) {
		if(paramMap != null) {
			for(int i = 0; i < paramMap.size(); i++) {
				adminDao.denial(paramMap.get(i));
			}
			return 1;
		}
		return -1;
	}

	@Override
	public List<Map<String, Object>> selectExchange() {
		return adminDao.selectExchange();
	}

	@Override
	public List<Map<String, Object>> selectRefund() {
		return adminDao.selectRefund();
	}

	@Override
	public List<Map<String, Object>> getExchange() {
		List<Map<String, Object>> ExchangeList = new ArrayList<Map<String, Object>>();
		ExchangeList.add(adminDao.countRefund());
		ExchangeList.add(adminDao.countExchange());
		ExchangeList.add(adminDao.finishExchange());
		ExchangeList.add(adminDao.finishRefund());
		return ExchangeList;	
	}

	@Override
	public List<Map<String, Object>> getHome() {
		List<Map<String, Object>> getHomeList = new ArrayList<Map<String, Object>>();
		getHomeList.add(adminDao.pay());
		getHomeList.add(adminDao.countRefund());
		getHomeList.add(adminDao.countExchange());
		getHomeList.add(adminDao.SelectUserCount());
		getHomeList.add(adminDao.monthUserSignup());
		getHomeList.add(adminDao.todaySales());
		getHomeList.add(adminDao.getMonthSales());
		getHomeList.add(adminDao.todayLogin());
		getHomeList.add(adminDao.monthLogin());
		return getHomeList;
	}

}
