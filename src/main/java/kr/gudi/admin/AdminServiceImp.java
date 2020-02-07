package kr.gudi.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired AdminDao adminDao;

	@Override
	public int setbank(Map<String, Object> paramMap) {
		return adminDao.setbank(paramMap);
	}
}
