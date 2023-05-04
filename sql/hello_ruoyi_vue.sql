-- --------------------------------------------------------
-- 主机:                           8.129.13.162
-- 服务器版本:                        5.7.37-log - Source distribution
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 导出  表 hello_ruoyi_vue.gen_table 结构
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- 正在导出表  hello_ruoyi_vue.gen_table 的数据：~1 rows (大约)
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'sys_tenant', '租户信息表', NULL, NULL, 'SysTenant', 'crud', 'com.ruoyi.system', 'system', 'tenant', '租户信息', 'zhangq', '0', '/', '{"parentMenuId":1}', 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:53', NULL);

-- 导出  表 hello_ruoyi_vue.gen_table_column 结构
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- 正在导出表  hello_ruoyi_vue.gen_table_column 的数据：~14 rows (大约)
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(1, '1', 'tenant_id', '租户ID', 'bigint(20)', 'Long', 'tenantId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(2, '1', 'parent_id', '父级租户ID', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(3, '1', 'tenant_name', '租户名称', 'varchar(250)', 'String', 'tenantName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(4, '1', 'tenant_nickname', '租户昵称', 'varchar(50)', 'String', 'tenantNickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(5, '1', 'tenant_type', '租户类型（00系统租户）', 'varchar(2)', 'String', 'tenantType', '0', '0', NULL, '1', '0', '0', '0', 'EQ', 'select', '', 5, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(6, '1', 'email', '租户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(7, '1', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(8, '1', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(9, '1', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(10, '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(11, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(12, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(13, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54'),
	(14, '1', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '0', NULL, 'EQ', 'textarea', '', 14, 'admin', '2023-03-10 10:04:57', '', '2023-03-10 10:10:54');

-- 导出  表 hello_ruoyi_vue.QRTZ_BLOB_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_BLOB_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_CALENDARS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_CALENDARS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_CRON_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_CRON_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_FIRED_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_FIRED_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_JOB_DETAILS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_JOB_DETAILS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_LOCKS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_LOCKS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_PAUSED_TRIGGER_GRPS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_PAUSED_TRIGGER_GRPS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_SCHEDULER_STATE 结构
CREATE TABLE IF NOT EXISTS `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_SCHEDULER_STATE 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_SIMPLE_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_SIMPLE_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_SIMPROP_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_SIMPROP_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.QRTZ_TRIGGERS 结构
CREATE TABLE IF NOT EXISTS `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

-- 正在导出表  hello_ruoyi_vue.QRTZ_TRIGGERS 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.sys_config 结构
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- 正在导出表  hello_ruoyi_vue.sys_config 的数据：~6 rows (大约)
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '初始化密码 123456'),
	(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '深色主题theme-dark，浅色主题theme-light'),
	(4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '是否开启验证码功能（true开启，false关闭）'),
	(5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）'),
	(6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-03-09 15:18:50', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- 导出  表 hello_ruoyi_vue.sys_dept 结构
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `tenant_id` bigint(20) DEFAULT '0' COMMENT '租户ID',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- 正在导出表  hello_ruoyi_vue.sys_dept 的数据：~10 rows (大约)
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `tenant_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(100, 0, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(101, 100, 0, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(102, 100, 0, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(103, 101, 0, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(104, 101, 0, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(105, 101, 0, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:43', '', NULL),
	(106, 101, 0, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:44', '', NULL),
	(107, 101, 0, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:44', '', NULL),
	(108, 102, 0, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:44', '', NULL),
	(109, 102, 0, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-09 15:18:44', '', NULL);

-- 导出  表 hello_ruoyi_vue.sys_dict_data 结构
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- 正在导出表  hello_ruoyi_vue.sys_dict_data 的数据：~29 rows (大约)
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '性别男'),
	(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '性别女'),
	(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '性别未知'),
	(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '显示菜单'),
	(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '隐藏菜单'),
	(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '正常状态'),
	(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '停用状态'),
	(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '正常状态'),
	(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '停用状态'),
	(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '默认分组'),
	(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '系统分组'),
	(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '系统默认是'),
	(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '系统默认否'),
	(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '通知'),
	(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '公告'),
	(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '正常状态'),
	(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '关闭状态'),
	(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '其他操作'),
	(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '新增操作'),
	(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '修改操作'),
	(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '删除操作'),
	(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '授权操作'),
	(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '导出操作'),
	(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '导入操作'),
	(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '强退操作'),
	(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '生成操作'),
	(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '清空操作'),
	(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '正常状态'),
	(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-09 15:18:50', '', NULL, '停用状态');

-- 导出  表 hello_ruoyi_vue.sys_dict_type 结构
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- 正在导出表  hello_ruoyi_vue.sys_dict_type 的数据：~10 rows (大约)
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '用户性别列表'),
	(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '菜单状态列表'),
	(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '系统开关列表'),
	(4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '任务状态列表'),
	(5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '任务分组列表'),
	(6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '系统是否列表'),
	(7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '通知类型列表'),
	(8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '通知状态列表'),
	(9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '操作类型列表'),
	(10, '系统状态', 'sys_common_status', '0', 'admin', '2023-03-09 15:18:49', '', NULL, '登录状态列表');

-- 导出  表 hello_ruoyi_vue.sys_job 结构
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- 正在导出表  hello_ruoyi_vue.sys_job 的数据：~3 rows (大约)
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-03-09 15:18:50', '', NULL, ''),
	(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-09 15:18:50', '', NULL, ''),
	(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-09 15:18:50', '', NULL, '');

-- 导出  表 hello_ruoyi_vue.sys_job_log 结构
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- 正在导出表  hello_ruoyi_vue.sys_job_log 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.sys_logininfor 结构
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- 正在导出表  hello_ruoyi_vue.sys_logininfor 的数据：~26 rows (大约)
INSERT INTO `sys_logininfor` (`info_id`, `tenant_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES
	(100, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 15:19:45'),
	(101, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 16:22:31'),
	(102, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-09 16:36:45'),
	(103, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 16:36:51'),
	(104, 0, 'admin', '172.29.24.101', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 16:42:22'),
	(105, 0, 'admin', '172.29.24.101', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-09 16:43:49'),
	(106, 0, 'admin', '172.29.24.101', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 16:44:04'),
	(107, 0, 'admin', '172.29.24.101', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 16:52:11'),
	(108, 0, 'admin', '172.29.24.124', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 18:21:29'),
	(109, 0, 'admin', '172.29.24.124', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 18:24:04'),
	(110, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 18:30:14'),
	(111, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-09 18:37:42'),
	(112, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 18:37:55'),
	(113, 0, 'admin', '172.29.24.101', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 19:57:19'),
	(114, 0, 'admin', '172.29.24.125', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-09 21:31:47'),
	(115, 0, 'admin', '172.29.24.123', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-09 21:44:24'),
	(116, 0, 'admin', '172.29.24.123', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-10 08:57:10'),
	(117, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2023-03-10 09:02:14'),
	(118, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-10 09:02:17'),
	(119, 0, 'admin', '172.29.24.123', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-10 09:21:42'),
	(120, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-10 09:33:11'),
	(121, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-10 09:50:02'),
	(122, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-10 09:50:09'),
	(123, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-10 09:50:14'),
	(124, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2023-03-10 09:50:24'),
	(125, 0, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-03-10 09:51:13');

-- 导出  表 hello_ruoyi_vue.sys_menu 结构
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- 正在导出表  hello_ruoyi_vue.sys_menu 的数据：~97 rows (大约)
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-03-09 15:18:44', '', NULL, '系统管理目录'),
	(2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-03-09 15:18:44', '', NULL, '系统监控目录'),
	(3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-03-09 15:18:44', 'admin', '2023-03-10 09:22:32', '系统工具目录'),
	(4, '物联中心测试', 0, 4, 'http://localhost', NULL, '', 1, 0, 'M', '0', '0', '', 'guide', 'admin', '2023-03-09 15:18:44', 'admin', '2023-03-10 09:08:25', '官网地址'),
	(100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-03-09 15:18:44', '', NULL, '用户管理菜单'),
	(101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-03-09 15:18:44', '', NULL, '角色管理菜单'),
	(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-03-09 15:18:44', '', NULL, '菜单管理菜单'),
	(103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-03-09 15:18:44', '', NULL, '部门管理菜单'),
	(104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-03-09 15:18:44', '', NULL, '岗位管理菜单'),
	(105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-03-09 15:18:44', '', NULL, '字典管理菜单'),
	(106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-03-09 15:18:44', '', NULL, '参数设置菜单'),
	(107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-03-09 15:18:45', '', NULL, '通知公告菜单'),
	(108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-03-09 15:18:45', '', NULL, '日志管理菜单'),
	(109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-03-09 15:18:45', '', NULL, '在线用户菜单'),
	(110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-03-09 15:18:45', '', NULL, '定时任务菜单'),
	(111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-03-09 15:18:45', '', NULL, '数据监控菜单'),
	(112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-03-09 15:18:45', '', NULL, '服务监控菜单'),
	(113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-03-09 15:18:45', '', NULL, '缓存监控菜单'),
	(114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-03-09 15:18:45', '', NULL, '缓存列表菜单'),
	(115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-03-09 15:18:45', '', NULL, '表单构建菜单'),
	(116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-03-09 15:18:45', '', NULL, '代码生成菜单'),
	(117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-03-09 15:18:45', '', NULL, '系统接口菜单'),
	(500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-03-09 15:18:45', '', NULL, '操作日志菜单'),
	(501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-03-09 15:18:45', '', NULL, '登录日志菜单'),
	(1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-03-09 15:18:45', '', NULL, ''),
	(1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-03-09 15:18:46', '', NULL, ''),
	(1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-03-09 15:18:47', '', NULL, ''),
	(1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-03-09 15:18:47', '', NULL, ''),
	(1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-03-09 15:18:47', '', NULL, ''),
	(1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-03-09 15:18:47', '', NULL, ''),
	(2001, '项目配置', 0, 5, 'project_setting', NULL, NULL, 1, 0, 'M', '0', '0', '', 'build', 'admin', '2023-03-10 09:14:49', 'admin', '2023-03-10 09:18:51', ''),
	(2002, '设备管理', 0, 6, 'device_manage', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'online', 'admin', '2023-03-10 09:16:17', '', NULL, ''),
	(2003, '工单管理', 0, 7, 'work_order', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'list', 'admin', '2023-03-10 09:17:13', '', NULL, ''),
	(2004, 'IBMS', 0, 8, 'ibms', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'cascader', 'admin', '2023-03-10 09:17:39', '', NULL, ''),
	(2005, '可视化', 0, 8, 'visualization', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'chart', 'admin', '2023-03-10 09:18:40', '', NULL, ''),
	(2006, '消息服务', 0, 4, 'message_service', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'email', 'admin', '2023-03-10 09:20:07', '', NULL, ''),
	(2007, '租户信息', 1, 1, 'tenant', 'system/tenant/index', NULL, 1, 0, 'C', '0', '0', 'system:tenant:list', 'star', 'admin', '2023-03-10 10:13:14', 'admin', '2023-03-10 10:18:54', '租户信息菜单'),
	(2008, '租户信息查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:tenant:query', '#', 'admin', '2023-03-10 10:13:14', '', NULL, ''),
	(2009, '租户信息新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:tenant:add', '#', 'admin', '2023-03-10 10:13:14', '', NULL, ''),
	(2010, '租户信息修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:tenant:edit', '#', 'admin', '2023-03-10 10:13:14', '', NULL, ''),
	(2011, '租户信息删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:tenant:remove', '#', 'admin', '2023-03-10 10:13:14', '', NULL, ''),
	(2012, '租户信息导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:tenant:export', '#', 'admin', '2023-03-10 10:13:14', '', NULL, '');

-- 导出  表 hello_ruoyi_vue.sys_notice 结构
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- 正在导出表  hello_ruoyi_vue.sys_notice 的数据：~2 rows (大约)
INSERT INTO `sys_notice` (`notice_id`, `tenant_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 0, '温馨提醒：2018-07-01 若依新版本发布啦', '2', _binary 0xe696b0e78988e69cace58685e5aeb9, '0', 'admin', '2023-03-09 15:18:50', '', NULL, '管理员'),
	(2, 0, '维护通知：2018-07-01 若依系统凌晨维护', '1', _binary 0xe7bbb4e68aa4e58685e5aeb9, '0', 'admin', '2023-03-09 15:18:50', '', NULL, '管理员');

-- 导出  表 hello_ruoyi_vue.sys_oper_log 结构
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- 正在导出表  hello_ruoyi_vue.sys_oper_log 的数据：~22 rows (大约)
INSERT INTO `sys_oper_log` (`oper_id`, `tenant_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES
	(100, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '172.29.24.101', '内网IP', '{"children":[],"createTime":"2023-03-09 15:18:44","icon":"guide","isCache":"0","isFrame":"1","menuId":4,"menuName":"若依官网","menuType":"M","orderNum":4,"params":{},"parentId":0,"path":"http://localhost","perms":"","query":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-09 16:42:51', 113),
	(101, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","isCache":"0","isFrame":"1","menuName":"demo","menuType":"M","orderNum":5,"params":{},"parentId":0,"path":"http://127.0.0.1:81/iot-ibms/table","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-09 18:31:38', 60),
	(102, 0, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:08:02', 47),
	(103, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-03-09 15:18:44","icon":"guide","isCache":"0","isFrame":"1","menuId":4,"menuName":"物联中心测试","menuType":"M","orderNum":4,"params":{},"parentId":0,"path":"http://localhost","perms":"","query":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:08:25', 33),
	(104, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-03-09 15:18:44","icon":"tool","isCache":"0","isFrame":"1","menuId":3,"menuName":"系统工具","menuType":"M","orderNum":3,"params":{},"parentId":0,"path":"tool","perms":"","query":"","status":"0","updateBy":"admin","visible":"1"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:11:49', 118),
	(105, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"build","isCache":"0","isFrame":"1","menuName":"项目配置","menuType":"M","orderNum":4,"params":{},"parentId":0,"path":"project_setting","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:14:49', 46),
	(106, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"online","isCache":"0","isFrame":"1","menuName":"设备管理","menuType":"M","orderNum":6,"params":{},"parentId":0,"path":"device_manage","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:16:17', 41),
	(107, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"list","isCache":"0","isFrame":"1","menuName":"工单管理","menuType":"M","orderNum":7,"params":{},"parentId":0,"path":"work_order","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:17:13', 28),
	(108, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"cascader","isCache":"0","isFrame":"1","menuName":"IBMS","menuType":"M","orderNum":8,"params":{},"parentId":0,"path":"ibms","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:17:39', 27),
	(109, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"chart","isCache":"0","isFrame":"1","menuName":"可视化","menuType":"M","orderNum":8,"params":{},"parentId":0,"path":"visualization","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:18:40', 24),
	(110, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-03-10 09:14:49","icon":"build","isCache":"0","isFrame":"1","menuId":2001,"menuName":"项目配置","menuType":"M","orderNum":5,"params":{},"parentId":0,"path":"project_setting","perms":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:18:51', 25),
	(111, 0, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"email","isCache":"0","isFrame":"1","menuName":"消息服务","menuType":"M","orderNum":4,"params":{},"parentId":0,"path":"message_service","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:20:07', 36),
	(112, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-03-09 15:18:44","icon":"tool","isCache":"0","isFrame":"1","menuId":3,"menuName":"系统工具","menuType":"M","orderNum":3,"params":{},"parentId":0,"path":"tool","perms":"","query":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 09:22:32', 26),
	(113, 0, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":"sys_tenant"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:04:57', 299),
	(114, 0, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"tenant","className":"SysTenant","columns":[{"capJavaField":"TenantId","columnComment":"租户ID","columnId":1,"columnName":"tenant_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":false,"htmlType":"input","increment":false,"insert":true,"isIncrement":"0","isInsert":"1","isPk":"1","javaField":"tenantId","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":1,"updateBy":"","usableColumn":false},{"capJavaField":"ParentId","columnComment":"父级租户ID","columnId":2,"columnName":"parent_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","javaField":"parentId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":true,"tableId":1,"updateBy":"","usableColumn":true},{"capJavaField":"TenantName","columnComment":"租户名称","columnId":3,"columnName":"tenant_name","columnType":"varchar(250)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"1","javaField":"tenantName","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":true,"sort":3,"superColumn":false,"tableId":1,"updateBy":"","usableColumn":false},{"capJavaField":"TenantNickname","columnComment":"租户昵称","columnId":4,"columnName":"tenant_nickname","columnType":"varchar(50)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"1","jav', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:06:43', 371),
	(115, 0, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"tenant","className":"SysTenant","columns":[{"capJavaField":"TenantId","columnComment":"租户ID","columnId":1,"columnName":"tenant_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":false,"htmlType":"input","increment":false,"insert":true,"isIncrement":"0","isInsert":"1","isPk":"1","javaField":"tenantId","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:06:43","usableColumn":false},{"capJavaField":"ParentId","columnComment":"父级租户ID","columnId":2,"columnName":"parent_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","javaField":"parentId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":true,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:06:43","usableColumn":true},{"capJavaField":"TenantName","columnComment":"租户名称","columnId":3,"columnName":"tenant_name","columnType":"varchar(250)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"1","javaField":"tenantName","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":true,"sort":3,"superColumn":false,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:06:43","usableColumn":false},{"capJavaField":"TenantNickname","columnComment":"租户昵称","columnId":4,"columnName":"tenant_nickname","columnType":"varchar(50)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:10:16', 253),
	(116, 0, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"tenant","className":"SysTenant","columns":[{"capJavaField":"TenantId","columnComment":"租户ID","columnId":1,"columnName":"tenant_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":false,"htmlType":"input","increment":false,"insert":true,"isIncrement":"0","isInsert":"1","isPk":"1","javaField":"tenantId","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:10:16","usableColumn":false},{"capJavaField":"ParentId","columnComment":"父级租户ID","columnId":2,"columnName":"parent_id","columnType":"bigint(20)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","javaField":"parentId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":true,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:10:16","usableColumn":true},{"capJavaField":"TenantName","columnComment":"租户名称","columnId":3,"columnName":"tenant_name","columnType":"varchar(250)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"1","javaField":"tenantName","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":true,"sort":3,"superColumn":false,"tableId":1,"updateBy":"","updateTime":"2023-03-10 10:10:16","usableColumn":false},{"capJavaField":"TenantNickname","columnComment":"租户昵称","columnId":4,"columnName":"tenant_nickname","columnType":"varchar(50)","createBy":"admin","createTime":"2023-03-10 10:04:57","dictType":"","edit":true,"htmlType":"input","increment":false,"insert":true,', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:10:54', 274),
	(117, 0, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"sys_tenant"}', NULL, 0, NULL, '2023-03-10 10:11:59', 97),
	(118, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"component":"system/tenant/index","createTime":"2023-03-10 10:13:14","icon":"user","isCache":"0","isFrame":"1","menuId":2007,"menuName":"租户信息","menuType":"C","orderNum":1,"params":{},"parentId":1,"path":"tenant","perms":"system:tenant:list","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:17:53', 49),
	(119, 0, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"component":"system/tenant/index","createTime":"2023-03-10 10:13:14","icon":"star","isCache":"0","isFrame":"1","menuId":2007,"menuName":"租户信息","menuType":"C","orderNum":1,"params":{},"parentId":1,"path":"tenant","perms":"system:tenant:list","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:18:54', 36),
	(120, 0, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{"admin":false,"createBy":"admin","deptCheckStrictly":true,"deptIds":[],"flag":false,"menuCheckStrictly":true,"menuIds":[1,102,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,1012,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,109,1046,1047,1048,4,2006,2001,2002,2003,2004,2005],"params":{},"roleId":100,"roleKey":"tenant","roleName":"租户角色","roleSort":1,"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:20:34', 119),
	(121, 0, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{"admin":false,"createTime":"2023-03-09 15:18:44","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[1,100,101,102,103,104,107,108,500,501,2,109,110,1000,1007,1012,1016,1020,1035,1039,1042,1046,1049,4,2006,2001,2002,2003,2004,2005],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-03-10 10:23:25', 128);

-- 导出  表 hello_ruoyi_vue.sys_post 结构
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- 正在导出表  hello_ruoyi_vue.sys_post 的数据：~4 rows (大约)
INSERT INTO `sys_post` (`post_id`, `tenant_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 0, 'ceo', '董事长', 1, '0', 'admin', '2023-03-09 15:18:44', '', NULL, ''),
	(2, 0, 'se', '项目经理', 2, '0', 'admin', '2023-03-09 15:18:44', '', NULL, ''),
	(3, 0, 'hr', '人力资源', 3, '0', 'admin', '2023-03-09 15:18:44', '', NULL, ''),
	(4, 0, 'user', '普通员工', 4, '0', 'admin', '2023-03-09 15:18:44', '', NULL, '');

-- 导出  表 hello_ruoyi_vue.sys_role 结构
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- 正在导出表  hello_ruoyi_vue.sys_role 的数据：~3 rows (大约)
INSERT INTO `sys_role` (`role_id`, `tenant_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 0, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-03-09 15:18:44', '', NULL, '超级管理员'),
	(2, 0, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-03-09 15:18:44', 'admin', '2023-03-10 10:23:25', '普通角色'),
	(100, 0, '租户角色', 'tenant', 1, '1', 1, 1, '0', '0', 'admin', '2023-03-10 10:20:34', '', NULL, NULL);

-- 导出  表 hello_ruoyi_vue.sys_role_dept 结构
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- 正在导出表  hello_ruoyi_vue.sys_role_dept 的数据：~3 rows (大约)
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
	(2, 100),
	(2, 101),
	(2, 105);

-- 导出  表 hello_ruoyi_vue.sys_role_menu 结构
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- 正在导出表  hello_ruoyi_vue.sys_role_menu 的数据：~85 rows (大约)
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 4),
	(2, 100),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 107),
	(2, 108),
	(2, 109),
	(2, 110),
	(2, 500),
	(2, 501),
	(2, 1000),
	(2, 1007),
	(2, 1012),
	(2, 1016),
	(2, 1020),
	(2, 1035),
	(2, 1039),
	(2, 1042),
	(2, 1046),
	(2, 1049),
	(2, 2001),
	(2, 2002),
	(2, 2003),
	(2, 2004),
	(2, 2005),
	(2, 2006),
	(100, 1),
	(100, 2),
	(100, 4),
	(100, 100),
	(100, 101),
	(100, 102),
	(100, 103),
	(100, 104),
	(100, 107),
	(100, 108),
	(100, 109),
	(100, 500),
	(100, 501),
	(100, 1000),
	(100, 1001),
	(100, 1002),
	(100, 1003),
	(100, 1004),
	(100, 1005),
	(100, 1006),
	(100, 1007),
	(100, 1008),
	(100, 1009),
	(100, 1010),
	(100, 1011),
	(100, 1012),
	(100, 1016),
	(100, 1017),
	(100, 1018),
	(100, 1019),
	(100, 1020),
	(100, 1021),
	(100, 1022),
	(100, 1023),
	(100, 1024),
	(100, 1035),
	(100, 1036),
	(100, 1037),
	(100, 1038),
	(100, 1039),
	(100, 1040),
	(100, 1041),
	(100, 1042),
	(100, 1043),
	(100, 1044),
	(100, 1045),
	(100, 1046),
	(100, 1047),
	(100, 1048),
	(100, 2001),
	(100, 2002),
	(100, 2003),
	(100, 2004),
	(100, 2005),
	(100, 2006);

-- 导出  表 hello_ruoyi_vue.sys_tenant 结构
CREATE TABLE IF NOT EXISTS `sys_tenant` (
  `tenant_id` bigint(20) NOT NULL COMMENT '租户ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级租户ID',
  `tenant_name` varchar(250) NOT NULL COMMENT '租户名称',
  `tenant_nickname` varchar(50) NOT NULL COMMENT '租户昵称',
  `tenant_type` varchar(2) DEFAULT '00' COMMENT '租户类型（00系统租户）',
  `email` varchar(50) DEFAULT NULL COMMENT '租户邮箱',
  `phonenumber` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户信息表';

-- 正在导出表  hello_ruoyi_vue.sys_tenant 的数据：~0 rows (大约)

-- 导出  表 hello_ruoyi_vue.sys_user 结构
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- 正在导出表  hello_ruoyi_vue.sys_user 的数据：~2 rows (大约)
INSERT INTO `sys_user` (`user_id`, `tenant_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 0, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-03-10 09:51:16', 'admin', '2023-03-09 15:18:44', '', '2023-03-10 09:51:13', '管理员'),
	(2, 0, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-03-09 15:18:44', 'admin', '2023-03-09 15:18:44', '', NULL, '测试员');

-- 导出  表 hello_ruoyi_vue.sys_user_post 结构
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- 正在导出表  hello_ruoyi_vue.sys_user_post 的数据：~2 rows (大约)
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
	(1, 1),
	(2, 2);

-- 导出  表 hello_ruoyi_vue.sys_user_role 结构
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- 正在导出表  hello_ruoyi_vue.sys_user_role 的数据：~2 rows (大约)
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
