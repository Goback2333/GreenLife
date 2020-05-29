<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" href="tb.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <span>商城系统</span>
            <hr/>
            <asp:GridView ID="GridView1" runat="server" Width="100%" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                <Columns>
                    <asp:ButtonField CommandName="select" HeaderText="兑换" Text="兑换" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
