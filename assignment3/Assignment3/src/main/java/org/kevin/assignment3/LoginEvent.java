//package org.kevin.assignment3;
//
//import jakarta.servlet.http.HttpSessionAttributeListener;
//import jakarta.servlet.http.HttpSessionBindingEvent;
//
//public class LoginEvent implements HttpSessionAttributeListener {
//
//    @Override
//    public void attributeAdded(HttpSessionBindingEvent event) {
//        if (event.getName() == "email"){
//            String emailvalue = event.getValue().toString();
//            String message = "logged in.";
//            UserData tosendEmail = new UserData(emailvalue, "Login", message);
//            Boolean sent = email.sendEmail();
//            System.out.println(sent);
//        }
//
//    }
//
//    @Override
//    public void attributeRemoved(HttpSessionBindingEvent event) {
//        // Your implementation here
//    }
//
//    @Override
//    public void attributeReplaced(HttpSessionBindingEvent event) {
//        // Your implementation here
//    }
//}
//
//}

