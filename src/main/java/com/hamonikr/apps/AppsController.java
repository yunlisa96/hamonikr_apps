package com.hamonikr.apps;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppsController {

  @Autowired
  AppsService appsService;

  @RequestMapping("/apps/register")
  public String register() {
    return "apps/register";
  }

  @RequestMapping("/apps/register.proc")
  @ResponseBody
  public String registerProc(Model model,AppsVO vo) {
    String result = "";
    
    int check = appsService.register(vo);
    if (check > 0) {
      result = "SUCCESS";
    } else {
      result = "FAIL";
    }
    return result;
  }
  
}
