package cn.gypeak.peakbackend.entity;

import lombok.Data;
import java.util.List;

@Data
public class DemandInfo {

    /**
     *联系人姓名
     */
    private String contacts;

    /**
     *公司名称
     */
    private String companyName;

    /**
     *商业类型
     */
    private List<String> businessType;

    private String email;

    private String tel;

    private String address;

    /**
     *其他需求
     */
    private List<String> demand;

}
