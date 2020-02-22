<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2019/12/20
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>易买网</title>
</head>
<!--公共头部部分  2020-02-22 何邦柱-->
<link type="text/css" rel="stylesheet" href="${path}/statics/css/style.css"/>
<%--获取项目路径 整个项目都可以使用--%>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"></c:set>
<!--Begin Header Begin-->
<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
        	<c:if test="${sessionScope.euser.loginName==null}">
                <span class="fl">你好,请 <a href="${path}/LoginServlet?opr=toLogin">登录</a>&nbsp; <a href="${path}/RegisteredServlet?opr=toRegistered" style="color:#ff4e00;">免费注册</a>
                <a href="">我的收藏夹</a>
                </span>
            </c:if>
            <c:if test="${sessionScope.euser.type==0}">

                <span class="fl"><a href="${path}/LoginServlet?opr=exit">注销</a>   |  你好,${sessionScope.euser.loginName}&nbsp; <a href="${path}/RegisteredServlet?opr=toRegistered"
                                                                             style="color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;<a
                        href="#">我的订单</a>&nbsp;</span>
        </c:if>
        <c:if test="${sessionScope.euser.type==1}">
                <span class="fl">
                    你好,${sessionScope.euser.loginName}&nbsp;|
                    <a href="${path}/LoginServlet?opr=exit">注销</a>
                    <a href="${path}/adminToUserServlet?opr=toUserEnd">|后台管理</a>
                </span>
        </c:if>
    </div>
</div>
<!--End Header End-->

<script type="text/javascript" src="${path}/statics/js/common/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/jquery.bxslider_e88acd1b.js"></script>

<script type="text/javascript" src="${path}/statics/js/common/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="${path}/statics/js/common/menu.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/select.js"></script>

<script type="text/javascript" src="${path}/statics/js/common/lrscroll.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/iban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/fban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/f_ban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/mban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/bban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/hban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/tban.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/lrscroll_1.js"></script>

<link rel="stylesheet" type="text/css" href="${path}/statics/css/ShopShow.css" />
<link rel="stylesheet" type="text/css" href="${path}/statics/css/MagicZoom.css" />
<script type="text/javascript" src="${path}/statics/js/common/MagicZoom.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/p_tab.js"></script>
<script type="text/javascript" src="${path}/statics/js/common/shade.js"></script>




