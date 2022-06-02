package com.mall.entity.entity.shop;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;
/**
 * (UniappQuestion)表实体类
 *
 * @author Kamisora
 * @since 2022-06-01 15:33:08
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value= "shop_uniapp_question")
public class UniappQuestion {
    //评论id
    private Long id;
    //用户昵称
    private String name;
    //用户id
    private Long userId;
    //用户问题
    private String userAsk;

}
