<%@ Page Language="C#" AutoEventWireup="true" CodeFile="life.aspx.cs" Inherits="nature02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" href="tb.css" rel="stylesheet" />
    <title></title>
</head>
<script type="text/javascript">
    var arr = new Array;
    arr[0] = "images/g.jpg";
    arr[1] = "images/f.jpg";
    arr[2] = "images/b.jpg";
    arr[3] = "images/c.jpg";
    arr[4] = "images/d.jpg";
    var Timer = setInterval(play, 2000);
    var count = 1;
    function play() {
        if (arr.length == count)
            count = 0;
        document.getElementById("pic").src = arr[count];
        count++;
    }
    function clearTimer() {
        clearInterval(Timer);
    }
    function onMouseOver(obj) {
        clearTimer();
        var index = parseInt(obj.value);
        document.getElementById("pic").src = arr[index - 1];
        count = index;
    }
    function btnMouseOut() {
        Timer = setInterval(play, 1000);
    }
    function init() {
        var btns = document.getElementsByTagName("input");
        for (var i = 0; i < btns.length; i++) {
            btns[i].onmouseout = btnMouseOut;
        }
    }</script>


<body onload="init()">

    <form id="form1" runat="server">
            <span>绿色生活</span>
            <hr/>
    <img id="pic" src="images/g.jpg" width="800" height="550" /><br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><input type="button" value="1" id="1" onmouseover="onMouseOver(this)" /></asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><input type="button" value="2" id="2" onmouseover="onMouseOver(this)" /></asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><input type="button" value="3" id="3" onmouseover="onMouseOver(this)" /></asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><input type="button" value="4" id="4" onmouseover="onMouseOver(this)" /></asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click"><input type="button" value="5" id="5" onmouseover="onMouseOver(this)" /></asp:LinkButton>
        </form>
</body>

</html>
