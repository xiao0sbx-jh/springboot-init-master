package com.xiaoling.niumianshi.model.dto.QuestionBank;

import com.xiaoling.niumianshi.common.PageRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.List;

/**
 * 查询题库请求
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class QuestionBankQueryRequest extends PageRequest implements Serializable {

    /**
     * id
     */
    private Long id;

    /**
     * id
     */
    private Long notId;

    /**
     * 搜索词
     */
    private String searchText;

    /**
     * 标题
     */
    private String title;

    /**
     * 内容
     */
    private String content;

    /**
     * 创建用户 id
     */
    private Long userId;

    /**
     * 图片
     */
    private String picture;

    /**
     * 描述
     */
    private String description;

    /***
     * 是否要关联查询题目列表
     */
    private boolean needQueryQuestionList;


    private static final long serialVersionUID = 1L;
}