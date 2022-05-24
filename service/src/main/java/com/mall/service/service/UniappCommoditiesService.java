package com.mall.service.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;

import java.util.List;

public interface UniappCommoditiesService {

    ResponseResult selectAllCommodities();

    IPage<UniappCommodities> getPageList(int pageNum, int pageSize);
}
