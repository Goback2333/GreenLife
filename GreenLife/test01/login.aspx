<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


    <style>
        body {
            background: url('images/aa.png') no-repeat;
            background-size: 100% auto;
        }
        
        #login_box {
            width: 20%;
            height: 400px;
            background-color: #00000060;
            margin: auto;
            margin-top: 10%;
            text-align: center;
            border-radius: 10px;
            padding: 50px 50px;
        }
        
        #login_box input,
        #login_box button {
            outline: none;
        }
        
        #login_box h2 {
            color: #ffffff90;
            margin-top: 5%;
        }
        
        #login_box #form #input_box {
            margin-top: 5%;
        }
        
        #login_box #form #input_box input {
            border: 0;
            width: 60%;
            font-size: 15px;
            color: #ffffff;
            background: #ffffff00;
            border-bottom: 2px solid #ffffff;
            padding: 5px 10px;
            margin-top: 10px;
        }
        
        #login_box #sign_in {
            margin-top: 50px;
            width: 40%;
            height: 20px;
            border-radius: 10px;
            border: 0;
            color: #fff;
            font-size: 15px;
            background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);
            cursor: pointer;
        }
        
        #login_box #sign_up {
            margin-top: 45%;
        }
        
        #login_box #sign_up a {
            color: #b94648;
        }
    </style>
</head>
 
<body>
    <form id="form1" runat="server">
    <div id="login_box">
        <h2>登录</h2>
        <div id="form">
            <div id="input_box">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="用户名"></asp:TextBox>
            </div>
            <div id="input_box">
                <asp:TextBox type="password" ID="TextBox2" runat="server" placeholder="密码"></asp:TextBox>
            </div>
        <asp:Button ID="sign_in" runat="server" Text="登录" OnClick="sign_in_Click" />

        <br>

        </div>
    </div>
        </form>
</body>





</html>
