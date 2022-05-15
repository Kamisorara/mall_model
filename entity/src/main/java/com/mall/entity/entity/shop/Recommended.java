package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "shop_recommended")
public class Recommended {
    @TableId
    private Long id;

    private String shopName;

    private String photoAddr;

    private int price;

    private int mark;

    private int sell;
}
