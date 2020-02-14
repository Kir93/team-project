package kr.gudi.payment;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDaoImp implements PaymentDao {

	@Autowired SqlSession session;

	@Override
	public Map<String, Object> getbank() {
		return session.selectOne("payment.getbank");
	}

	@Override
	public List<Map<String, Object>> pickCart(Map<String, Object> ParamMap) {
		return session.selectList("payment.pickCart", ParamMap);
	}

	@Override
	public int setPay(Map<String, Object> ParamMap) {
		return session.insert("payment.setPay",ParamMap);
	}

	@Override
	public int updateCart(Map<String, Object> ParamMap) {
		return session.update("payment.updateCart", ParamMap);
	}
}
