package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (shop_uniapp_commodities)表实体类
 *
 * @author Kamisora
 * @since 2022-05-23 21:19:05
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_commodities")
public class UniappCommodities {
    //uniapp首页商品id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //标签（官方或非官方）
    private String label;
    //优惠信息
    private String discountNotice;
    //原价
    private Double originalPrice;
    //现价
    private Double price;
    //地址
    private String addr;
    //评价数量
    private Integer mark;
    //出售数量
    private Integer sell;
    //主图片地址
    private String mainPhoto;
    //附图片地址
    private String photo1;
    //卖家id
    private Integer sellerId;
    //商品类型
    private String type;
    //(0不包邮,1包邮)
    private Integer pinkage;
    //商品名称
    private String shopName;

}

