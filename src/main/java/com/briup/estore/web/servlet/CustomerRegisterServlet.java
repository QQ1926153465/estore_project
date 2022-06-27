package com.briup.estore.web.servlet;

import com.briup.estore.entity.Customer;
import com.briup.estore.service.ICustomerService;
import com.briup.estore.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Classname CustomerRegisterServlet
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/27 8:44
 * @Created by Mr.WuChaoWen
 */
@WebServlet("/userRegister")
public class CustomerRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //参数编码
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        //接受参数
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String zipCode = req.getParameter("zipCode");
        String address = req.getParameter("address");
        String telephone = req.getParameter("telephone");
        String email = req.getParameter("email");
        //将参数封装成customer对象
        Customer customer = new Customer();
        customer.setName(name);
        customer.setZipCode(zipCode);
        customer.setPassword(password);
        customer.setAddress(address);
        customer.setTelephone(telephone);
        customer.setEmail(email);
        //调用service做业务校验 并传递参数
        ICustomerService service = new CustomerServiceImpl();
        //根据业务内容做响应
        try {
            //成功 ：跳转登录页面

            service.register(customer);
            resp.sendRedirect("login.jsp");
            session.setAttribute("name",req.getParameter("name"));
            session.setAttribute("password",req.getParameter("password"));
        } catch (Exception e) {
            String message = e.getMessage();
            System.out.println("message = " + message);
            session.setAttribute("msg",message);
            //失败 : 继续注册，携带错误信息
            resp.sendRedirect("register.jsp");
            session.setAttribute("customer",customer);
        }
    }
}
