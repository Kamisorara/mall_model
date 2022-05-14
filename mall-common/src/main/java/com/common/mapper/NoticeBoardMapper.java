package com.common.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.common.entity.shop.NoticeBoard;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeBoardMapper extends BaseMapper<NoticeBoard> {

    List<NoticeBoard> getAllNotice();
}
