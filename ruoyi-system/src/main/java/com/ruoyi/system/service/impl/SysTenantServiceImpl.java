package com.ruoyi.system.service.impl;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysTenant;
import com.ruoyi.system.mapper.SysTenantMapper;
import com.ruoyi.system.service.ISysTenantService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 租户信息Service业务层处理
 *
 * @author zhangq
 * @date 2023-03-10
 */
@Service
public class SysTenantServiceImpl implements ISysTenantService
{
    @Autowired
    private SysTenantMapper sysTenantMapper;
    @Autowired
    private ISysUserService userService;

    /**
     * 查询租户信息
     *
     * @param tenantId 租户信息主键
     * @return 租户信息
     */
    @Override
    public SysTenant selectSysTenantByTenantId(Long tenantId)
    {
        return sysTenantMapper.selectSysTenantByTenantId(tenantId);
    }

    /**
     * 查询租户信息列表
     *
     * @param sysTenant 租户信息
     * @return 租户信息
     */
    @Override
    public List<SysTenant> selectSysTenantList(SysTenant sysTenant)
    {
        if(sysTenant.getTenantId()==null || sysTenant.getTenantId()!=0){
            sysTenant.setTenantId(SecurityUtils.getTenantId());
        }

        return sysTenantMapper.selectSysTenantList(sysTenant);
    }

    /**
     * 校验租户名称是否唯一
     *
     * @param tenant 用户信息
     * @return 结果
     */
    @Override
    public boolean checkTenantNameUnique(SysTenant tenant){
        Long tenantId = StringUtils.isNull(tenant.getTenantId()) ? -1L : tenant.getTenantId();
        SysTenant info = sysTenantMapper.checkTenantNameUnique(tenant.getTenantName());
        if (StringUtils.isNotNull(info) && info.getTenantId().longValue() != tenantId.longValue())
        {
            return UserConstants.NOT_UNIQUE;
        }
        return UserConstants.UNIQUE;
    }

    /**
     * 新增租户信息
     *
     * @param sysTenant 租户信息
     * @return 结果
     */
    @Override
    @Transactional
    public int insertSysTenant(SysTenant sysTenant)
    {
        if(sysTenant.getParentId()==null || sysTenant.getParentId()!=0){
            sysTenant.setParentId(SecurityUtils.getTenantId());
        }
        sysTenant.setCreateTime(DateUtils.getNowDate());
        sysTenantMapper.insertSysTenant(sysTenant);

        SysTenant tenant = sysTenantMapper.checkTenantNameUnique(sysTenant.getTenantName());

        SysUser user = new SysUser();
        user.setUserName(sysTenant.getTenantName());
        user.setNickName(sysTenant.getTenantNickname());
        user.setPhonenumber(sysTenant.getPhonenumber());
        user.setEmail(sysTenant.getEmail());
        user.setTenantId(tenant.getTenantId());
        user.setRoleIds(new Long[]{(long)100}); // 默认角色（租户角色100）
        user.setPassword("111111");             // 默认密码
        user.setUserType("00");                 // 默认用户类型（00-系统用户）
        user.setCreateBy(SecurityUtils.getUsername());
        user.setPassword(SecurityUtils.encryptPassword(user.getPassword()));

        return userService.insertUser(user);
    }

    /**
     * 修改租户信息
     *
     * @param sysTenant 租户信息
     * @return 结果
     */
    @Override
    public int updateSysTenant(SysTenant sysTenant)
    {
        sysTenant.setUpdateTime(DateUtils.getNowDate());
        return sysTenantMapper.updateSysTenant(sysTenant);
    }

    /**
     * 批量删除租户信息
     *
     * @param tenantIds 需要删除的租户信息主键
     * @return 结果
     */
    @Override
    public int deleteSysTenantByTenantIds(Long[] tenantIds)
    {
        return sysTenantMapper.deleteSysTenantByTenantIds(tenantIds);
    }

    /**
     * 删除租户信息信息
     *
     * @param tenantId 租户信息主键
     * @return 结果
     */
    @Override
    public int deleteSysTenantByTenantId(Long tenantId)
    {
        return sysTenantMapper.deleteSysTenantByTenantId(tenantId);
    }
}
