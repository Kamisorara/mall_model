package com.mall.entity.entity.resp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 用户购物车返回类型
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)//允许链式调用
public class userCart {
    //对应商品型号名称
    private String shopName;
    //对应商品图片地址
    private String shopImg;
    //对应商品价格
    private Double shopPrice;
    //对应收藏了多少件
    private Integer num;
    //商品选中状态
    private Boolean flag;
}
