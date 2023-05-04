package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysTenant;

import java.util.List;

/**
 * 租户信息Service接口
 *
 * @author zhangq
 * @date 2023-03-10
 */
public interface ISysTenantService
{
    /**
     * 查询租户信息
     *
     * @param tenantId 租户信息主键
     * @return 租户信息
     */
    public SysTenant selectSysTenantByTenantId(Long tenantId);

    /**
     * 查询租户信息列表
     *
     * @param sysTenant 租户信息
     * @return 租户信息集合
     */
    public List<SysTenant> selectSysTenantList(SysTenant sysTenant);

    /**
     * 校验用户名称是否唯一
     *
     * @param tenant 用户信息
     * @return 结果
     */
    public boolean checkTenantNameUnique(SysTenant tenant);

    /**
     * 新增租户信息
     *
     * @param sysTenant 租户信息
     * @return 结果
     */
    public int insertSysTenant(SysTenant sysTenant);

    /**
     * 修改租户信息
     *
     * @param sysTenant 租户信息
     * @return 结果
     */
    public int updateSysTenant(SysTenant sysTenant);

    /**
     * 批量删除租户信息
     *
     * @param tenantIds 需要删除的租户信息主键集合
     * @return 结果
     */
    public int deleteSysTenantByTenantIds(Long[] tenantIds);

    /**
     * 删除租户信息信息
     *
     * @param tenantId 租户信息主键
     * @return 结果
     */
    public int deleteSysTenantByTenantId(Long tenantId);
}
