package kr.gudi.main;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

@Repository
public class IndexDao {
	
	@Autowired SqlSession session;
	
	public Map<String, Object> mainList() {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", session.selectList("main.mainList"));
		return resultMap;
	}
	
	public Map<String, Object> newList() {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", session.selectList("main.newList"));
		return resultMap;
	}
	
	public Map<String, Object> bestList() {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", session.selectList("main.bestList"));
		return resultMap;
	}
	
	public Map<String, Object> choseList(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", session.selectList("main.choseList", no));
		return resultMap;
	}
	
	public int setChose(Map<String, Object> paramMap) {
		return session.insert("chose.setChose", paramMap);
	}
	
	public int delChose(Map<String, Object> paramMap) {
		return session.update("chose.delChose", paramMap);
	}
}
