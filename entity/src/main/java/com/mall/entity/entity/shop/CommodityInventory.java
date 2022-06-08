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
 * (shop_commodity_inventory)表实体类
 *
 * @author Kamisora
 * @since 2022-06-05 21:30:07
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_commodity_inventory")
public class CommodityInventory {
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    //id(对应商品库存)
    private Long id;
    //对应商品型号名称
    private String shopName;
    //对应商品图片地址
    private String shopImg;
    //对应商品价格
    private Double shopPrice;
    //对应商品id
    private Long commodityId;

}

