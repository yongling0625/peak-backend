package cn.gypeak.peakbackend.wechat;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class WxController {

    @GetMapping("/MP_verify_m6wr5ITZt8Q97HML.txt")
    public String getTxt() {
        return "m6wr5ITZt8Q97HML";
    }



}
