package com.xiaoling.niumianshi.model.dto.QuestionBank;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 创建题库请求
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 
 */
@Data
public class QuestionBatchDeleteRequest implements Serializable {

    /**
     * 题目 id列表
     */
    private List<Long> questionIdList;

    private static final long serialVersionUID = 1L;
}