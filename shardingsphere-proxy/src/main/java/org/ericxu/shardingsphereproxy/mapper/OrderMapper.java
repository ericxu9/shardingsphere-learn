package org.ericxu.shardingsphereproxy.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.ericxu.shardingsphereproxy.entity.Order;
import org.ericxu.shardingsphereproxy.entity.OrderVo;

import java.util.List;

@Mapper
public interface OrderMapper extends BaseMapper<Order> {

    @Select({"SELECT o.order_no, SUM(i.price * i.count) AS amount",
            "FROM t_order o JOIN t_order_item i ON o.order_no = i.order_no",
            "GROUP BY o.order_no"})
    List<OrderVo> getOrderAmount();
}
