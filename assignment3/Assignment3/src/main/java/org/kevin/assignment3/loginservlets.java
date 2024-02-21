package org.kevin.assignment3;


import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/loginservlets")
public class loginservlets extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
     String email = request.getParameter("email");
     String password =  request.getParameter("password");
//     System.out.println(email);

     if(email.equals("kevinkomeza8@gmail.com") && password.equals("Iradukunda123?")) {

         HttpSession session = request.getSession();
         session.setAttribute("email", email);

         response.sendRedirect("admissionpage.jsp");

     }  else {
         response.sendRedirect("index.jsp");
     }


    }


}