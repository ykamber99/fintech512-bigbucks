<%--
  Created by IntelliJ IDEA.
  User: Jue Qing
  Date: 2022/3/15
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<jsp:include page="/header.jspf"/>

<div id="wrapper" style="width: 99%;">
    <from action="#" method="POST">
        <table>
            <! first line：firstname + space for first name -->
            <tr>
                <td class="td_left"><lable for="First Name">First Name</lable></td>
                <td class=""td_right><input type="text" name="firstname" id="firstname" placeholder="Please enter first name"></td>
            </tr>
            <! second line：lastname + space for last name -->
            <tr>
                <td class="td_left"><lable for="Last Name">Last Name</lable></td>
                <td class=""td_right><input type="text" name="lastname" id="lastname" placeholder="Please enter last name"></td>
            </tr>
            <! 表格第一行两个单元格：用户名+输入用户名区域 -->
            <tr>
                <td class="td_left"><lable for="username">User Name</lable></td>
                <td class=""td_right><input type="text" name="username" id="username" placeholder="Please enter username"></td>
            </tr>
            <! 表格第二行两个单元格：密码+输入密码区域 -->
            <tr>
                <td class="td_left"><lable for="password">Password</lable></td>
                <td class=""td_right><input type="password" name="password" id="password" placeholder="Please enter password"></td>
            </tr>

            <!-- 注册按钮 -->
            <tr>
                <td colspan="2" align=""center><input type="submit" id="btn_sub" value="Sign Up"></td>
            </tr>
        </table>
    </from>
</div>

<jsp:include page="/footer.jspf"/>