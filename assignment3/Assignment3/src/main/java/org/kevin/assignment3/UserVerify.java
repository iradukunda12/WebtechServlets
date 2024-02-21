package org.kevin.assignment3;

//import jakarta.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;




import java.io.IOException;
import java.io.PrintWriter;



@WebServlet("/UserVerify")
public class UserVerify extends HttpServlet {
//    public void init() {
//        message = "Hello World!";
//    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

        try(PrintWriter out = response.getWriter()) {

            String name =  request.getParameter("name");
            String email =  request.getParameter("email");
            String department =  request.getParameter("department");
            String faculty =  request.getParameter("faculty");

            SendEmail sm =  new SendEmail();
            String code = sm.getRandom();

            UserData user = new UserData(name, email, department, faculty, code);
            boolean test =  sm.sendEmails(user);
            if(test) {
                HttpSession session = request.getSession();
                session.setAttribute("authcode", user);
                response.sendRedirect("verify.jsp");

            }



        }catch (Exception err) {
            err.printStackTrace();
        }


    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        processRequest(request, response);
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        processRequest(request, response);
    }


    public void destroy() {
    }

}