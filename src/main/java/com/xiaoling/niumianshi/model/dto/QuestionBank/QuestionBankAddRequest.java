package com.xiaoling.niumianshi.model.dto.QuestionBank;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 创建题库请求
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 * @from <a href="https://www.code-nav.cn">学习圈</a>
 */
@Data
public class QuestionBankAddRequest implements Serializable {

    /**
     * 标题
     */
    private String title;

    /**
     * 内容
     */
    private String content;

    /**
     * 图片
     */
    private String picture;

    private static final long serialVersionUID = 1L;
}