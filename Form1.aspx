<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form1.aspx.cs" Inherits="Form1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0">
<tr>
    <td colspan="2"><center>Send SMS!</center></td>
</tr>
<%--<tr>
    <td>
        Your Number:
    </td>
    <td>
        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
            ControlToValidate="txtNumber" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>--%>
<tr>
    <td>
        Sender's Number:
    </td>
    <td>
        <asp:TextBox ID="txtsno" TextMode="SingleLine" runat="server" Width="297px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"
            ControlToValidate="txtsno" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td>
        Recepient Number:
    </td>
    <td>
        <asp:TextBox ID="txtRecepientNumber" runat="server" Width = "300"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"
            ControlToValidate="txtRecepientNumber" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td>
        Message:
    </td>
    <td>
        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="81px" 
            Width="300px"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required"
            ControlToValidate="txtMessage" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td>
        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
    </td>
    <td>
    </td>
</tr>
<tr>
<td colspan="2">
    <asp:Label ID="lblsend" runat="server" Text=""></asp:Label></td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
