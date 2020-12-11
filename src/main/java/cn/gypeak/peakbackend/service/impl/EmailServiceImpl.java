package cn.gypeak.peakbackend.service.impl;

import cn.gypeak.peakbackend.entity.DemandInfo;
import cn.gypeak.peakbackend.entity.ProblemInfo;
import cn.gypeak.peakbackend.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.List;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private JavaMailSender mailSender;


    public void sendEmailOfProblem(String emailFrom, String emailTo, ProblemInfo problemInfo) throws MessagingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage);
        messageHelper.setSubject("联系我们");
        messageHelper.setFrom(emailFrom);
        messageHelper.setTo(emailTo);
        messageHelper.setText("<h3>联系我们</h3>"
                            + "公司名称：" + problemInfo.getCompanyName()
                            + "<br/>公司地址：" + problemInfo.getAddress()
                            + "<br/>联系人：" + problemInfo.getContacts()
                            + "<br/>城市：" + problemInfo.getCity() + "&nbsp;&nbsp;&nbsp;&nbsp;国家：" + problemInfo.getCountry()
                            + "<br/>公司网页：" + problemInfo.getCompanyWebsite() + "&nbsp;&nbsp;&nbsp;&nbsp;Email：" + problemInfo.getEmail()
                            + "<br/>公司电话：" + problemInfo.getTel() + "&nbsp;&nbsp;&nbsp;&nbsp;公司传真：" + problemInfo.getFax()
                            + "<br/>有关问题：" + listToString(problemInfo.getProblem())
                            + "<br/>问题描述：" + problemInfo.getProblemDescription(), true);
        mailSender.send(messageHelper.getMimeMessage());
    }

    @Override
    public void sendEmailOfDemand(String emailFrom, String emailTo, DemandInfo demandInfo) throws MessagingException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage);
        messageHelper.setSubject("客户需求");
        messageHelper.setFrom(emailFrom);
        messageHelper.setTo(emailTo);
        messageHelper.setText("<h3>客户需求</h3>"
                + "联系人姓名：" + demandInfo.getContacts()
                + "<br/>公司名称：" + demandInfo.getCompanyName()
                + "<br/>商业类型：" + listToString(demandInfo.getBusinessType())
                + "<br/>Email：" + demandInfo.getEmail()
                + "<br/>手机：" + demandInfo.getTel()
                + "<br/>地址：" + demandInfo.getAddress()
                + "<br/>其他需求：" + listToString(demandInfo.getDemand()), true);
        mailSender.send(messageHelper.getMimeMessage());
    }

    private String listToString(List<String> strList){
        String str = "";
        for (int i = 0; i < strList.size(); i++){
            if(i == strList.size() - 1){
                str += strList.get(i);
            }else{
                str += strList.get(i) + "/";
            }
        }
        return str;
    }

}
