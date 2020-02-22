<%--
  Created by IntelliJ IDEA.
  User: 何邦柱
  Date: 2020/2/6
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--引入类库--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>易买网-登录</title>
</head>
<%
    //获取opr的值  opr为标识符
    String opr=request.getParameter("opr");
    if (opr!=null){
        response.sendRedirect(request.getContextPath()+"/managementCenter/login.jsp");
    }
%>
<%--引入公共头部--%>
<%@include file="${path}/common/pre/header.jsp"%>
<%--引入login的js--%>
<script type="text/javascript" src="${path}/statics/js/easy_my_js/login.js"></script>
<body>

<div class="log_bg">
    <div class="top">
        <div class="logo"><a href=""><img src="${path}/statics/images/logo.png" /></a></div>
    </div>
    <div class="login">
        <div class="log_img"><img src="${path}/statics/images/l_img.png" width="611" height="425" /></div>
        <div class="log_c">
            <form>
                <table border="0" style="width:370px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
                    <tr height="50" valign="top">
                        <td width="55">&nbsp;</td>
                        <td>
                            <span class="fl" style="font-size:24px;">登录</span>
                            <span class="fr">还没有商城账号，<a href="${path}/RegisteredServlet?opr=toRegistered" style="color:#ff4e00;">立即注册</a></span>
                        </td>
                    </tr>
                    <tr height="70">
                        <td>用户名</td>
                        <td><input type="text" name="loginName" id="loginName" value="" class="l_user" /></td>
                    </tr>
                    <tr height="70">
                        <td>密&nbsp; &nbsp; 码</td>
                        <td><input type="password" name="password" id="password" value="" class="l_pwd" /></td>
                    </tr>
                    <tr height="60">
                        <td>&nbsp;</td>
                        <td><input type="button" value="登录" class="log_btn" id="button"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="${path}/statics/images/b_1.gif" width="98" height="33" /><img src="${path}/statics/images/b_2.gif" width="98" height="33" /><img src="${ctx}/statics/images/b_3.gif" width="98" height="33" /><img src="${ctx}/statics/images/b_4.gif" width="98" height="33" /><img src="${ctx}/statics/images/b_5.gif" width="98" height="33" /><img src="${ctx}/statics/images/b_6.gif" width="98" height="33" />
    </div>
</div>

</body>
</html>
