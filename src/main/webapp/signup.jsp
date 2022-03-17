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
    <jsp:include page="/toc.jspf"/>
    <td valign="top" colspan="3" class="bb">
        <div class="fl" style="width: 99%;">

            <h1>Online Banking Sign Up</h1>

            <form action="doSignup" method="post" name="signup" id="signup" onsubmit="return (confirminput(signup));">
                <table>
                    <tr>
                        <td>
                            First Name:
                        </td>
                        <td>
                            <input type="text" id="new_first" name="new_first" value="" style="width: 150px;">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last Name:
                        </td>
                        <td>
                            <input type="text" id="new_last" name="new_last" style="width: 150px;">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Username:
                        </td>
                        <td>
                            <input type="text" id="new_uid" name="new_uid" style="width: 150px;">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input type="password" id="new_passw" name="new_passw" style="width: 150px;">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name="btnSubmit" value="Sign up">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <script type="text/javascript">
            function confirminput(myform) {
                if (myform.new_first.value.length && myform.new_last.value.length && myform.new_uid.value.length && myform.new_passw.value.length) {
                    return (true);
                } else if (!(myform.new_first.value.length)) {
                    myform.reset();
                    myform.new_first.focus();
                    alert ("You must enter a valid first name");
                    return (false);
                } else if (!(myform.new_last.value.length)) {
                    myform.new_last.focus();
                    alert ("You must enter a valid last name");
                    return (false);
                } else if (!(myform.new_uid.value.length)) {
                    myform.new_uid.focus();
                    alert("You must enter a valid username");
                    return (false);
                } else {
                    myform.new_passw.focus();
                    alert ("You must enter a valid password");
                    return (false);
                }
            }
        </script>
    </td>
</div>

<jsp:include page="/footer.jspf"/>