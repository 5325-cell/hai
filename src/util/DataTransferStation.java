package util;

/**
 * 发送前端的数据 中转站
 */
public class DataTransferStation {
    //状态
    private Integer status;
    //数据
    private Object data;
    //提示消息
    private String message;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * 设计一个用于存储成功的方法
     */
    public DataTransferStation correctData(Integer status,Object obj){
        this.status=status ;
        this.data=obj;
        return this;
    }

    /**
     * 设计一个操作失败的方法
     */
    public DataTransferStation operationFailed(Integer status,String message){
        this.status=status;
        this.message=message;
        return this;
    }
}
