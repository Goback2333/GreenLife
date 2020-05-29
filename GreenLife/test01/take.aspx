<%@ Page Language="C#" AutoEventWireup="true" CodeFile="take.aspx.cs" Inherits="shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>绿色出行</title>
     <link type="text/css" href="tb.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>绿色出行</span>
            <hr/>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><img src="images/3d60ab341335d01e0f004bbab35d8352.jpg" width="300px" height="300px"/></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><img src="images/133332c4123a7e4fc664d113b2f7d72c.jpg" width="300px" height="300px"/></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><img src="images/098a8cddb50d61ade066321b0362a257.png" width="300px" height="300px"/></asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><img src="images/3d4aa532291413096b42c60ee7563aac.jpg" width="300px" height="300px"/></asp:LinkButton>
        </div>
        
    </form>
</body>
</html>
