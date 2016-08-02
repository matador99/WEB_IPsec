<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="WebApplication1.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 450px;
            width: 350px;
            background-color: gainsboro;
        }
        #UKR, #USA, #RUS, #EUR{
            Height:40px;
            Width:125px;
            position: relative;
            top: 250px;
            left: 50px;
            background-color: lightslategrey;
        }
    </style>
</head>
<body style="height: 450px; width: 350px">
    <form id="form1" runat="server">
        <asp:TextBox ID="Login" runat="server"></asp:TextBox>
        <p>
        <asp:Button ID="UKR" runat="server" OnClick="Button1_Click" Text="Ukraine" />
        <asp:Button ID="RUS" runat="server" OnClick="Button1_Click" Text="Russia" />
        <asp:Button ID="USA" runat="server" OnClick="Button1_Click" Text="USA" />
        <asp:Button ID="EUR" runat="server" OnClick="Button1_Click" Text="EUR" />
        </p>
    </form>
</body>
</html>
