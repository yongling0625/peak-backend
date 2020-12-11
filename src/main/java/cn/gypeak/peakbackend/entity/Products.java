package cn.gypeak.peakbackend.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.util.List;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhuyl
 * @since 2020-05-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Products implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 产品类型
     */
    private Integer category;

    private String categoryName;

    /**
     * 产品名
     */
    private String title;

    /**
     * 产品图片链接
     */
    private String img;

    /**
     * 产品详情
     */
    private String pdf;

    /**
     * 当前类型的所有产品图片
     */
    private String categoryImgs;

    /**
     * 产品描述
     */
    private String depict;

    /**
     * 产品简介
     */
    private String synopsis;

    /**
     * 产品编号
     */
    private String number;

    /**
     * 产品型号
     */
    private String model;

    /**
     * 品牌
     */
    private String brand;

    /**
     * 交货类型（现货、预约、）
     */
    private String deliveryType;

    /**
     * 售后服务
     */
    private String afterSaleService;

    /**
     * 产品特点（图片链接）
     */
    private String productFeatures;

    /**
     * 产品规格（图片链接）
     */
    private String specifications;

    /**
     * 产品尺寸（图片链接）
     */
    private String size;

    @TableField(exist = false)
    private List<Products> products;

    @TableField(exist = false)
    private List<String> categoryImgList;

    @TableField(exist = false)
    private List<String> featuresImgList;

    @TableField(exist = false)
    private List<String> specificationsImgList;

    @TableField(exist = false)
    private List<String> sizeImgList;
}
