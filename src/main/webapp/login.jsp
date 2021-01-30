<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/1/30
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <script src="js/jquery-3.3.1.min.js" type="text/javascript"/>
</head>
<body>
    <div align="center">
        <p>1231232132131231231231</p>
        <form action="student/login.do" method="post">
            <table>
                <tr>
                    <td>姓名<input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>学号<input type="text" name="sno"></td>
                </tr>
                <tr>
                    <td><button id="but" value="登录"></button> </td>
                </tr>
            </table>
        </form>
    </div>
    <script type="text/javascript"></script>
    <script>
        $(function () {
            $("#but").click(function () {
                $.ajax({
                    url:"student/login.do",
                    type:"post",
                    data:{"name":$("#name").val(), "sno":$("#sno").val(), "age":null, "sex":null, "dept":null},
                    success(stu){
                        alert(stu.name+" "+stu.sno+" "+stu.sex+" "+stu.age+" "+stu.dept)
                    }
                })
            })
        })
    </script>
</body>
</html>
