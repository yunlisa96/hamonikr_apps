package com.hamonikr.apps;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppsService {

  @Autowired
  AppsMapper appsMapper;

  public int register(AppsVO vo) {
    int result = 0;
    result = appsMapper.register(vo);
    return result;
  }
  
  public List<AppsVO> appslist(AppsVO vo) {
    List<AppsVO> list = new ArrayList<AppsVO>();
    list = appsMapper.appslist(vo);
    return list;
  }

  public AppsVO appsdetail(AppsVO vo) {
    vo = appsMapper.appsdetail(vo);
    return appsMapper.appsdetail(vo);
  }
}
