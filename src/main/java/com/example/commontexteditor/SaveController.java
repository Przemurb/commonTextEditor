package com.example.commontexteditor;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SaveController", value = "/save")
public class SaveController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        ServletContext servletContext = request.getServletContext();
        servletContext.setAttribute("content", content);
        request.getRequestDispatcher("confirm.jsp").forward(request, response);
    }
}
