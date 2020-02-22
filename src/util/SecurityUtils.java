package util;
/**
 * 2020/02/22 何邦柱
 */

import org.apache.commons.codec.digest.DigestUtils;

/**
 * MD5加密解密
 */
public class SecurityUtils{
    /**
     *
     * @param value 要加密的值
     * @return 加密后的值
     */
    public static String md5Hex(String value){
        return DigestUtils.md5Hex(value);
    }

    /**
     * 三次md5操作
     * @param value
     * @return
     */
    public static String hd5Hex3(String value){
        for (int i = 0; i <3 ; i++) {
            value=DigestUtils.md5Hex(value);
        }
        return value;
    }
    /**
     * sha256加密
     * @param value
     * @return
     */
    public static String sha256Hex(String value){
        return DigestUtils.sha256Hex(value);
    }

    public static String sha512Hex(String value){
        return DigestUtils.sha512Hex(value);
    }
}
