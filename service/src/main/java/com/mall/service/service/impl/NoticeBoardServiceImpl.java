package com.mall.service.service.impl;


import com.mall.dao.mapper.NoticeBoardMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.NoticeBoard;
import com.mall.service.service.NoticeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {
    @Autowired
    NoticeBoardMapper noticeBoardMapper;

    @Override
    public ResponseResult getAllNotice() {
        List<NoticeBoard> allNotice = noticeBoardMapper.getAllNotice();
        return new ResponseResult(200, "获取成功", allNotice);
    }
}
