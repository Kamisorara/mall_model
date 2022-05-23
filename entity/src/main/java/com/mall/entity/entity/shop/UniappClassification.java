package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (shop_uniapp_classification)表实体类
 *
 * @author Kamisora
 * @since 2022-05-23 21:18:27
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_classification")
public class UniappClassification {
    //uniapp分类
    @TableId
    private Long id;
    //商品分类名称
    private String title;
    //商品分类图片地址
    private String picture;

}

