package com.hamonikr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

  @RequestMapping("")
  public String redirect() {
    return "redirect:/apps/register";
  }
  
}
