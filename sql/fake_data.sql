-- 先清空旧测试数据（可选，注释掉如果不想删）
-- TRUNCATE TABLE question_bank_question;
-- TRUNCATE TABLE question;
-- TRUNCATE TABLE question_bank;
-- TRUNCATE TABLE user;

-- ====================== 1、插入用户 20条 ======================
INSERT INTO `user` (userAccount, userPassword, unionId, mpOpenId, userName, userAvatar, userProfile, userRole, editTime, createTime, updateTime, isDelete)
VALUES
    ('admin', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_001', 'open_001', '系统管理员', 'https://pic.example.com/avatar/admin.jpg', '平台管理员账号', 'admin', NOW(), NOW(), NOW(), 0),
    ('user01', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_002', 'open_002', '小明', 'https://pic.example.com/avatar/u1.jpg', '热爱刷题', 'user', NOW(), NOW(), NOW(), 0),
    ('user02', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_003', 'open_003', '小红', 'https://pic.example.com/avatar/u2.jpg', 'Java后端学习者', 'user', NOW(), NOW(), NOW(), 0),
    ('user03', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_004', 'open_004', '小李', 'https://pic.example.com/avatar/u3.jpg', '算法爱好者', 'user', NOW(), NOW(), NOW(), 0),
    ('user04', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_005', 'open_005', '小张', 'https://pic.example.com/avatar/u4.jpg', '面试刷题选手', 'user', NOW(), NOW(), NOW(), 0),
    ('user05', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_006', 'open_006', '小王', 'https://pic.example.com/avatar/u5.jpg', '正在准备校招', 'user', NOW(), NOW(), NOW(), 0),
    ('user06', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_007', 'open_007', '小陈', 'https://pic.example.com/avatar/u6.jpg', '后端开发', 'user', NOW(), NOW(), NOW(), 0),
    ('user07', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_008', 'open_008', '小周', 'https://pic.example.com/avatar/u7.jpg', '计算机专业学生', 'user', NOW(), NOW(), NOW(), 0),
    ('user08', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_009', 'open_009', '小吴', 'https://pic.example.com/avatar/u8.jpg', '喜欢数据库', 'user', NOW(), NOW(), NOW(), 0),
    ('user09', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_010', 'open_010', '小郑', 'https://pic.example.com/avatar/u9.jpg', '微服务学习者', 'user', NOW(), NOW(), NOW(), 0),
    ('user10', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_011', 'open_011', '小冯', 'https://pic.example.com/avatar/u10.jpg', '面试达人', 'user', NOW(), NOW(), NOW(), 0),
    ('user11', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_012', 'open_012', '小何', 'https://pic.example.com/avatar/u11.jpg', '应届生', 'user', NOW(), NOW(), NOW(), 0),
    ('user12', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_013', 'open_013', '小吕', 'https://pic.example.com/avatar/u12.jpg', '自学编程', 'user', NOW(), NOW(), NOW(), 0),
    ('user13', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_014', 'open_014', '小施', 'https://pic.example.com/avatar/u13.jpg', 'Redis爱好者', 'user', NOW(), NOW(), NOW(), 0),
    ('user14', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_015', 'open_015', '小钟', 'https://pic.example.com/avatar/u14.jpg', 'Java基础刷题', 'user', NOW(), NOW(), NOW(), 0),
    ('user15', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_016', 'open_016', '小姜', 'https://pic.example.com/avatar/u15.jpg', '正在学微服务', 'user', NOW(), NOW(), NOW(), 0),
    ('user16', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_017', 'open_017', '小苏', 'https://pic.example.com/avatar/u16.jpg', '数据库调优', 'user', NOW(), NOW(), NOW(), 0),
    ('user17', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_018', 'open_018', '小潘', 'https://pic.example.com/avatar/u17.jpg', '计算机考研', 'user', NOW(), NOW(), NOW(), 0),
    ('user18', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_019', 'open_019', '小田', 'https://pic.example.com/avatar/u18.jpg', '学习SpringBoot', 'user', NOW(), NOW(), NOW(), 0),
    ('user19', '$2a$10$GRLdNijSQMUvl/au9ofL.eDwmoohzzS7.rmNSJZ.0FxO/BTk76klW', 'union_020', 'open_020', '小董', 'https://pic.example.com/avatar/u19.jpg', '面试准备中', 'user', NOW(), NOW(), NOW(), 0);

-- ====================== 2、插入题库 20条 ======================
INSERT INTO question_bank (title, description, picture, userId, editTime, createTime, updateTime, isDelete)
VALUES
    ('Java基础题库','Java基础入门面试题，适合校招','https://pic.example.com/bank/java.jpg',1,NOW(),NOW(),NOW(),0),
    ('MySQL数据库题库','数据库SQL、索引、事务面试题','https://pic.example.com/bank/mysql.jpg',2,NOW(),NOW(),NOW(),0),
    ('Redis缓存题库','Redis基础、持久化、分布式锁','https://pic.example.com/bank/redis.jpg',3,NOW(),NOW(),NOW(),0),
    ('计算机网络题库','HTTP、TCP、IP网络面试题','https://pic.example.com/bank/net.jpg',4,NOW(),NOW(),NOW(),0),
    ('操作系统题库','进程线程、内存、IO','https://pic.example.com/bank/os.jpg',5,NOW(),NOW(),NOW(),0),
    ('SpringBoot题库','SpringBoot核心原理','https://pic.example.com/bank/sb.jpg',6,NOW(),NOW(),NOW(),0),
    ('SpringCloud微服务题库','Nacos、Sentinel、Feign','https://pic.example.com/bank/cloud.jpg',7,NOW(),NOW(),NOW(),0),
    ('算法入门题库','简单数组、链表、哈希算法题','https://pic.example.com/bank/alg1.jpg',8,NOW(),NOW(),NOW(),0),
    ('LeetCode中等题库','中等难度算法刷题','https://pic.example.com/bank/alg2.jpg',9,NOW(),NOW(),NOW(),0),
    ('JVM虚拟机题库','类加载、GC、内存模型','https://pic.example.com/bank/jvm.jpg',10,NOW(),NOW(),NOW(),0),
    ('Mysql优化题库','SQL慢查询、索引优化','https://pic.example.com/bank/mysql_opt.jpg',11,NOW(),NOW(),NOW(),0),
    ('分布式理论题库','CAP、BASE、分布式事务','https://pic.example.com/bank/dist.jpg',12,NOW(),NOW(),NOW(),0),
    ('Linux命令题库','服务器常用Linux操作','https://pic.example.com/bank/linux.jpg',13,NOW(),NOW(),NOW(),0),
    ('Git版本控制题库','Git基础命令与协作','https://pic.example.com/bank/git.jpg',14,NOW(),NOW(),NOW(),0),
    ('多线程并发题库','Java并发AQS、锁、线程池','https://pic.example.com/bank/thread.jpg',15,NOW(),NOW(),NOW(),0),
    ('项目面试真题','后端项目场景面试问答','https://pic.example.com/bank/project.jpg',16,NOW(),NOW(),NOW(),0),
    ('计算机组成原理','计组基础题目','https://pic.example.com/bank/computer.jpg',17,NOW(),NOW(),NOW(),0),
    ('设计模式题库','23种设计模式基础题','https://pic.example.com/bank/design.jpg',18,NOW(),NOW(),NOW(),0),
    ('消息队列MQ题库','RocketMQ/Kafka基础','https://pic.example.com/bank/mq.jpg',19,NOW(),NOW(),NOW(),0),
    ('校招综合冲刺题库','综合全套面试题合集','https://pic.example.com/bank/all.jpg',1,NOW(),NOW(),NOW(),0);

-- ====================== 3、存储过程：批量插入 900道题目 question ======================
DELIMITER //
CREATE PROCEDURE insert_question_batch()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE randUserId BIGINT;
    DECLARE tagJson VARCHAR(1024);
    WHILE i <= 900 DO
            -- 随机用户id [1~20]
            SET randUserId = FLOOR(RAND() * 20 + 1);
            -- 随机标签
            SET tagJson = CASE FLOOR(RAND() * 8)
                              WHEN 0 THEN '["Java","基础"]'
                              WHEN 1 THEN '["MySQL","索引"]'
                              WHEN 2 THEN '["Redis","缓存"]'
                              WHEN 3 THEN '["计算机网络","TCP"]'
                              WHEN 4 THEN '["JVM","GC"]'
                              WHEN 5 THEN '["算法","数组"]'
                              WHEN 6 THEN '["SpringBoot","注解"]'
                              ELSE '["多线程","并发"]'
                END;
            INSERT INTO question (title, content, tags, answer, userId, editTime, createTime, updateTime, isDelete)
            VALUES (
                       CONCAT('面试题_',i),
                       CONCAT('这是第',i,'道测试题目，请简述相关知识点。'),
                       tagJson,
                       CONCAT('第',i,'题参考答案：知识点解析示例'),
                       randUserId,
                       NOW(),
                       NOW(),
                       NOW(),
                       0
                   );
            SET i = i + 1;
        END WHILE;
END //
DELIMITER ;

-- 调用存储过程生成900题
CALL insert_question_batch();
-- 删除存储过程（用完清理）
DROP PROCEDURE IF EXISTS insert_question_batch;

-- ====================== 4、存储过程：生成题库题目关联 question_bank_question ======================
-- 规则：20个题库，每个题库绑定50道题目，20*50=1000条关联记录（正好目标1000条）
DROP PROCEDURE IF EXISTS insert_qb_q_relation;
DELIMITER //
CREATE PROCEDURE insert_qb_q_relation()
BEGIN
    DECLARE bankId INT DEFAULT 1;
    DECLARE qStart INT DEFAULT 1;
    DECLARE qIdx INT;
    -- 遍历20个题库
    WHILE bankId <= 20 DO
            SET qIdx = qStart;
            -- 每个题库插入50道题目关联
            WHILE qIdx <= qStart + 49 DO
                    INSERT INTO question_bank_question (questionBankId, questionId, userId, createTime, updateTime)
                    VALUES (bankId, qIdx, FLOOR(RAND()*20+1), NOW(), NOW());
                    SET qIdx = qIdx + 1;
                END WHILE;
            SET qStart = qStart + 50;
            SET bankId = bankId + 1;
        END WHILE;
END //
DELIMITER ;

CALL insert_qb_q_relation();
DROP PROCEDURE IF EXISTS insert_qb_q_relation;

