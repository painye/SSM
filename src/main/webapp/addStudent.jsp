<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/1/30
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册学生</title>
</head>
<body>
    <div align="center">
        <form action="student/addStudent.do" method="post">
            <table>
                <tr>
                    <td>姓名<input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>学号<input type="text" name="sno" oninput = "value=value.replace(/[^\d]/g,'')"  maxlength="9" required></td>
                </tr>
                <tr>
                    <td>性别<input type="radio" name="sex" value="男" checked>男</td>
                    <td><input type="radio" name="sex" value="女" ></td>
                </tr>
                <tr>
                    <td>年龄<input type="number" name="age"></td>
                </tr>
                <tr>
                    <td>专业<input type="text" name="dept"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="注册"></td>
                    <td><input type="reset" value="重置"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
