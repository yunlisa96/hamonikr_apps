package com.hamonikr.apps;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppsController {

  @RequestMapping("/apps/register")
  public String test() {
    return "apps/register";
  }
  
}
