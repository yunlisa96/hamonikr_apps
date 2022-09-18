package com.hamonikr.apps;

import java.util.List;

public interface AppsMapper {

  public int register(AppsVO vo);

  public List<AppsVO> appslist(AppsVO vo);

  public AppsVO appsdetail(AppsVO vo);
  
}
