package com.snowski.service;

/**
 * Created by Mykola on 09.06.2017.
 */
public interface MailSenderService {
    void sendMail(String theme, String mailBody, String email);
}
