package com.mall.entity.entity.shop;


import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * (Seller)表实体类
 *
 * @author Kamisora
 * @since 2022-05-15 13:19:29
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_seller")
public class Seller {
    //卖家店铺id
    @TableId
    private Long id;
    //卖家店铺名称
    private String sellerName;
    //描述分
    private Double sellerMark1;
    //服务分
    private Double sellerMark2;
    //物流分
    private Double sellerMark3;
}
