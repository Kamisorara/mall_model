package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "shop_commodities")
public class Commodities {
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //标签（官方，非官方之类的）
    private String label;

    private String shopName;

    private Double price;
    //优惠说明
    private String discountNotice;

    //地址(从哪儿邮寄到哪儿)
    private String addr;
    //评论数
    private int mark;
    //月销量
    private int sell;

    //主显示照片
    private String mainPhoto;

    //副照片1
    private String photo1;

    //副照片2
    private String photo2;

    //副照片3
    private String photo3;

    //附照片4
    private String photo4;
    //卖家id
    private Long sellerId;

    //商品类别
    private String type;

    //是否包邮(0不包邮,1包邮)
    private int pinkage;
}
