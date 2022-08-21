package com.hamonikr.apps;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AppsVO {

  private long seq;
  private String app_name;
  private String app_now_version;
  private String app_dc;
  private String app_licenses;
  private String app_repository;
  private long app_size;
  private String app_link;
  private Timestamp rgstr_date;
  private Timestamp updt_date;
}
