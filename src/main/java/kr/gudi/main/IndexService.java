package kr.gudi.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexService {

	@Autowired IndexDao id;
	
	public Map<String, Object> mainList() {
		return id.mainList();
	}
	
	public Map<String, Object> newList() {
		return id.newList();
	}
	
	public Map<String, Object> bestList() {
		return id.bestList();
	}
	
	public Map<String, Object> choseList(int no) {
		return id.choseList(no);
	}
}
