package cn.gypeak.peakbackend;

import com.mxixm.fastboot.weixin.annotation.EnableWxMvc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableWxMvc
@SpringBootApplication
public class PeakBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(PeakBackendApplication.class, args);
    }

}
