package com.gms.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.gms.web.dao.MemberDAO;
import com.gms.web.dao.MemberDAOImpl;
import com.gms.web.domain.MemberBean;
import com.gms.web.service.MemberService;


public class MemberServiceImpl implements MemberService {

	public static MemberServiceImpl getInstance() {
		return new MemberServiceImpl();
	}

	private MemberServiceImpl() {
	}

	@Override
	public String addMember(MemberBean member) {
		return MemberDAOImpl.getInstance().insert(member).equals("1") ? "성공" : "실패";
	}

	@Override
	public List<MemberBean> getMembers() {

		return MemberDAOImpl.getInstance().selectAll();
	}

	@Override
	public String countMembers() {

		return String.valueOf(MemberDAOImpl.getInstance().count());
	}

	@Override
	public MemberBean findById(String id) {

		return MemberDAOImpl.getInstance().selectById(id);
	}

	@Override
	public List<MemberBean> findByName(String name) {
		return MemberDAOImpl.getInstance().selectByName(name);
	}

	@Override
	public String modify(MemberBean bean) {

		return (MemberDAOImpl.getInstance().update(bean).equals("1")) ? "성공" : "실패";

	}

	@Override
	public String remove(String id) {

		return MemberDAOImpl.getInstance().delete(id).equals("1") ? "성공" : "실패";
	}

	@Override
	public Map<String,Object> login(MemberBean bean) {
		Map<String,Object> map =new HashMap<>();
		MemberBean m=findById(bean.getId());
		String page=
		(m!=null)?
				(bean.getPassword().equals(m.getPassword()))?"main":"login_fail":"join";
		map.put("page", page);
		map.put("user", m);		
	return map;	
	}
	}