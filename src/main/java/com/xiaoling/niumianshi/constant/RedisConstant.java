package com.xiaoling.niumianshi.constant;

public interface RedisConstant {
    /**
     * 用户签到记录的前缀
     */

    String USER_SIGN_IN_REDIS_KEY_PREFIX = "user:signins";

    /**
     * 获取用户签到的Redis key
     * @param year
     * @param userId
     * @return 拼接好的redis key
     */
    static String getUserSignInRedisKey(int year,long userId) {
        return USER_SIGN_IN_REDIS_KEY_PREFIX + year + ":" + userId;
    }

}
