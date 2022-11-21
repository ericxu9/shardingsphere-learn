package org.ericxu.shardingjdbcdemo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.ericxu.shardingjdbcdemo.entity.User;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
