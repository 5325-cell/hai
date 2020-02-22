package util;

/**
 * 消息提示类
 */
public class StaticMessage {
    /**
     * 状态码
     */
    private Integer code;
    /**
     * 消息提示
     */
    private String message;
    private StaticMessage(){}



    private StaticMessage(Integer code,String message){
        this.code=code;
        this.message=message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * 登录模块
     */
    public static final StaticMessage LANDED_SUCCESSFULLY=new StaticMessage(1,"登录成功");
    public static final StaticMessage WRONG_PASSWORD=new StaticMessage(2,"密码错误");
    public static final StaticMessage USER_DOES_NOT_EXIST=new StaticMessage(3,"用户不存在");

    /**
     * 注册模块
     */
    public static final StaticMessage REGISTRATION_SUCCESS=new StaticMessage(1,"注册成功");
    public static final StaticMessage REGISTRATION_FAILED=new StaticMessage(2,"登录名已存在,注册失败");
}
