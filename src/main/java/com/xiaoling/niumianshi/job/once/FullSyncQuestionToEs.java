package com.xiaoling.niumianshi.job.once;

import com.xiaoling.niumianshi.esdao.QuestionEsDao;
import com.xiaoling.niumianshi.model.dto.Question.QuestionEsDTO;
import com.xiaoling.niumianshi.model.dto.post.PostEsDTO;
import com.xiaoling.niumianshi.model.entity.Post;
import com.xiaoling.niumianshi.model.entity.Question;
import com.xiaoling.niumianshi.service.PostService;
import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.Resource;

import com.xiaoling.niumianshi.service.QuestionBankService;
import com.xiaoling.niumianshi.service.QuestionService;
import lombok.extern.slf4j.Slf4j;
import cn.hutool.core.collection.CollUtil;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * 全量同步题目到 es
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 * 
 */
// 取消注释开启任务
//@Component
@Slf4j
public class FullSyncQuestionToEs implements CommandLineRunner {

    @Resource
    private QuestionService questionService;

    @Resource
    private QuestionEsDao questionEsDao;

    @Override
    public void run(String... args) {
        // 全量获取题目（数据量不大的情况下使用）
        List<Question> questionList = questionService.list();
        if (CollUtil.isEmpty(questionList)) {
            return;
        }
        // 转为 ES 实体类
        List<QuestionEsDTO> questionEsDTOList = questionList.stream()
                .map(QuestionEsDTO::objToDto)
                .collect(Collectors.toList());
        // 分页批量插入到 ES
        final int pageSize = 500;
        int total = questionEsDTOList.size();
        log.info("FullSyncQuestionToEs start, total {}", total);
        for (int i = 0; i < total; i += pageSize) {
            // 注意同步的数据下标不能超过总数据量
            int end = Math.min(i + pageSize, total);
            log.info("sync from {} to {}", i, end);
            questionEsDao.saveAll(questionEsDTOList.subList(i, end));
        }
        log.info("FullSyncQuestionToEs end, total {}", total);
    }
}

