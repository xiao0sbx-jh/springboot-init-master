package com.xiaoling.niumianshi.model.dto.QuestionBankQuestion;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 移除题库题目关联请求
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 * @from <a href="https://www.code-nav.cn">学习圈</a>
 */
@Data
public class QuestionBankQuestionRemoveRequest implements Serializable {

    /**
     * 题库 id
     */
    private Long questionBankId;

    /**
     * 题目 id
     */
    private Long questionId;


    private static final long serialVersionUID = 1L;
}