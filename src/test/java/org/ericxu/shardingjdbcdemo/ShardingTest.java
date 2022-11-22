package org.ericxu.shardingjdbcdemo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.ericxu.shardingjdbcdemo.entity.Order;
import org.ericxu.shardingjdbcdemo.entity.User;
import org.ericxu.shardingjdbcdemo.mapper.OrderMapper;
import org.ericxu.shardingjdbcdemo.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.List;

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

    // 关联查询 todo

    /**
     * 水平分片：插入数据测试
     */
    @Test
    public void testInsertOrder(){

        Order order = new Order();
        order.setOrderNo("xumiao111343253454");
        order.setUserId(1L);
        order.setAmount(new BigDecimal(100));
        orderMapper.insert(order);
    }

    /**
     * 水平分片：分库插入数据测试
     */
    @Test
    public void testInsertOrderDatabaseStrategy(){

        for (long i = 0; i < 4; i++) {
            Order order = new Order();
            order.setOrderNo("xumiao46346");
            order.setUserId(i + 1);
            order.setAmount(new BigDecimal(100));
            orderMapper.insert(order);
        }

    }

    /**
     * 水平分片：分表插入数据测试
     */
    @Test
    public void testInsertOrderTableStrategy(){

        for (long i = 1; i < 5; i++) {

            Order order = new Order();
            order.setOrderNo("JAVA111" + i);
            order.setUserId(1L);
            order.setAmount(new BigDecimal(100));
            orderMapper.insert(order);
        }

        for (long i = 5; i < 9; i++) {

            Order order = new Order();
            order.setOrderNo("JAVA222" + i);
            order.setUserId(2L);
            order.setAmount(new BigDecimal(100));
            orderMapper.insert(order);
        }
    }

    /**
     * 测试哈希取模
     */
    @Test
    public void testHash(){

        //注意hash取模的结果是整个字符串hash后再取模，和数值后缀是奇数还是偶数无关
        System.out.println("JAVA111".hashCode() % 2);
        System.out.println("JAVA222".hashCode() % 2);
    }

    /**
     * 水平分片：查询所有记录
     * 查询了两个数据源，每个数据源中使用UNION ALL连接两个表
     * Actual SQL: order0 ::: SELECT  id,order_no,user_id,amount  FROM t_order0 UNION ALL SELECT  id,order_no,user_id,amount  FROM t_order1
     * Actual SQL: order1 ::: SELECT  id,order_no,user_id,amount  FROM t_order0 UNION ALL SELECT  id,order_no,user_id,amount  FROM t_order1
     */
    @Test
    public void testShardingSelectAll(){

        List<Order> orders = orderMapper.selectList(null);
        orders.forEach(System.out::println);
    }

    /**
     * 水平分片：根据user_id查询记录
     * 查询了一个数据源，每个数据源中使用UNION ALL连接两个表
     */
    @Test
    public void testShardingSelectByUserId(){

        QueryWrapper<Order> orderQueryWrapper = new QueryWrapper<>();
        orderQueryWrapper.eq("user_id", 1L);
        List<Order> orders = orderMapper.selectList(orderQueryWrapper);
        orders.forEach(System.out::println);
    }
}
