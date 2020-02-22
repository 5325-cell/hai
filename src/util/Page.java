package util;
/**
 * 分页工具类
 */

import java.util.List;

public class Page {
    /**
     * 总记录行
     */
    private Integer totalRecordLine;
    /**
     * 总页码
     */
    private Integer totalPageNumber;
    /**
     * 当前页码
     */
    private Integer currentPageNumber;
    /**
     * 页面大小
     */
    private Integer pageSize;
    /**
     * 每页集合
     */
    private List list;

    public Integer getTotalRecordLine() {
        return totalRecordLine;
    }

    public void setTotalRecordLine(Integer totalRecordLine) {
        if (totalRecordLine>0){//如果总记录行大于0 可以计算
            this.totalRecordLine = totalRecordLine;
        }
        this.totalPageNumber=totalRecordLine%this.pageSize==0?totalRecordLine/this.pageSize:
                (totalRecordLine/this.pageSize)+1;
    }

    public Integer getTotalPageNumber() {
        return totalPageNumber;
    }

    public void setTotalPageNumber(Integer totalPageNumber) {

        this.totalPageNumber = totalPageNumber;
    }

    public Integer getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(Integer currentPageNumber) {
        this.currentPageNumber = currentPageNumber;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
