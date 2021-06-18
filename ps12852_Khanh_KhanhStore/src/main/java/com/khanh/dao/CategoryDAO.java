package com.khanh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khanh.entity.*;

public interface CategoryDAO extends JpaRepository<Category, String>{
}
