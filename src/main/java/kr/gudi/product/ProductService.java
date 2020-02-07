package kr.gudi.product;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ProductService {

	@Autowired	ProductDao pd;
	
	private final String ROOT = "D:/IDE/workspace/TeamProject/src/main/webapp";
	
	public Map<String, Object> productStatus() {
		return pd.productStatus();
	}
	
	public Map<String, Object> productList() {
		return pd.productList();
	}
	
	public Map<String, Object> findProduct(String no) {
		return pd.findProduct(no);
	}
	
	public int setProduct(Map<String, Object> paramMap) {
		return pd.setProduct(paramMap);
	}
	
	public int upProduct(Map<String, Object> paramMap) {
		return pd.upProduct(paramMap);
	}
	
	public boolean setImage(MultipartFile tImg, MultipartFile dImg) {
		int no = pd.getImgNo();
		String tfilePath = "/resources/upload/t" + no + ".png";
		String tPath = ROOT + tfilePath;
		String dfilePath = "/resources/upload/d" + no + ".png";
		String dPath = ROOT + dfilePath;
		System.out.println(tPath);
		System.out.println(dPath);
		Map<String, Object> img = new HashMap<String, Object>();
		img.put("tPath", tfilePath);
		img.put("dPath", dfilePath);
		img.put("no", no);
		
		try {
			FileUtils.copyInputStreamToFile(tImg.getInputStream(), new File(tPath));
			FileUtils.copyInputStreamToFile(dImg.getInputStream(), new File(dPath));
			pd.setImage(img);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return true;
//		return pd.setImage(tImg, dImg);
	}
}
