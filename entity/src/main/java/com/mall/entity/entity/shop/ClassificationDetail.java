package com.mall.entity.entity.shop;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (ClassificationDetail)表实体类
 *
 * @author Kamisora
 * @since 2022-06-04 19:52:03
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_classification_detail")
public class ClassificationDetail {
    //商品分类再分类对应详情id
    private Long id;
    //商品分类再分类对应名称
    private String name;
    //商品分类再分类对应img地址
    private String img;
    //对应总分类id
    private Long classificationId;

}

