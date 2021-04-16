package com.mt.k8s;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class K8sService {

	@Autowired
	private K8sRepository repo;
	
	public List<K8s> addNewUser(K8s user) {
		repo.save(user);
		return repo.findAll();
	}
}
