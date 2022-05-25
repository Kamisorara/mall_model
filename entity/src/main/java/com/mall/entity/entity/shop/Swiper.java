package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 首页轮播图地址
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_swiper")
public class Swiper {
    @TableId
    private Long id;

    private String picture;

}
