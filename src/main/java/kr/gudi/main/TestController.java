package kr.gudi.main;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class TestController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/db")
	public void test() {
		int result = sqlSession.selectOne("sql.test");
		System.out.println(result);
	}
	
}
