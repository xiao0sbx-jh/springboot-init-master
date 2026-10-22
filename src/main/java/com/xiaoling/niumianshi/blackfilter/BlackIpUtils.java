package com.xiaoling.niumianshi.blackfilter;

import cn.hutool.bloomfilter.BitMapBloomFilter;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import lombok.extern.slf4j.Slf4j;
import org.yaml.snakeyaml.Yaml;

import java.util.List;
import java.util.Map;

@Slf4j
public class BlackIpUtils {

    private static BitMapBloomFilter bloomFilter = new BitMapBloomFilter(100);

    //判断ip是否在黑名单
    public static boolean isBlackIp(String ip) {
        return bloomFilter.contains(ip);
    }

    //重建黑名单
   public static void rebuildBlackIp(String configInfo) {
        if (StrUtil.isBlank(configInfo)) {
            configInfo = "{}";
        }
        //解析yaml文件
       Yaml yaml = new Yaml();
       Map map = yaml.loadAs(configInfo, Map.class);
       //获取ip黑名单
       List<String> blackIpList = (List<String>) map.get("blackIpList");
       synchronized (BlackIpUtils.class) {
           if(CollUtil.isNotEmpty(blackIpList)){
           //注意构造参数的设置
           BitMapBloomFilter bitMapBloomFilter = new BitMapBloomFilter(200);
           for(String blackIp : blackIpList){
               bitMapBloomFilter.add(blackIp);
           }
           bloomFilter = bitMapBloomFilter;
       }else {
           bloomFilter = new BitMapBloomFilter(100);
            }
       }
   }
}
