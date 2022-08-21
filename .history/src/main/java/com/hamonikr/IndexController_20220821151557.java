package com.hamonikr;

import org.springframework.stereotype.Controller;

@Controller
public class IndexController {

  @RequestMapping("")
  public String test() {
    return "apps/register";
  }
  
}
