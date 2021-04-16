package com.mt.k8s;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface K8sRepository extends JpaRepository<K8s, Integer> {

}
