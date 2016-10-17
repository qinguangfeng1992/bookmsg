<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/28
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
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
    <script type="text/javascript">

        function chkform() {
            if (document.getElementById("bookname").value == "") {
                alert("不能为空！");
            }
            if (document.getElementById("bookauthor").value == "") {
                alert("不能为空！");
            }
            if (document.getElementById("bookprice").value == "") {
                alert("不能为空！");
            }
            if (document.getElementById("bookpublish").value == "") {
                alert("不能为空！");
            }
            if (document.getElementById("booknum").value == "") {
                alert("不能为空！");
            }

        }
    </script>
    <script>

        $(function () {
            $("#btn").click(function () {
                $.post("doeditbook", {
                    "bookid": $("#bookid").val(),
                    "bookname": $("#bookname").val(),
                    "booktype": $("#booktype").val(),
                    "bookauthor": $("#bookauthor").val(),
                    "bookprice": $("#bookprice").val(),
                    "bookpublish": $("#bookpublish").val(),
                    "booknum": $("#booknum").val()
                }, function (data) {
                    $("#msg").fadeIn(1000);
                    if (data == 1) {
                        $("#msg").removeClass("alert-danger").addClass("alert alert-success")
                        $("#msg").html("成功！")
                        $("#msg").fadeOut(3000);
                    } else {

                        $("#msg").html("失败！")
                        $("#msg").removeClass("alert-success").addClass("alert alert-danger")
                    }
                    $("#msg").fadeOut(3000);

                });
            });
        });


    </script>

</head>
<body>
<table style="width: 60%;" align="center" class="table table-bordered">
    <tr>
        <td align="center"><h2>编辑图书</h2></td>

    </tr>

    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书类型</div>
                    <input type="hidden" id="bookid" name="bookid" value="${topic.bookid}">
                    <%-- <input class="form-control" type="text" name="booktype" id="booktype" placeholder="图书名称" value="${topic.booktype}">--%>
                    <select class="form-control" name="booktype" id="booktype">
                        <c:forEach items="${glist}" var="g">
                            <option value="${g.booktype}"> ${g.booktype}</option>
                        </c:forEach>

                    </select>

                </div>
            </div>
        </td>
    </tr>


    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书名字</div>
                    <input class="form-control" type="text" name="bookname" id="bookname" placeholder="图书名字"
                           value="${topic.bookname}">

                </div>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书作者</div>

                    <input class="form-control" type="text" name="bookauthor" id="bookauthor" onmouseout="chkform()"
                           placeholder="图书作者"
                           value="${topic.bookauthor}">


                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书价格</div>

                    <input class="form-control" type="text" name="bookprice" id="bookprice" placeholder="图书价格"
                           value="${topic.bookprice}">


                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书出版社</div>

                    <input class="form-control" type="text" name="bookpublish" id="bookpublish" placeholder="图书出版社"
                           value="${topic.bookpublish}">


                </div>
            </div>
        </td>
    </tr>

    <tr>
        <td>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">图书数量</div>

                    <input class="form-control" type="text" name="booknum" id="booknum" placeholder="图书数量"
                           value="${topic.booknum}">

                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td align="right">
            <button type="button" id="btn" class="btn btn-success" <%--onclick="chkform()"--%>>保存</button>
            <a href="bookindex" type="button" id="btn2" class="btn btn-success">返回</a>
        </td>

    </tr>

</table>
<div id="msg" style="width: 60%;margin: 0 auto"></div>


</body>
</html>
