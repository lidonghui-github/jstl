<%--
  Created by IntelliJ IDEA.
  User: lidonghui
  Date: 2020/8/23
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>choose，when和otherwise标签</title>
</head>
<body>
    <%--
        choose，when和otherwise标签
            格式：
                <c:choose>
                    <c:when test="<boolean>">
                        ...
                    </c:when>
                     <c:when test="<boolean>">
                        ...
                    </c:when>
                     <c:when test="<boolean>">
                         ...
                    </c:when>
                    ....

                    <c:otherwise>
                        ...
                    </c:othrtwise>
                </c:choose>
             属性：
                1.choose标签没有属性
                2.when标签只有一个 test 属性，是必须属性
                3.otherwise 标签没有属性
             特点：
                1.choose标签和otherwise 标签没有属性，when标签只有一个 test 属性，是必须属性
                2.choose标签中必须包含至少一个when标签，可以没有otherwise标签
                3.otherwise标签必须设置在最后一个when标签之后
                4.choose标签中只能设置when标签与otherwise标签
                5.when标签与otherwise标签，可以嵌套其他标签
                6.otherwise标签会在所有的when标签都不执行时才会执行
    --%>


    <%
        request.setAttribute("score",90);
    %>
    <c:choose>
        <c:when test="${score<60}">
            <h2>渣渣</h2>
        </c:when>
        <c:when test="${score == 60}">
            <h2>及格</h2>
        </c:when>
        <c:when test="${score>60 && score<80}">
            <h2>良好</h2>
        </c:when>
        <c:otherwise>
            <h2>优秀</h2>
            <c:if test="${1==1}">
                true
            </c:if>
        </c:otherwise>
    </c:choose>

</body>
</html>
