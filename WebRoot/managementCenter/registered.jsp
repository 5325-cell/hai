<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/2/6
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>易买网-注册</title>
</head>
<body>
<%
    //获取opr的值
    String opr=request.getParameter("opr");
    if (opr!=null){
        response.sendRedirect(request.getContextPath()+"/managementCenter/registered.jsp");
    }
%>
<%--引入头部--%>
<%@include file="${path}/common/pre/header.jsp"%>
<%--引入js--%>
<script type="text/javascript" src="../statics/js/easy_my_js/registered.js"></script>

<!--Begin Login Begin-->
<div class="log_bg">
    <div class="top">
        <div class="logo"><a href=""><img src="${path}/statics/images/logo.png"/></a></div>
    </div>
    <div class="regist">
        <div class="log_img"><img src="${path}/statics/images/l_img.png" width="611" height="425"/></div>
        <div class="reg_c">
            <form id="register">
                <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
                    <tr height="50" valign="top">
                        <td width="95">&nbsp;</td>
                        <td>
                            <span class="fl" style="font-size:24px;">注册</span>
                            <%--//跳转到servlet分配页面--%>
                            <span class="fr">已有商城账号，<a href="${path}/LoginServlet?opr=toLogin" style="color:#ff4e00;">我要登录</a></span>
                        </td>
                    </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>登录用户名 &nbsp;</td>
                        <td><input type="text" value="" name="loginName" class="l_user" id="l_user"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                        <td><input type="password" value="" name="password" class="l_pwd" id="l_pwd"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                        <td><input type="password" value="" name="confirmPassword" class="l_pwd" id="newL_pwd"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;真实姓名 &nbsp;</td>
                        <td><input type="text" value="" name="userName" class="l_user" id="l_username"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;性别 &nbsp;</td>
                        <td>
                            <input type="radio" name="sex" value="1" checked="checked">&nbsp;男&nbsp;&nbsp;
                            <input type="radio" name="sex" value="0">&nbsp;女
                        </td>
                    </tr>

                    <tr height="50">
                        <td align="right">&nbsp;身份证号 &nbsp;</td>
                        <td><input type="text" value="" name="identityCode" class="l_user" id="identityCode"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right">&nbsp;邮箱 &nbsp;</td>
                        <td><input type="text" value="" name="email" class="l_email" id="email"/></td>
                    </tr>
                    <tr height="50">
                        <td align="right">&nbsp;手机 &nbsp;</td>
                        <td><input type="text" value="" name="mobile" class="l_tel" id="mobile"/></td>
                    </tr>
                    <tr height="60">
                        <td>&nbsp;</td>
                        <td><input type="button" value="立即注册" class="log_btn" id="registered" onclick="reUser();"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End-->
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical
        Support: Dgg Group <br/>
        <img src="${path}/statics/images/b_1.gif" width="98" height="33"/><img src="${path}/statics/images/b_2.gif"  width="98" height="33"/><img
            src="${path}/statics/images/b_3.gif" width="98" height="33"/><img src="${path}/statics/images/b_4.gif"   width="98" height="33"/><img
            src="${path}/statics/images/b_5.gif" width="98" height="33"/><img src="${path}/statics/images/b_6.gif"   width="98" height="33"/>
    </div>
</div>
<!--End Footer End -->
</body>
</html>
