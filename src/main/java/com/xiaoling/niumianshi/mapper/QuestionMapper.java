package com.xiaoling.niumianshi.mapper;

import com.xiaoling.niumianshi.model.dto.Question.QuestionEsDTO;
import com.xiaoling.niumianshi.model.entity.Question;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

/**
* @author xiaoling
* @description 针对表【question(题目)】的数据库操作Mapper
* @createDate 2026-10-09 15:07:52
* @Entity generator.domain.Question
*/
public interface QuestionMapper extends BaseMapper<Question> {

    /**
     * 查询题目列表(包括被删除的数据)
     */
    @Select("select * from question where updateTime >= #{minUndateTime}")
    List<Question> listQuestionWithDelete(Date minUndateTime);
}




