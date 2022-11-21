package org.ericxu.shardingjdbcdemo;

import org.ericxu.shardingjdbcdemo.entity.User;
import org.ericxu.shardingjdbcdemo.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@SpringBootTest
public class ReadWriteTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void testInsert() {
        User user = new User();
        user.setUname("张三丰");
        userMapper.insert(user);
    }

    /*
    事务内，读请求路由到 primary，事务外，采用轮询策略路由到 replica。
     */
    @Transactional//开启事务
    @Test
    public void testTrans(){

        User user = new User();
        user.setUname("铁锤");
        userMapper.insert(user);

        List<User> users = userMapper.selectList(null);
    }

    /**
     * 读数据测试
     */
    @Test
    public void testSelectAll(){
        List<User> users = userMapper.selectList(null);
        users = userMapper.selectList(null);//执行第二次测试负载均衡
        users.forEach(System.out::println);
    }
}
