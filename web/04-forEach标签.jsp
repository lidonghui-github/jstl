<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.hd.entity.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: lidonghui
  Date: 2020/8/23
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>forEach标签</title>
</head>
<body>
<%--
    forEach标签
        格式：
            <c:forEach
                items="<object>"
                begin="<int>"
                end="<int>"
                step="<int>"
                var="<string>"
                varStatus="<string>"
                >
            </c:forEach>
        属性：
          begin="开始数"
          end="结束数"
          step="间隔数"
          var="限域变量名",用来接收的成员
          items="要循环的数据，比如list  map set 等"



        两个用法：
        1.迭代主体内容多次
             <c:forEach   begin="开始数"  end="结束数" step="间隔数" var="限域变量名" >
            </c:forEach>

            相当于java中的 for .... int
            for(int i=0;i<10;i++){
            }

        2.循环
            <c:forEach items="要被循环的数据" var="限域变量名">

            </c:forEach>

            相当于java中的 foreach
            for(String str : list){
            }

--%>


<%--迭代主体内容多次--%>
<c:forEach begin="1" end="10" step="2" var="i">
    ${i} &nbsp;
</c:forEach>
<hr>
<%--循环--%>

<%
    List list = new ArrayList();
    for (int i = 0; i < 10; i++) {
        list.add(i + "");
    }
    request.setAttribute("list", list);
%>
<c:forEach items="${list}" var="item">
    ${item} &nbsp;
</c:forEach>
<hr>
<table align="center" border="1px" width="800" style="border-collapse: collapse;">
    <tr>
        <td>名称</td>
        <td>当前成员下标</td>
        <td>当前成员循环数</td>
        <td>是否第一个元素</td>
        <td>是否最后一个元素</td>
    </tr>
    <c:forEach items="${list}" var="item" varStatus="tmp">
        <tr>
            <td>${item}</td>
            <td>${tmp.index}</td>
            <td>${tmp.count}</td>
            <td>${tmp.first}</td>
            <td>${tmp.last}</td>
        </tr>
    </c:forEach>
</table>
<hr color="red">
<%--循环对象集合--%>
<%
    List<User> list1 = new ArrayList<>();
    list1.add(new User(1, "ldh1", "123A"));
    list1.add(new User(2, "ldh2", "123B"));
    list1.add(new User(3, "ldh3", "123C"));
    request.setAttribute("users", list1);

%>
<%--判断集合是否为空--%>
<c:if test="${!empty users}">
    <table align="center" border="1px" width="800" style="border-collapse: collapse;">
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${users}" var="item">
            <tr align="center">
                <td>${item.id}</td>
                <td>${item.uname}</td>
                <td>${item.upwd}</td>
                <td>
                    <button>修改</button>
                    <button>删除</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

    <%--循环 map--%>
    <%
        Map<String,Object> map = new HashMap<>();
        map.put("map1","111");
        map.put("map2","222");
        map.put("map3","333");
        request.setAttribute("map",map);
    %>
    <c:if test="${!empty map}">
        <c:forEach items="${map}" var="m">
            key:${m.key} &nbsp; value:${m.value} <br>
        </c:forEach>
    </c:if>
</body>
</html>
