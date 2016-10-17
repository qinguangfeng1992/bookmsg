<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/26
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <%-- <script>
         $(document).ready(function () {
             $("#quanxuan").click(function () {
                 $(".ch").attr("checked", true);
             });

         });

     </script>--%>
</head>
<body>
<h1 style="font-family: 黑体;text-align: center">图书信息！</h1>
<hr/>
<table class="table table-striped table-bordered table-hover" style="width: 80%;margin: 0 auto;font-family: 黑体">
    <tr style="background-color: gray">
        <td>编号</td>
        <td>类别</td>
        <td>名称</td>
        <td>作者</td>
        <td>价格</td>
        <td>出版社</td>
        <td>数量</td>
        <td>操作</td>

    </tr>

    <c:forEach items="${list}" var="slist">
        <tr>
            <td><input type="checkbox" class="ch" value="${slist.bookid}"></td>
            <td>${slist.booktype}</td>
            <td>${slist.bookname}</td>
            <td>${slist.bookauthor}</td>
            <td>${slist.bookprice}</td>
            <td>${slist.bookpublish}</td>
            <td>${slist.booknum}</td>

            <td>
                <a href="editbook?bookid=${slist.bookid}" type="button" class="btn btn-primary">修改</a>
            </td>
           <%-- <td>
                <a href="#" type="button" class="btn btn-primary">修改</a>
            </td>--%>

        </tr>


    </c:forEach>
  <%--  <tr>
        <td colspan="4" align="right">
            <button type="button" class="btn btn-success" id="quanxuan">全选</button>

            <a href="addtopicindex" type="button" class="btn btn-success">新增</a>
        </td>

    </tr>--%>
</table>
<%--<nav style="text-align: center">
 &lt;%&ndash;   <ul class="pagination">
        &lt;%&ndash; <c:if test="${currpage<=0}">
           <li><a href="javascript:void(0)">&laquo;</a></li>
         </c:if>

         <c:if test="${currpage>0}">
           <li><a href="topicindex?page=${currpage-1}">&laquo;</a></li>

         </c:if>
         &ndash;%&gt;
        <li><a href="topicindex?page=${currpage-1}">&laquo;</a></li>
        <c:forEach var="p" begin="0" end="${list.totalPages-1}">
            <li><a href="topicindex?page=${p}">${p+1}</a></li>
        </c:forEach>
        <li><a href="topicindex?page=${currpage+1}">&raquo;</a></li>
    </ul>&ndash;%&gt;
</nav>--%>
<%--<script>
    $(function () {
        $(".btn-danger").click(function () {
            if(confirm("您确认删除吗？")){
                var ssid = $(this).attr("title");
                $.post("deletop", {tid: ssid}, function (data) {
                    if (data == 1) {
                        alert("删除成功")
                        location.reload();
                    } else {
                        alert("删除失败")
                    }
                });
            }
        });


    });
</script>--%>
</body>
</html>
