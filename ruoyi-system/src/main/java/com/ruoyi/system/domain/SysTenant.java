package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 租户信息对象 sys_tenant
 *
 * @author zhangq
 * @date 2023-03-10
 */
public class SysTenant extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 租户ID */
    private Long tenantId;

    /** 父级租户ID */
    @Excel(name = "父级租户ID")
    private Long parentId;

    /** 租户名称 */
    @Excel(name = "租户名称")
    private String tenantName;

    /** 租户昵称 */
    @Excel(name = "租户昵称")
    private String tenantNickname;

    /** 租户类型（00系统租户） */
    private String tenantType;

    /** 租户邮箱 */
    @Excel(name = "租户邮箱")
    private String email;

    /** 手机号码 */
    @Excel(name = "手机号码")
    private String phonenumber;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public void setTenantId(Long tenantId)
    {
        this.tenantId = tenantId;
    }

    public Long getTenantId()
    {
        return tenantId;
    }
    public void setParentId(Long parentId)
    {
        this.parentId = parentId;
    }

    public Long getParentId()
    {
        return parentId;
    }
    public void setTenantName(String tenantName)
    {
        this.tenantName = tenantName;
    }

    public String getTenantName()
    {
        return tenantName;
    }
    public void setTenantNickname(String tenantNickname)
    {
        this.tenantNickname = tenantNickname;
    }

    public String getTenantNickname()
    {
        return tenantNickname;
    }
    public void setTenantType(String tenantType)
    {
        this.tenantType = tenantType;
    }

    public String getTenantType()
    {
        return tenantType;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getEmail()
    {
        return email;
    }
    public void setPhonenumber(String phonenumber)
    {
        this.phonenumber = phonenumber;
    }

    public String getPhonenumber()
    {
        return phonenumber;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }
    public void setDelFlag(String delFlag)
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag()
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("tenantId", getTenantId())
            .append("parentId", getParentId())
            .append("tenantName", getTenantName())
            .append("tenantNickname", getTenantNickname())
            .append("tenantType", getTenantType())
            .append("email", getEmail())
            .append("phonenumber", getPhonenumber())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
