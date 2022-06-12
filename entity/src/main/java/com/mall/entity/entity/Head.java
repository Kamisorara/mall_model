package com.mall.entity.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * (sys_head)表实体类
 *
 * @author Kamisora
 * @since 2022-06-12 08:49:09
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "sys_head")
@Accessors(chain = true)
public class Head {
    //用户头像id
    private Long id;
    //用户头像url地址
    private String userHead;
    //用户id
    private Long userId;
    //0启用 1不启用
    private Integer status;

}

