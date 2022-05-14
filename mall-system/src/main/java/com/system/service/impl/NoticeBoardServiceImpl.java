package com.system.service.impl;


import com.common.entity.resp.ResponseResult;
import com.common.entity.shop.NoticeBoard;
import com.common.mapper.NoticeBoardMapper;
import com.system.service.NoticeBoardService;
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
