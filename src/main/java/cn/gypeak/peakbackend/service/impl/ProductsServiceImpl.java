package cn.gypeak.peakbackend.service.impl;

import cn.gypeak.peakbackend.entity.Products;
import cn.gypeak.peakbackend.mapper.ProductsMapper;
import cn.gypeak.peakbackend.service.ProductsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhuyl
 * @since 2020-03-14
 */
@Service
public class ProductsServiceImpl extends ServiceImpl<ProductsMapper, Products> implements ProductsService {

}
