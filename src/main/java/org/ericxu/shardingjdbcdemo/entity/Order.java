package org.ericxu.shardingjdbcdemo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

@TableName("t_order") // 逻辑表名
@Data
public class Order {
    @TableId(type = IdType.AUTO) //有sharding-jdbc分布式序列，优先使用；如果没有则依赖mysql主键策略
//    @TableId(type = IdType.ASSIGN_ID) // 分布式id
    private Long id;
    private String orderNo;
    private Long userId;
    private BigDecimal amount;
}
