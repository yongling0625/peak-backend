package cn.gypeak.peakbackend.controller;

import cn.gypeak.peakbackend.common.response.ApiResponse;
import cn.gypeak.peakbackend.entity.Products;
import cn.gypeak.peakbackend.service.ProductsService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.toList;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author zhuyl
 * @since 2020-03-02
 */
@RestController
@RequestMapping("/products")
public class ProductsController {

    @Autowired
    private ProductsService productsService;

    @Value("${url}")
    private String url;//http://gy-peak.cn/

    @GetMapping()
    public ApiResponse getProductList(@RequestParam String category,
                                      @RequestParam(defaultValue = "1") Integer page,
                                      @RequestParam(defaultValue = "10") Integer pageSize) {
        Page<Products> productsPage = productsService.page(new Page<>(page, pageSize), new QueryWrapper<Products>().lambda().eq(Products::getCategory, category));
        productsPage.getRecords().forEach(product -> {
            if(Objects.nonNull(product.getImg())){
                product.setImg(url + product.getImg());
            }
            if(Objects.nonNull(product.getPdf())){
                product.setPdf(url + product.getPdf());
            }
        });
        return ApiResponse.ok(productsPage);
    }

    @GetMapping("/{id}")
    public ApiResponse getProductById(@PathVariable String id) {
        Products product = productsService.getById(id);
        if(Objects.nonNull(product.getImg())){
            product.setImg(url + product.getImg());
        }
        if(Objects.nonNull(product.getPdf())){
            product.setPdf(url + product.getPdf());
        }
        //解析放置当前某一类里的轮播图片
        product.setCategoryImgList(splitStr(product.getCategoryImgs()));

        //解析产品特点
        product.setFeaturesImgList(splitStr(product.getProductFeatures()));

        //解析产品规格
        product.setSpecificationsImgList(splitStr(product.getSpecifications()));

        //解析产品尺寸
        product.setSizeImgList(splitStr(product.getSize()));

        return ApiResponse.ok(product);
    }

    @GetMapping("/category")
    public ApiResponse getProductByCategory() {

        List<Products> productsList = productsService.list();

        List<Map<String, Object>> collect = productsList.stream().peek(product -> {
            if(Objects.nonNull(product.getImg())){
                product.setImg(url + product.getImg());
            }
            if(Objects.nonNull(product.getPdf())){
                product.setPdf(url + product.getPdf());
            }
        }).collect(groupingBy(p -> {
            Products products = new Products();
            products.setCategory(p.getCategory());
            products.setCategoryName(p.getCategoryName());
            return products;
        })).entrySet().stream().map(entry -> {
            Products key = entry.getKey();
            Map<String, Object> m = new HashMap<>();
            m.put("category", key.getCategory());
            m.put("categoryName", key.getCategoryName());
            m.put("products", entry.getValue());
            return m;
        }).sorted(Comparator.comparing(en -> Integer.valueOf(en.get("category").toString()))).collect(toList());

        return ApiResponse.ok(collect);
    }

    public List<String> splitStr(String str){
        List<String> imgsList = new ArrayList<>();
        if(Objects.nonNull(str)) {
            String[] imgs = str.split(";");
            for (String img : imgs) {
                imgsList.add(url + img);
            }
        }
        return imgsList;
    }
}
