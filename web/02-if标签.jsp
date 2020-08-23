<%--
  Created by IntelliJ IDEA.
  User: lidonghui
  Date: 2020/8/23
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>if标签</title>
</head>
<body>
    <%--
        if标签
            格式：
                <c:if test="<boolean>" var="<string>" scope="<string>">
                  ......
                </c:if>
            常用属性：
                test:条件判断，操作的是域对象，接收返回结果是boolean类型的值   (必要属性)
                var:限域变量名（存放在作用域中的变量名），用来接收判断结果的值   （可选属性）
                scope：限域变量名的范围  page | request | session | application   （可选属性）

            注：
              1.标签一般操作的是域对象
              2.if标签没有else，如果想要else的效果，就需要设置两个完全相反的条件判断

    --%>

    <%
        //设置数据
        request.setAttribute("num",0);
    %>
    <c:if test="${num>0}">
        数值大于0
    </c:if>
    <br>
    <c:if test="${num<=0}">
        数值不大于0
    </c:if>
    <c:if test="${num>100}" var="flag" scope="request"></c:if>
    ${flag}---${sessionScope.flag}---${requestScope.flag}---${applicationScope.flag}

</body>
</html>
