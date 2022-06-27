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

/**
 * @Classname CustomerLoginrServlet
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/27 10:18
 * @Created by Mr.WuChaoWen
 */
@WebServlet("/userLogin")

public class CustomerLoginrServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //参数编码
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        //接受参数
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        //调用service做业务校验 并传递参数
        ICustomerService service = new CustomerServiceImpl();
        //根据业务内容做响应
        try {
            Customer customer = service.login(name, password);
            session.setAttribute("customer",customer);
            resp.sendRedirect("index.jsp");
        } catch (Exception e) {
            String message = e.getMessage();
            session.setAttribute("msg",message);
            //失败 : 继续注册，携带错误信息
            System.out.println("session = " + session.getAttribute("msg"));
            resp.sendRedirect("login.jsp");
        }
    }
}
