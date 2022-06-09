package com.mall.service.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.dao.mapper.UniappCommoditiesMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.CommodityInventory;
import com.mall.entity.entity.shop.UniappComment;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.entity.entity.shop.UniappQuestion;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class UniappCommoditiesServiceImpl implements UniappCommoditiesService {
    //数据访问
    @Autowired
    UniappCommoditiesMapper uniappCommoditiesMapper;

    /**
     * 获取所有商品列表(不推荐使用，将来考虑删除)
     *
     * @return
     */
    @Override
    public ResponseResult selectAllCommodities() {
        List<UniappCommodities> uniappCommodities = uniappCommoditiesMapper.selectAll();
        //随机打算商品顺序
        Collections.shuffle(uniappCommodities);
        return new ResponseResult(200, "商品信息获取成功", uniappCommodities);
    }


    /**
     * 分页获取商品列表
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
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

    /**
     * 根据id获取商品详情
     *
     * @param id
     * @return
     */
    @Override
    public UniappCommodities getCommodityDetail(Integer id) {
        return uniappCommoditiesMapper.selectCommodityById(id);
    }

    /**
     * 根据商品 id获取用户评论信息
     *
     * @param id
     * @return
     */
    @Override
    public List<UniappComment> getCommentByCommodityId(Integer id) {
        List<UniappComment> uniappComments = uniappCommoditiesMapper.selectCommentDetailByCommodityId(id);
        return uniappComments;
    }

    /**
     * 根据商品id 获取对应商品图片
     *
     * @param id
     * @return
     */
    @Override
    public List<String> getCommodityPictureById(Integer id) {
        return uniappCommoditiesMapper.selectCommodityPicture(id);
    }

    /**
     * 根据商品id 获取用户询问信息
     *
     * @param id
     * @return
     */
    @Override
    public List<UniappQuestion> getUserAskById(Integer id) {
        List<UniappQuestion> uniappQuestions = uniappCommoditiesMapper.selectUserAskById(id);
        return uniappQuestions;
    }


    /**
     * 根据商品id获取对应库存信息
     *
     * @param id
     * @return
     */
    @Override
    public List<CommodityInventory> getCommodityInventoryById(Integer id) {
        List<CommodityInventory> commodityInventories = uniappCommoditiesMapper.selectInventoryById(id);
        return commodityInventories;
    }

    /**
     * 根据商品type获取商品信息
     *
     * @param type
     * @return
     */
    @Override
    public List<UniappCommodities> getCommodityByType(String type) {
        List<UniappCommodities> commodities = uniappCommoditiesMapper.selectCommodityByType(type);
        //随机打乱顺序
        Collections.shuffle(commodities);
        return commodities;
    }

    /**
     * 根据商品type获取商品信息
     *
     * @param type
     * @return
     */
    @Override
    public List<UniappCommodities> getCommodityByTypeLimitedTen(String type) {
        List<UniappCommodities> commodities = uniappCommoditiesMapper.selectCommodityByTypeLimitedTen(type);
        //随机打乱顺序
        Collections.shuffle(commodities);
        return commodities;
    }

    /**
     * 根据商品type分页获取商品列表
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public IPage<UniappCommodities> getCommodityByTypePages(String type, int pageNum, int pageSize) {
        QueryWrapper<UniappCommodities> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("type", type);
        Page<UniappCommodities> page = new Page<>();
        //当前页数
        page.setCurrent(pageNum);
        //设置每页多少
        page.setSize(pageSize);
        return uniappCommoditiesMapper.selectPage(page, queryWrapper);
    }

    /**
     * 后台系统操作-插入商品
     *
     * @param commodities
     * @return
     */
    @Override
    public boolean insertCommodity(UniappCommodities commodities) {
        int insert = uniappCommoditiesMapper.insert(commodities);
        return insert > 0;
    }

}
