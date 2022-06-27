package com.briup.estore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Classname LogoutServlet
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/27 14:54
 * @Created by Mr.WuChaoWen
 */
@WebServlet("/logoutServlet")
public class LogoutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //销毁session
        req.getSession().invalidate();

        String path = "/login.jsp";

        resp.sendRedirect(req.getContextPath()+path);
    }

}