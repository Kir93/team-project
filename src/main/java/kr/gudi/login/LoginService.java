package kr.gudi.login;

import java.util.Map;

public interface LoginService {
	
	public Map<String , Object> getUser(UserBean ub); 
	public int loginCount(Map<String, Object> paramMap); 

}
