package com.hamonikr.apps;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppsController {

  @Autowired
  AppsService appsService;

  @RequestMapping("/apps/register")
  public String register() {
    return "apps/register";
  }

  @RequestMapping("/apps/register.proc")
  public String registerProc(AppsVO vo) {
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
