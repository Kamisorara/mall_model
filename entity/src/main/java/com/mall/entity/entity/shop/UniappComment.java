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
 * (UniappComment)表实体类
 *
 * @author Kamisora
 * @since 2022-06-01 15:33:51
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_comment")
public class UniappComment {
    //用户评论id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //用户Id
    private Integer userId;
    //用户头像
    private String userHead;
    //用户评论（100字以内）
    private String userComment;
    //用户上床头像1
    private String picutre1;
    //用户上传图片2
    private String picture2;
    //用户上传图片3
    private String picutre3;
    //用户评论对应商品id
    private Long commodityId;
    //用户名
    private String userName;
}

