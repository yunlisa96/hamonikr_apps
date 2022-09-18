package com.hamonikr.apps;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppsController {

  @Autowired
  AppsService appsService;

  /**
   * 등록페이지
   * @return
   */
  @RequestMapping("/apps/register")
  public String register() {
    return "apps/register";
  }

  /**
   * 등록로직
   * @return
   */
  @RequestMapping("/apps/register.proc")
  @ResponseBody
  public String registerProc(Model model, AppsVO vo) {
    String result = "";

    int check = appsService.register(vo);
    if (check > 0) {
      result = "SUCCESS";
    } else {
      result = "FAIL";
    }
    return result;
  }
  
  /**
   * 목록페이지
   * @return
   */
  @RequestMapping("/apps/list")
  public String list(Model model, AppsVO vo) {
    System.out.println("vo===="+vo);
    List<AppsVO> list = appsService.appslist(vo);
    model.addAttribute("keyword", vo.getKeyword());
    model.addAttribute("appslist", list);

    return "apps/list";
  }

  /**
   * 상세페이지
   * @return
   */
  @RequestMapping("/apps/detail")
  public String detail(Model model, AppsVO vo) {
    vo = appsService.appsdetail(vo);
    model.addAttribute("appsdetail", vo);

    return "apps/detail";
  }
  
}
