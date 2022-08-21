package com.hamonikr.apps;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppsService {

  @Autowired
  AppsMapper appsMapper;
  
}
