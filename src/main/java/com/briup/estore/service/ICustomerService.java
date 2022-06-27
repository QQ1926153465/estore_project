package com.briup.estore.service;

import com.briup.estore.entity.Customer;

/**
 * @Classname IUserService
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/26 19:21
 * @Created by Mr.WuChaoWen
 */
public interface ICustomerService {
    void register(Customer customer);//注册
    Customer login(String name,String password);
}
