<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <frameset rows="120,*" frameborder="no" border="0">
        <frame name="top" src="top.aspx" border="0" scrolling="no"></frame>
        <frameset cols="170,*" frameborder="no" border="0">
            <frame name="left" src="left.aspx" border="0" scrolling="no"></frame>
            <frame name="main" src="center.aspx" border="0" scrolling="no"></frame>
        </frameset>
    </frameset>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
