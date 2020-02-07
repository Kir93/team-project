package kr.gudi.payment;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired PaymentDao paymentDao;

	@Override
	public Map<String, Object> getbank() {
		return paymentDao.getbank();
	}
	
}
