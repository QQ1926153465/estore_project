package com.briup.estore.utils;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * @Auther: vanse(lc))
 * @Date: 2022/6/11-06-11-16:44
 * @Description：MD5加密算法
 */
public class MD5Util {
    public static String encode(String str){
        try {
            // 构建MD5实例
            /*
			    <li>{@code MD5}<>
			 * <li>{@code SHA-1}<>
			 * <li>{@code SHA-256}<>
			 */
            MessageDigest md = MessageDigest.getInstance("MD5");
            // 产生加密字节数组
            byte[] digest = md.digest(str.getBytes("UTF-8"));
            // 将BigInteger的符号大小表示形式转换为BigInteger。
            return new BigInteger(1,digest).toString(16).toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        // 5FA4D6FC78072F42E0B9817D310BCD35
        System.out.println(encode("briup"));
    }
}
