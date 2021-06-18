package com.khanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khanh.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
