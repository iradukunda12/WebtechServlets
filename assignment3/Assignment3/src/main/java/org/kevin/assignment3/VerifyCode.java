package org.kevin.assignment3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/VerifyCode")
public class VerifyCode extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            UserData user = (UserData) session.getAttribute("authcode");
            String code = request.getParameter("authcodes");

            if (code.equals(user.getOode())) {
                out.println("verification Done");
            } else {
                out.println("Incorrect Verification code");
            }

        }
    }
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        processRequest(request, response);

    }

    }

