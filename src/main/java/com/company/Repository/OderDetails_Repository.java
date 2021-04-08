package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.OrderDetails;

public interface OderDetails_Repository extends JpaRepository<OrderDetails, Integer> {

}
