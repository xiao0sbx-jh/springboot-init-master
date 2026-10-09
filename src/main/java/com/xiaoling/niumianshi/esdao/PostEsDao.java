package com.xiaoling.niumianshi.esdao;

import com.xiaoling.niumianshi.model.dto.post.PostEsDTO;
import java.util.List;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * 帖子 ES 操作
 *
 * @author <a href="https://github.com/lixiaoling">xiaoling</a>
 * @from <a href="https://xiaoling."></a>
 */
public interface PostEsDao extends ElasticsearchRepository<PostEsDTO, Long> {

    List<PostEsDTO> findByUserId(Long userId);
}