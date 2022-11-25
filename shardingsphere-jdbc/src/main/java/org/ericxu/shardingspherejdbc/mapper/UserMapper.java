package org.ericxu.shardingspherejdbc.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.ericxu.shardingspherejdbc.entity.User;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
