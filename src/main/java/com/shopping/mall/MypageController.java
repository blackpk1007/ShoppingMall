package com.shopping.mall;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopping.mall.Dto.OrderlistDto;
import com.shopping.mall.Dto.QnaDto;
import com.shopping.mall.Dto.UserDto;
import com.shopping.mall.service.CartService;
import com.shopping.mall.service.MypageService;
import com.shopping.mall.service.UserService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private UserService userS;
	
	@Autowired
	private CartService cartS;
	
	@Autowired
	private MypageService mypageS;
	
	@RequestMapping("")
	public String mypage(Model model, String userID){
		
		logger.info("[Mypage Controller] : mypage");
		System.out.println("asd :"+userID);
		model.addAttribute("user", userS.userselectOneid(userID));
		
		return "mypage";
	}
	
	@RequestMapping("/mypageupdateform")
	public String myapgeupdateform(Model model, String userid) {
		
		logger.info("[Mypage Controller] : UpdateForm");
		
		model.addAttribute("userdto", userS.userselectOneid(userid));
		
		return "mypageupdateform";
	}
	
	@RequestMapping("/mypageupdate")
	public String mypageupdate(UserDto userdto) {
		
		logger.info("[Mypage Controller] : Update");
		
		int result = userS.userUpdate(userdto);
		
		if(0 < result) {
			return "redirect:/mypage";
		}else {
			return "redirect:/mypage/mypageupdateform";
		}
	}
	
	@RequestMapping("/mypagecart")
	public String mypagecart(Model model, String userid) {
		
		logger.info("[Mypage Controller] : Cart");
		
		model.addAttribute("cartlist", cartS.cartselect(userid));
		model.addAttribute("wishlist", cartS.wishselect(userid));
		
		return "mypagecart";
	}
	
	@RequestMapping("/ordercontent")
	public String ordercontent(Model model, String userid) {
		
		logger.info("[Mypage Controller] : OrderContent");
		
		model.addAttribute("orderlist", cartS.orderlistselect(userid));
		
		return "ordercontent";
	}
	
	@RequestMapping("/orderdetail")
	public String orderdetail(Model model, OrderlistDto dto) {
		
		logger.info("[Mypage Controller] : OrderDetail");
		
		model.addAttribute("userdto", userS.userselectOneid(dto.getOrderlistID()));
		model.addAttribute("orderlist", cartS.orderlistselectdetailOne(dto));
		model.addAttribute("orderlistdetail", cartS.orderlistselectDetail(dto));
		
		return "ordercontentdetail";
	}
	
	@ResponseBody
	@RequestMapping(value="/qnaselectcategory", method=RequestMethod.POST)
	public Map<String, Boolean> ajaxselect(Model model, @RequestBody String qnacategory){
		
		logger.info("[Mypage Controller] : Qnaselectcategory");
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		boolean check = false;
		String str = qnacategory.replace("\"", "");
		
		model.addAttribute("list", mypageS.qnaselectcategory(str));
		
		if(mypageS.qnaselectcategory(str) != null) {
			check = true;
		}
		map.put("check", check);
		
		return map;
	}
	
	@RequestMapping("/qnacategory")
	public String qnacategory(Model model, String qnacategory) {
		
		logger.info("[Mypage Controller] : QnaselectcategoryList");
		
		model.addAttribute("list", mypageS.qnaselectcategory(qnacategory));
		
		return "qnamain";
	}
	
	@RequestMapping("/qnalist")
	public String qnaList(Model model) {
		
		logger.info("[Mypage Controller] : QnaList");
		
		model.addAttribute("list", mypageS.qnaselectList());
		
		return "qnamain";
	}
	
	@RequestMapping("/qnadetail")
	public String detail(Model model, int qnanum) {
		
		logger.info("[Mypage Controller] : QnaDetail");
		
		model.addAttribute("qnadto", mypageS.qnaselectOne(qnanum));
		
		return "qnadetail";
	}
	
	@RequestMapping("/qnawriteform")
	public String qnawrite() {
		
		logger.info("[Mypage Controller] : QnaWriteForm");
		
		return "qnawrite";
	}
	
	@RequestMapping("/qnawrite")
	public String write(QnaDto dto, HttpSession ssesion) {
		
		logger.info("[Mypage Controller] : QnaWrite");
		
		int res = mypageS.qnainsert(dto);
		
		if(res >0 ) {
			return "redirect:/mypage/qnalist?userid="+((UserDto)ssesion.getAttribute("login")).getUserID();
		}else {
			return "redirect:/mypage/qnawriteform";
		}
	}
	
	
	@RequestMapping("/qnaupdateform")
	public String updateform(Model model, int qnanum) {
		
		logger.info("[Mypage Controller] : QnaUpdateForm");
		
		model.addAttribute("qnadto", mypageS.qnaselectOne(qnanum));
		
		return "qnaupdateform";
	}
	
	@RequestMapping("/qnaupdateresult")
	public String update(QnaDto dto) {
		
		logger.info("[Mypage Controller] : QnaUpdateResult");
		
		int result = mypageS.qnaupdate(dto);
		
		if(0 < result) {
			return "redirect:/mypage/qnadetail?qnanum="+dto.getQnanum();
		}else {
			return "redirect:/mypage/qnaupdateform?qnanum="+dto.getQnanum();
		}
	}
	
	@RequestMapping(value="/qnasearchList", method = RequestMethod.GET)
	public String qnasearchList(Model model, @RequestParam(value = "keyword") String keyword) {
		
		logger.info("[Mypage Controller] : QnaUpdateSearch");
		
		model.addAttribute("slist", mypageS.qnasearchList(keyword));
		
		return "qnamainsearch";
	}
	@RequestMapping("/cartdelete")
    public String cartdelete(String cartNumbers, HttpSession ssesion) {
       logger.info("cart delete");
       int res = 0;
       
       String[] cartsplit = cartNumbers.split(","); 
       
       for(String cartNumber : cartsplit) {
           int delRes= cartS.cartdelete(cartNumber);
       
          if(delRes>0) {
             res++;
          }
       }
       if(res == cartsplit.length) {
          //성공
          
       }
       return "redirect:/mypage/mypagecart?userid="+((UserDto)ssesion.getAttribute("login")).getUserID();
       
    }
//	@RequestMapping("/test")
//	public String test() {
//		
//		Long orderNumber = (long) ((Math.random() * 99999999) + 10000000);
//		Date date = new Date();
//		OrderlistDto dto = new OrderlistDto(orderNumber, "test1", "test상품추가", "색상", "사이즈", 1, 30000, 30000, date, "N");
//		
//		cartS.orderlisttest(dto);
//		
//		return "redirect:/mypage";
//	}
	
}
