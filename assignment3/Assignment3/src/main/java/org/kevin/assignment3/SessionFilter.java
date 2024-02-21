
package org.kevin.assignment3;


import jakarta.servlet.*;
        import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//
import java.io.IOException;

@WebFilter("/loginservlets")

public class SessionFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code goes here (if needed)
        String initParameter = filterConfig.getInitParameter("exampleParam");
        System.out.println("SessionFilter is being initialized with parameter: " + initParameter);
        // Additional initialization tasks can be added as needed
    }

//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//
//
//        HttpSession session = httpRequest.getSession(false);
//
//        if (session == null && session.getAttribute("email") == null) {
//            // If the session exists and the "email" attribute is set, proceed to the servlet
//            chain.doFilter(request, response);
//            System.out.println("email accepted");
//        } else {
//            // If the session or "email" attribute is not set, redirect to the login page
//            httpResponse.sendRedirect("index.jsp");
//            System.out.println("redirected to the index.jsp");
//        }
//    }

//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//
//        HttpSession session = httpRequest.getSession(false);
//
//        if (session != null && session.getAttribute("email") != null) {
//            // If the session exists and the "email" attribute is set, proceed to the servlet
//            chain.doFilter(request, response);
//            System.out.println("email accepted");
//        } else {
//            // If the session or "email" attribute is not set, redirect to the login page
//            httpResponse.sendRedirect("index.jsp");
//            System.out.println("redirected to the index.jsp");
//        }
//    }

//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//        HttpSession session = httpRequest.getSession(false);
//
//        if (session != null && session.getAttribute("email") != null) {
//            // If the session exists and the "email" attribute is set, proceed to the servlet
//            chain.doFilter(request, response);
//            System.out.println("email accepted");
//        } else {
//            // If the session or "email" attribute is not set, redirect to the login page
//            httpResponse.sendRedirect("index.jsp");
//            System.out.println("redirected to the index.jsp");
//        }
//    }

//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//        HttpSession session = httpRequest.getSession(false);
//
//        if (session != null && session.getAttribute("email") != null) {
//            // If the session exists and the "email" attribute is set, proceed to the servlet
//            chain.doFilter(request, response);
//            System.out.println("email accepted");
//            Object emailAttribute = session.getAttribute("email");
//            System.out.println("Email attribute value: " + emailAttribute);
//
//        } else {
//            // If the session or "email" attribute is not set, redirect to the login page
//            httpResponse.sendRedirect("index.jsp");
//            System.out.println("redirected to the index.jsp");
//        }
//    }



        public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
            HttpServletRequest request = (HttpServletRequest) req;
            HttpServletResponse response = (HttpServletResponse) resp;

            HttpSession session = request.getSession(false);

            boolean isLoggedIn = (session != null && session.getAttribute("email") != null);

            if (isLoggedIn) {

                chain.doFilter(request, response);
            } else {
                String email = request.getParameter("email");
                String password = request.getParameter("password");


                boolean isValidLogin = validateLogin(email, password);

                if (isValidLogin) {
                    // Successful login, create a new session and store the email
                    session = request.getSession(true);
                    session.setAttribute("email", email);
                    chain.doFilter(request, response);
                } else {
                    // Invalid login, redirect to the login page
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                }
            }
        }





    public void destroy() {
        // Cleanup code goes here (if needed)
        System.out.println("SessionFilter is being destroyed");
        // Additional cleanup tasks can be added as needed
    }
    private boolean validateLogin(String email, String password) {

        return email.equals("kevinkomeza8@gmail.com") && password.equals("Iradukunda123?");
    }
}
