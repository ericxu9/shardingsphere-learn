package org.ericxu.shardingsphereproxy.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.ericxu.shardingsphereproxy.entity.User;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
