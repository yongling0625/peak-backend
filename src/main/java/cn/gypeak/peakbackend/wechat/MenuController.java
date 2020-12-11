package cn.gypeak.peakbackend.wechat;

import com.mxixm.fastboot.weixin.annotation.WxButton;
import com.mxixm.fastboot.weixin.annotation.WxController;


@WxController
public class MenuController {
    /**
     * 定义微信菜单
     */
    @WxButton(group = WxButton.Group.LEFT, main = true, name = "企业篇")
    public void left() {
    }

    /**
     * 定义微信菜单
     */
    @WxButton(group = WxButton.Group.MIDDLE, main = true, name = "应用篇")
    public void center() {
    }

    /**
     * 定义微信菜单
     */
    @WxButton(group = WxButton.Group.RIGHT,
            type = WxButton.Type.VIEW,
            main = true,
            url = "http://www.gy-peak.cn/categories",
            name = "微商城")
    public void right() {
    }

    /**
     * 关于广用
     */
    @WxButton(type = WxButton.Type.VIEW,
            group = WxButton.Group.LEFT,
            order = WxButton.Order.FIRST,
            url = "http://www.gy-peak.cn/about",
            name = "关于广用")
    public void about() {
    }

    /**
     * 联系我们
     */
    @WxButton(type = WxButton.Type.VIEW,
            group = WxButton.Group.LEFT,
            order = WxButton.Order.SECOND,
            url = "http://www.gy-peak.cn/contact",
            name = "联系我们")
    public void contact() {
    }

    /**
     * 新闻资讯
     */
    @WxButton(type = WxButton.Type.VIEW,
            group = WxButton.Group.LEFT,
            order = WxButton.Order.THIRD,
            url = "http://www.gy-peak.cn/news",
            name = "新闻资讯")
    public void news() {
    }


    /**
     * 协助选型
     */
    @WxButton(type = WxButton.Type.VIEW,
            group = WxButton.Group.MIDDLE,
            order = WxButton.Order.FIRST,
            url = "http://www.gy-peak.cn/selection",
            name = "协助选型")
    public void selection() {
    }

    /**
     * 资料下载
     */
    @WxButton(type = WxButton.Type.VIEW,
            group = WxButton.Group.MIDDLE,
            order = WxButton.Order.SECOND,
            url = "http://www.gy-peak.cn/download",
            name = "资料下载")
    public void download() {
    }
}
