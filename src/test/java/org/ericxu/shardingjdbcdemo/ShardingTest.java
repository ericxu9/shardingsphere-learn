package org.ericxu.shardingjdbcdemo;

import org.ericxu.shardingjdbcdemo.entity.Order;
import org.ericxu.shardingjdbcdemo.entity.User;
import org.ericxu.shardingjdbcdemo.mapper.OrderMapper;
import org.ericxu.shardingjdbcdemo.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;

@SpringBootTest
public class ShardingTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    /**
     * 垂直分片：插入数据测试
     */
    @Test
    public void testInsertOrderAndUser(){
        // ds1
        User user = new User();
        user.setUname("admin");
        userMapper.insert(user);

        // ds2
        Order order = new Order();
        order.setOrderNo("SN4676876434");
        order.setUserId(user.getId());
        order.setAmount(new BigDecimal(100));
        orderMapper.insert(order);

    }

    /**
     * 垂直分片：查询数据测试
     */
    @Test
    public void testSelectFromOrderAndUser(){
        User user = userMapper.selectById(1L); //ds1
        Order order = orderMapper.selectById(1L); //ds2
    }
}
