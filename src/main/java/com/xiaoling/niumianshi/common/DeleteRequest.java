package com.xiaoling.niumianshi.common;

import java.io.Serializable;
import lombok.Data;

/**
 * 删除请求
 *
 * @author <a href="https://github.com/lixiaoling">xiaoling</a>
 * @from <a href="https://xiaoling."></a>
 */
@Data
public class DeleteRequest implements Serializable {

    /**
     * id
     */
    private Long id;

    private static final long serialVersionUID = 1L;
}