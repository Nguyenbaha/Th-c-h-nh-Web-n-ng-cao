<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bai18.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div id="container">
       <h3> <p>User:nguyenbahai   &nbsp &nbsp  &nbsp  &nbsp   với i: 1-> 8 </p>
        <br />
        <p>pass: 123456</p> </h3>
        <form id="form1" action="DoLogin.aspx" runat="server">
            <h1>Login</h1>
            <div class="content">
                <div class="row">
                    <label for="username"></label>
                    <input type="text" id="username" name="username" placeholder="Username" autofocus/>
                </div>
                <div class="row">
                    <label for="password"></label>
                    <input type="text" id="password" name="password" placeholder="Password"/>
                </div>
                <div class="control">
                    <button id="login" type="submit" runat="server">Đăng nhập</button>
                </div>
                <div class="notification">
                    <label id="lblNotification" runat="server"></label>
                    <table id="thongbaoTime">
                        <tr>
                            <td id="text1" runat="server"></td>
                            <td id="timerLabel" runat="server"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
        <div id="info" runat="server">
            <h2>Danh sách những các user đã đăng nhập</h2>
            <div id="info_user" runat="server"></div>
        </div>
    </div>

    <script>
        document.getElementById("login").addEventListener("click", function (event) {
            document.getElementById("info").style.display = "none";
            if (!validateLogin()) {
                event.preventDefault();
            }
        });

        function validateLogin() {
            var user = document.getElementById("username");
            var pass = document.getElementById("password");

            if (user.value.length < 6) {
                alert("UserName phải từ 6 kí tự trở lên.");
                user.focus();
                return false;
            }
            else if (pass.value.length < 6) {
                alert("Pasword phải từ 6 kí tự trở lên.");
                pass.focus();
                return false;
            }

            return true;
        }

        function countDown() {
            seconds = document.getElementById("timerLabel").innerHTML;
            if (seconds > 0) {
                document.getElementById("timerLabel").innerHTML = seconds - 1;
                setTimeout("countDown()", 1000);
            }
            if (seconds == 0) {
                document.getElementById("thongbaoTime").style.visibility = "hidden";
                document.getElementById("login").style.visibility = "visible";
            }

        }
        setTimeout("countDown()", 1000);
    </script>
</body>
</html>
