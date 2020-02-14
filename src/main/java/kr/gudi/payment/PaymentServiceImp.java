package kr.gudi.payment;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired PaymentDao paymentDao;

	@Override
	public Map<String, Object> getbank() {
		return paymentDao.getbank();
	}

	@Override
	public List<Map<String, Object>> pickCart(Map<String, Object> ParamMap) {
		return paymentDao.pickCart(ParamMap);
	}

	@Override
	public int setPay(Map<String, Object> ParamMap) {	
		if(ParamMap != null) {
			for(Map.Entry<String, Object> entry : ParamMap.entrySet()) {
				List<Map<String, Object>> params = (List<Map<String, Object>>) entry.getValue();
				for(int i = 0; i < params.size(); i++) {
					System.out.println(params.get(i));
					paymentDao.setPay(params.get(i));
					paymentDao.updateCart(params.get(i));
				}
				return 1;
			};
		}	
		return -1;
	}
	
}
