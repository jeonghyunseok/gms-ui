package com.gms.web.service;

import java.util.List;

import java.util.Map;

import com.gms.web.domain.MemberBean;

public interface MemberService {
	public String addMember(MemberBean member);

	public List<MemberBean> getMembers();

	public String countMembers();

	public MemberBean findById(String id);

	public List<MemberBean> findByName(String name);

	public String modify(MemberBean memeber);

	public String remove(String id);
	
	public Map<String,Object> login(MemberBean member);

}