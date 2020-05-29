<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhanghu.aspx.cs" Inherits="zhanghu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="tb.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>个人用户</span>
            <hr/>
            <table>
                <tr>
                    <td>
                        用户名：
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        密码：
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                

                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="保存" CssClass="button1" OnClick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="取消" CssClass="button2" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <hr/>
            <asp:GridView ID="GridView1" runat="server" Width="100%" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowDeleting="GridView1_RowDeleting" >
                <Columns>
                    <asp:ButtonField CommandName="select" HeaderText="修改" Text="修改" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
