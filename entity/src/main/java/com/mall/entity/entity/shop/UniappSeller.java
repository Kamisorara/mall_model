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
 * (UniappSeller)表实体类
 *
 * @author Kamisora
 * @since 2022-06-01 15:32:34
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_seller")
public class UniappSeller {
    //商户id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //商户头像
    private String sellerHead;
    //商户名称
    private String sellerName;
    //商户等级
    private String sellerRank;
    //宝贝描述等级
    private Float mark1;
    //卖家服务等级
    private Float mark2;
    //物流服务等级
    private Float mark3;

}

