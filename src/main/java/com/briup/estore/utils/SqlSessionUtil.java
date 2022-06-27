package com.briup.estore.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @Classname SqlSessionUtil
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/26 9:17
 * @Created by 19261
 */
public class SqlSessionUtil {
    private static SqlSessionFactory factory = null;

    //获取工厂
    public static SqlSessionFactory getSqlSessionFactory() {
        InputStream in = null;

        try {
            in = Resources.getResourceAsStream("mybatis-config.xml");
            //获取工厂对象
            if (factory == null) {
                factory = new SqlSessionFactoryBuilder().build(in);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return factory;
    }

    //静态方法
    public static SqlSession getSqlSession() {
        return getSqlSession(false);
    }

    //给定参数（true：自动提交 false ：手动提交）
    public static SqlSession getSqlSession(boolean autoCommit) {
        return getSqlSessionFactory().openSession(autoCommit);
    }

}
