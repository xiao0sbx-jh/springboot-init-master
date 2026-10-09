package com.xiaoling.niumianshi.model.dto.postfavour;

import com.xiaoling.niumianshi.common.PageRequest;
import com.xiaoling.niumianshi.model.dto.post.PostQueryRequest;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 帖子收藏查询请求
 *
 * @author <a href="https://github.com/lixiaoling">xiaoling</a>
 * @from <a href="https://xiaoling."></a>
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class PostFavourQueryRequest extends PageRequest implements Serializable {

    /**
     * 帖子查询请求
     */
    private PostQueryRequest postQueryRequest;

    /**
     * 用户 id
     */
    private Long userId;

    private static final long serialVersionUID = 1L;
}