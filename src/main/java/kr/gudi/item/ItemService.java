package kr.gudi.item;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemService {

	@Autowired ItemDao id;
	
	public Map<String, Object> itemView(int no) {
		return id.itemView(no);
	}
}
