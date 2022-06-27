package com.briup.estore.dao;

import com.briup.estore.entity.Customer;

/**
 * @Classname CustomerDao
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/26 16:55
 * @Created by Mr.WuChaoWen
 */
public interface CustomerDao {
    void register(Customer customer);
    Customer findByName(String name);

}
