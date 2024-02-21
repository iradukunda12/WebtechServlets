package org.kevin.assignment3;
//
//
//import javax.mail.*;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import java.util.Properties;
//import java.util.Random;
//
//public class SendEmail {
//
//    public String getRandom() {
//        Random rdm =  new Random();
//        int number = rdm.nextInt(999999);
//        return String.format("%06d", number);
//    }
//
//
//    public boolean SendEmails(UserData user) {
//        boolean test =  false;
//        String toEmail = user.getEmail();
//        String FromEmail = "iradukundakvn8@gmail.com";
//        String Password = "qhlg yacj ggqd nfjj";
//
//        try {
//
//            Properties pr = new Properties();
//            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
//            pr.setProperty("mail.smtp.port", "587");
//            pr.setProperty("mail.smtp.auth", "true");
//            pr.setProperty("mail.smtp.starttls.enable", "true");
//
////           pr.put("mail.smtp.socketFactory.port", "587");
////           pr.put("mail.smtp.socketFactory.class", "jakarta.net.ssl.SSLSocketFactory");
//
////
//            Session session = Session.getInstance(pr, new Authenticator() {
//                @Override
//                protected PasswordAuthentication getPasswordAuthentication() {
//                    return new PasswordAuthentication(FromEmail, Password);
//                }
//            });
//
//
//
//            Message mess = new MimeMessage(session);
//            mess.setFrom(new InternetAddress(FromEmail));
//            mess.setRecipient(Message.RecipientType.TO,  new InternetAddress(toEmail));
//
//
//            mess.setSubject("User Email Subject");
//            mess.setText("Registered Successfully, please verify your account using this code" +user.oode);
//            Transport.send(mess);
//            test = true;
//
//
//
//
//        } catch(Exception err) {
//            err.printStackTrace();
//        }
//
//
//
//
//        return test;
//    }
//
//}


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class SendEmail {

    private static final String FROM_EMAIL = "iradukundakvn8@gmail.com";
    private static final String PASSWORD = "qhlg yacj ggqd nfjj";

    public String getRandom() {
        Random rdm = new Random();
        int number = rdm.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendEmails(UserData user) {
        boolean test = false;
        String toEmail = user.getEmail();

        try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");

            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(FROM_EMAIL, PASSWORD);
                }
            });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(FROM_EMAIL));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("User Email Subject");
            message.setText("Registered Successfully, please verify your account using this code: " + user.getOode());

            Transport.send(message);
            test = true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return test;
    }
}
