package cn.gypeak.peakbackend.entity;

import lombok.Data;
import java.util.List;

@Data
public class ProblemInfo {

    private String companyName;

    private String address;

    private String country;

    private String contacts;

    private String city;

    private String companyWebsite;

    private String email;

    private String tel;

    private String fax;

    private List<String> problem;

    private String problemDescription;
}
