<%--
  Created by IntelliJ IDEA.
  User: lidonghui
  Date: 2020/8/23
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--通过taglib标签引入标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL的应用</title>
    <%--
            JSTL的应用步骤：
            1.下载JSTL所需要的jar包  jstl.jar    standard.jar
            2.导入jar包：在项目的web目录下的WEB-INF中新建lib目录，把jar包拷贝进去
            3.选择“File”，再选择“Project-Structure”
            4.选择“Modules”,选择右侧的“Dependencies”,将对应的lib目录加载进来
            5.在需要启用标签库的jsp页面，通过taglib标签引入标签库



    --%>
</head>
<body>
    <c:if test="${1==1}">
        hello JSTL
    </c:if>

</body>
</html>
