package web;

import util.EmptyUtil;
import util.Page;
import util.PrintUtil;
import util.StaticMessage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * 何邦柱
 * 所有前端请求这个页面 通过标识符反射找到子类 并且执行子类方法
 */
public abstract class AbsServlet extends HttpServlet {
    /**
     * 定义一个抽象的方法 反射类
     */
    public abstract Class getRequestClass();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取标识符
        String opr=req.getParameter("opr");
        //定义一个反射的方法类型
        Method method=null;
        //获取方法的返回结果
        Object o=null;
        try{
            if (EmptyUtil.isEmpty(opr)){//说明标识是空的 需要转发到index
                o=toIndexPage(req,resp);
            }else {//说明有值
                /**
                 * 可能不理解 解释如下
                 * opr是前端发送过来的 opr里面的值 就是这个类的子类的方法名称
                 * 所以前端发过来的opr是什么值 这个类的子类的名称也必须是opr的值
                 * 并且参数也必须有HttpServletRequest 和 HttpServletResponse
                 */
                //获取方法 通过标识符找寻
                method=getRequestClass().getDeclaredMethod(opr,HttpServletRequest.class,HttpServletResponse.class);
                //执行此方法 第一个参数是执行的哪个对象  第二个 第三个是方法的参数
                o=method.invoke(this,req,resp);
            }
            //调用方法实现相应前端
            toFrontEnd(req,resp,o);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void toFrontEnd(HttpServletRequest request,HttpServletResponse response,Object o) throws ServletException, IOException, NoSuchFieldException, NoSuchMethodException {
        if (o!=null){
            if (o instanceof String){//如果传入的参数是String类型的使用拼接转发
                StringBuilder builder=new StringBuilder(o.toString());
                builder.append(".jsp");
                request.getRequestDispatcher(builder.toString()).forward(request,response);
            }else{//是对象类型的   可能是ajax请求
                PrintUtil.printData(o,response);
            }
        }
    }

    /**
     * 跳转到首页
     * @param req
     * @param resp
     * @return
     */
    public String toIndexPage(HttpServletRequest req, HttpServletResponse resp){
        return "managementCenter/index";
    }

    //处理乱码部分
    public void requestCoding(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
    }


    @SuppressWarnings("all")
    //分页通用方法
    protected Page getPage(HttpServletRequest request, HttpServletResponse response, Class clazz, StaticMessage staticMessage) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException, InstantiationException {
        //获取当前页码
        String curr=request.getParameter("curr");
        //获取页面大小
        String pageSize=request.getParameter("pageSize");
        //如果是第一次进来的
        Integer iCurr = curr == null ? 1 : Integer.parseInt(curr);
        Integer iPageSize = pageSize == null ? staticMessage.getCode() : Integer.parseInt(pageSize);
        Page page=new Page();
        page.setPageSize(iPageSize);
        page.setCurrentPageNumber(iCurr);
        Object o=clazz.newInstance();
        //通过类名称找到找到分页方法   记住这里访问的service里面的分页方法  方法名必须是getPage
        Method getPage = o.getClass().getMethod("getPage",Page.class);
        //执行方法
        getPage.invoke(o,page);
        return page;
    }
}
