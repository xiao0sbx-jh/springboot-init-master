package com.xiaoling.niumianshi.esdao;

import com.xiaoling.niumianshi.model.dto.Question.QuestionEsDTO;
import com.xiaoling.niumianshi.model.dto.post.PostEsDTO;
import java.util.List;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * 帖子 ES 操作
 *
 * @author <a href="https://github.com/xiao0sbx-jh
">xiaoling</a>
 *
 */
public interface QuestionEsDao extends ElasticsearchRepository<QuestionEsDTO, Long> {

    List<PostEsDTO> findByUserId(Long userId);
}