package kr.gudi.view.login;

import java.util.Map;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImp implements LoginDao {
	
	@Autowired SqlSession session;

	@Override
	public Map<String, Object> getUser(UserBean ub) {
		System.out.println("dao");
		return session.selectOne("join.getUser", ub);
	}

}
