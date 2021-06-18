package com.khanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khanh.entity.*;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}