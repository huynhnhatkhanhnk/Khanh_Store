package com.khanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khanh.entity.*;

public interface OrderDAO extends JpaRepository<Order, Long>{
}
