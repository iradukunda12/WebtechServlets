package org.kevin.assignment3;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//
import java.io.IOException;

@WebFilter("/Registration.jsp")

public class admissionFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code goes here (if needed)
        String initParameter = filterConfig.getInitParameter("exampleParam");
        System.out.println("SessionFilter is being initialized with parameter: " + initParameter);
        // Additional initialization tasks can be added as needed
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false);

        if (session != null && session.getAttribute("email") != null) {
            // If the session exists and the "email" attribute is set, proceed to the servlet
            chain.doFilter(request, response);
            System.out.println("email accepted");
        } else {
            // If the session or "email" attribute is not set, redirect to the login page
            httpResponse.sendRedirect("index.jsp");
            System.out.println("redirected to the index.jsp");
        }
    }

}
