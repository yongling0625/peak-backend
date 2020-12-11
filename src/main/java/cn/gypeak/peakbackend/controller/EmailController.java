package cn.gypeak.peakbackend.controller;

import cn.gypeak.peakbackend.common.response.ApiResponse;
import cn.gypeak.peakbackend.entity.DemandInfo;
import cn.gypeak.peakbackend.entity.ProblemInfo;
import cn.gypeak.peakbackend.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;


@RestController
@RequestMapping("/email")
public class EmailController {

    @Autowired
    private EmailService emailService;

    @Value("${spring.mail.username}")
    private String emailFrom;

    @Value("${toEmail}")
    private String emailTo;

    @PostMapping("/sendProblem")
    public ApiResponse sendProblem(@RequestBody(required = false) ProblemInfo problemInfo) {

        try {
            emailService.sendEmailOfProblem(emailFrom, emailTo, problemInfo);
            System.out.println("邮件发送成功了");
            return ApiResponse.ok("邮件发送成功了");
        } catch (MessagingException e) {
            System.out.println("邮件发送失败了");
            e.printStackTrace();
            return ApiResponse.error("邮件发送失败了");
        }
    }

    @PostMapping("/sendDemand")
    public ApiResponse sendDemand(@RequestBody(required = false) DemandInfo demandInfo) {

        try {
            emailService.sendEmailOfDemand(emailFrom, emailTo, demandInfo);
            System.out.println("邮件发送成功了");
            return ApiResponse.ok("邮件发送成功了");
        } catch (MessagingException e) {
            System.out.println("邮件发送失败了");
            e.printStackTrace();
            return ApiResponse.error("邮件发送失败了");
        }
    }
}
