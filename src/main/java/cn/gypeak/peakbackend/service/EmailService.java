package cn.gypeak.peakbackend.service;


import cn.gypeak.peakbackend.entity.DemandInfo;
import cn.gypeak.peakbackend.entity.ProblemInfo;
import javax.mail.MessagingException;

public interface EmailService {

    void sendEmailOfProblem(String emailFrom, String emailTo, ProblemInfo problemInfo) throws MessagingException;

    void sendEmailOfDemand(String emailFrom, String emailTo, DemandInfo demandInfo) throws MessagingException;
}
