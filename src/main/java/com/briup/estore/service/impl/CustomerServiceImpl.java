package com.briup.estore.service.impl;

/**
 * @Classname UserServiceImpl
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/26 19:18
 * @Created by Mr.WuChaoWen
 */

import com.briup.estore.dao.CustomerDao;
import com.briup.estore.entity.Customer;
import com.briup.estore.service.ICustomerService;

//import com.briup.estore.utils.MD5Util;
import com.briup.estore.utils.MD5Util;
import com.briup.estore.utils.MyBatisSqlSessionFactory;
import org.apache.ibatis.session.SqlSession;

/**
 * @Auther: vanse(lc))
 * @Date: 2022/5/31-05-31-11:01
 * @Description：顾客业务实现
 */
public class CustomerServiceImpl implements ICustomerService {
    SqlSession session = MyBatisSqlSessionFactory.openSession();
    CustomerDao customerDao = session.getMapper(CustomerDao.class);

    @Override
    public void register(Customer customer) {
        String name = customer.getName();
        // 1.校验用户
        // 1.用户名不能为空
        if (name == null || "".equals(name.trim())) {
            // 参数是message new RuntimeException(message);
            throw new RuntimeException("用户名不能为空");
        }
        // 2.用户名不能已经在数据库存在 (携带用户名去数据库查)
        Customer cusomerFromDB = findByName(name);
        if (cusomerFromDB != null) {
            throw new RuntimeException("用户名已经存在");
        }
        //MD5加密
        customer.setPassword(MD5Util.encode(customer.getPassword()));
        // 2.注册用户(调用dao)
        customerDao.register(customer);
        // 注意事务的提交
        session.commit();
    }

    @Override
    public Customer login(String name, String password) {
        if (name == null) {
            throw new RuntimeException("用户名不能为空");
        }
        Customer customer = customerDao.findByName(name);
        if (customer==null){
            throw new RuntimeException("用户不存在");
        }
        if (!customer.getPassword().equals(MD5Util.encode(password))){
            throw new RuntimeException("用户名或者密码错误");
        }

        return customer;
    }

    /**
     * @param name 用户名称
     * @return 该用户对象
     */
    public Customer findByName(String name) {
        // 去数据库查
        return customerDao.findByName(name);
    }

}
