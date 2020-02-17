package kr.gudi.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDaoImp implements AdminDao { 

	@Autowired SqlSession session;

	@Override
	public int setbank(Map<String, Object> paramMap) {
		session.delete("admin.resetbank");
		return session.insert("admin.setbank", paramMap);
	}

	@Override
	public List<Map<String, Object>> getOrder() {
		return session.selectList("admin.getOrder");
	}

	@Override
	public Map<String, Object> getTotSales() {
		return session.selectOne("admin.getTotSales");
	}

	@Override
	public Map<String, Object> getMonthSales() {
		return session.selectOne("admin.getMonthSales");
	}

	@Override
	public Map<String, Object> lastMonthSales() {
		return session.selectOne("admin.lastMonthSales");
	}

	@Override
	public List<Map<String, Object>> selectOrder(Map<String, Object> search) {
		return session.selectList("admin.selectOrder", search);
	}

	@Override
	public List<Map<String, Object>> getDeposit() {
		return session.selectList("admin.getDeposit");
	}

	@Override
	public List<Map<String, Object>> selectCancel() {
		return session.selectList("admin.selectCancel");
	}

	@Override
	public int approve(Map<String, Integer> paramMap) {
		return session.update("admin.approve",paramMap);
	}

	@Override
	public int denial(Map<String, Integer> paramMap) {
		return session.update("admin.denial",paramMap);
	}

	@Override
	public List<Map<String, Object>> selectExchange() {
		return session.selectList("admin.selectExchange");
	}

	@Override
	public List<Map<String, Object>> selectRefund() {
		return session.selectList("admin.selectRefund");
	}

	@Override
	public Map<String, Object> countExchange() {
		return session.selectOne("admin.countExchange");
	}

	@Override
	public Map<String, Object> countRefund() {
		return session.selectOne("admin.countRefund");
	}

	@Override
	public Map<String, Object> finishExchange() {
		return session.selectOne("admin.finishExchange");
	}

	@Override
	public Map<String, Object> finishRefund() {
		return session.selectOne("admin.finishRefund");
	}

	@Override
	public Map<String, Object> pay() {
		return session.selectOne("admin.pay");
	}

	@Override
	public Map<String, Object> SelectUserCount() {
		return session.selectOne("admin.SelectUserCount");
	}

	@Override
	public Map<String, Object> monthUserSignup() {
		return session.selectOne("admin.monthUserSignup");
	}

	@Override
	public Map<String, Object> todaySales() {
		return session.selectOne("admin.todaySales");
	}

	@Override
	public Map<String, Object> todayLogin() {
		return session.selectOne("admin.todayLogin");
	}

	@Override
	public Map<String, Object> monthLogin() {
		return session.selectOne("admin.monthLogin");
	}


}
