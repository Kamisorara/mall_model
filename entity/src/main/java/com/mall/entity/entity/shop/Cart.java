package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (shop_cart)表实体类
 *
 * @author Kamisora
 * @since 2022-06-08 22:02:05
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_cart")
public class Cart {
    //用户购物车id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    // 商品id
    private Long inventoryId;
    //用户id
    private Long userId;
    //收藏的件数
    private Integer num;
    //商品选中状态
    private Boolean flag;

}

