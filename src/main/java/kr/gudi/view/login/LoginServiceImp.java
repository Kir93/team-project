package kr.gudi.view.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImp implements LoginService {
	
	@Autowired private LoginDao loginDao; 

	@Override
	public Map<String, Object> getUser(UserBean ub) {
		System.out.println("Service");
		return loginDao.getUser(ub);
	}

}
