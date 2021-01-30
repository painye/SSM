<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/1/30
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.min.js" type="text/javascript"/>
    <script type="text/javascript">
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
</head>
<body>
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

</body>
</html>
