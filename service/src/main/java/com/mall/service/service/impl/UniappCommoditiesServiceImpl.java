package com.mall.service.service.impl;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.dao.mapper.UniappCommoditiesMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UniappCommoditiesServiceImpl implements UniappCommoditiesService {
    //数据访问
    @Autowired
    UniappCommoditiesMapper uniappCommoditiesMapper;

    @Override
    public ResponseResult selectAllCommodities() {
        List<UniappCommodities> uniappCommodities = uniappCommoditiesMapper.selectAll();
        return new ResponseResult(200, "商品信息获取成功", uniappCommodities);
    }

    @Override
    public IPage<UniappCommodities> getPageList(int pageNum, int pageSize) {
        IPage<UniappCommodities> page = new Page<>();
        //当前页数
        page.setCurrent(pageNum);
        //设置每页多少
        page.setSize(pageSize);
        //获取
        return uniappCommoditiesMapper.selectPage(page, null);

    }


}